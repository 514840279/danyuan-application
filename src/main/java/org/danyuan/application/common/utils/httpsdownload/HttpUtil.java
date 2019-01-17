package org.danyuan.application.common.utils.httpsdownload;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.danyuan.application.common.utils.string.StringUtils;

public class HttpUtil {

	public static String send(String url, Map<String, String> map, String encoding) throws ParseException, IOException {
		String body = "";

		// 创建httpclient对象
		CloseableHttpClient client = HttpClients.createDefault();
		// 创建post方式请求对象
		HttpPost httpPost = new HttpPost(url);

		// 装填参数
		List<NameValuePair> nvps = new ArrayList<>();
		if (map != null) {
			for (Entry<String, String> entry : map.entrySet()) {
				nvps.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
			}
		}
		// 设置参数到请求对象中
		httpPost.setEntity(new UrlEncodedFormEntity(nvps, encoding));

		System.out.println("请求地址：" + url);
		System.out.println("请求参数：" + nvps.toString());

		// 设置header信息
		// 指定报文头【Content-type】、【User-Agent】
		httpPost.setHeader("Content-type", "application/x-www-form-urlencoded");
		httpPost.setHeader("User-Agent", "Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)");

		// 执行请求操作，并拿到结果（同步阻塞）
		CloseableHttpResponse response = client.execute(httpPost);
		// 获取结果实体
		HttpEntity entity = response.getEntity();
		if (entity != null) {
			// 按指定编码转换结果实体为String类型
			body = EntityUtils.toString(entity, encoding);
		}
		EntityUtils.consume(entity);
		// 释放链接
		response.close();
		System.out.println("响应数据：" + body);
		return body;
	}
	
	public static String get(String url, Map<String, String> map, String encoding) {

		// 获取连接客户端工具
		CloseableHttpClient httpClient = HttpClients.createDefault();
		
		String entityStr = null;
		CloseableHttpResponse response = null;
		
		try {
			/*
			 * 由于GET请求的参数都是拼装在URL地址后方，所以我们要构建一个URL，带参数
			 */
			URIBuilder uriBuilder = new URIBuilder(url);
			/** 第一种添加参数的形式 */
			/*uriBuilder.addParameter("name", "root");
			uriBuilder.addParameter("password", "123456");*/
			/** 第二种添加参数的形式 */
			// 装填参数
			List<NameValuePair> nvps = new ArrayList<>();
			if (map != null) {
				for (Entry<String, String> entry : map.entrySet()) {
					nvps.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
				}
			}
			// 设置参数到请求对象中
			System.out.println("请求地址：" + url);
			System.out.println("请求参数：" + nvps.toString());
			uriBuilder.setParameters(nvps);
			
			// 根据带参数的URI对象构建GET请求对象
			HttpGet httpGet = new HttpGet(uriBuilder.build());
			
			/*
			 * 添加请求头信息
			 */
			// 浏览器表示
			httpGet.addHeader("User-Agent", "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.6)");
			// 传输的类型
			httpGet.addHeader("Content-Type", "application/x-www-form-urlencoded");
			
			// 执行请求
			response = httpClient.execute(httpGet);
			// 获得响应的实体对象
			HttpEntity entity = response.getEntity();
			// 使用Apache提供的工具类进行转换成字符串
			entityStr = EntityUtils.toString(entity, "UTF-8");
		} catch (ClientProtocolException e) {
			System.err.println("Http协议出现问题");
		} catch (ParseException e) {
			System.err.println("解析错误");
		} catch (URISyntaxException e) {
			System.err.println("URI解析异常");
		} catch (IOException e) {
			System.err.println("IO异常");
		} finally {
			// 释放连接
			if (null != response) {
				try {
					response.close();
					httpClient.close();
				} catch (IOException e) {
					System.err.println("释放连接出错");
					e.printStackTrace();
				}
			}
		}
		System.out.println("响应数据：" + entityStr);
		return entityStr;
		
	}

	public static String upload2(String url, File file) throws ClientProtocolException, IOException {
		CloseableHttpClient httpClient = HttpClientBuilder.create().build();
		CloseableHttpResponse httpResponse = null;
		RequestConfig requestConfig = RequestConfig.custom().setConnectTimeout(200000).setSocketTimeout(200000000).build();
		HttpPost httpPost = new HttpPost(url);
		httpPost.setConfig(requestConfig);
		MultipartEntityBuilder multipartEntityBuilder = MultipartEntityBuilder.create();
		// multipartEntityBuilder.setCharset(Charset.forName("UTF-8"));

		// File file = new File("F:\\Ken\\1.PNG");
		// FileBody bin = new FileBody(file);

		// multipartEntityBuilder.addBinaryBody("file", file,ContentType.create("image/png"),"abc.pdf");
		// 当设置了setSocketTimeout参数后，以下代码上传PDF不能成功，将setSocketTimeout参数去掉后此可以上传成功。上传图片则没有个限制
		// multipartEntityBuilder.addBinaryBody("file",file,ContentType.create("application/octet-stream"),"abd.pdf");
		multipartEntityBuilder.addBinaryBody("file", file);
		// multipartEntityBuilder.addPart("comment", new StringBody("This is comment", ContentType.TEXT_PLAIN));
		multipartEntityBuilder.addTextBody("comment", "this is comment");
		HttpEntity httpEntity = multipartEntityBuilder.build();
		httpPost.setEntity(httpEntity);

		httpResponse = httpClient.execute(httpPost);
		HttpEntity responseEntity = httpResponse.getEntity();
		int statusCode = httpResponse.getStatusLine().getStatusCode();
		StringBuffer buffer = new StringBuffer();
		if (statusCode == 200) {
			BufferedReader reader = new BufferedReader(new InputStreamReader(responseEntity.getContent()));

			String str = "";
			while (StringUtils.isNotEmpty(str = reader.readLine())) {
				buffer.append(str);
			}

		}

		httpClient.close();
		if (httpResponse != null) {
			httpResponse.close();
		}
		System.out.println("响应数据：" + buffer.toString());
		return buffer.toString();
	}

}
