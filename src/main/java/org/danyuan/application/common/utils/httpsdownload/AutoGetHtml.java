package org.danyuan.application.common.utils.httpsdownload;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.methods.GetMethod;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

/**
 * 文件名 ： AutoGetHtml.java
 * 包 名 ： org.danyuan.utils.httpsdownload
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年1月17日 下午2:37:51
 * 版 本 ： V1.0
 */
public class AutoGetHtml {
	
	/**
	 * @throws IOException
	 * 方法名： getBody
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param url
	 * 参 数： @param key
	 * 参 数： @return
	 * 返 回： String
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	public static String getBody(String url, String key) throws IOException {
		Document doc = Jsoup.connect("http://www.oschina.net/")
		        
		        .data("query", "Java") // 请求参数
		        
		        .userAgent("Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.4; en-US; rv:1.9.2.2) Gecko/20100316 Firefox/3.6.2") // 设置 User-Agent
		        
		        .cookie("auth", "token") // 设置 cookie
		        
		        .timeout(3000) // 设置连接超时时间
		        
		        .post(); // 使用 POST 方法访问 URL
		
		return doc.title();
	}
	
	// 要查找的网址
	private ArrayList<String> websites;
	
	/**
	 * 构造函数
	 * @param websites 网站列表
	 */
	public AutoGetHtml(ArrayList<String> websites) {
		this.websites = websites;
	}
	
	/**
	 * 获取响应头
	 * 打印到控制台
	 */
	public void getHeaders() {
		if (websites == null) {
			System.err.println("查询网址不能为空！");
			return;
		}
		try {
			for (String website : websites) {
				System.out.println("----------------网站：" + website + "HTTP响应头---------------");
				URL url = new URL(website);
				URLConnection connection = url.openConnection();
				Map<String, List<String>> headerFields = connection.getHeaderFields();
				Set<Entry<String, List<String>>> entrySet = headerFields.entrySet();
				Iterator<Entry<String, List<String>>> iterator = entrySet.iterator();
				while (iterator.hasNext()) {
					Entry<String, List<String>> next = iterator.next();
					String key = next.getKey();
					List<String> value = next.getValue();
					if (key == null)
						System.out.println(value.toString());
					else
						System.out.println(key + ":" + value.toString());
				}
				System.out.println("");
			}
		} catch (IOException e) {
			System.err.println("无法查询网址！");
		}
	}
	
	private static HttpClient httpClient = new HttpClient();
	
	/**
	 * @param path
	 *            目标网页的链接
	 * @return 返回布尔值，表示是否正常下载目标页面
	 * @throws Exception
	 *             读取网页流或写入本地文件流的IO异常
	 */
	public static boolean downloadPage(String path) throws Exception {
		// 定义输入输出流
		InputStream input = null;
		OutputStream output = null;
		// 得到 post 方法
		GetMethod getMethod = new GetMethod(path);
		// 执行，返回状态码
		int statusCode = httpClient.executeMethod(getMethod);
		// 针对状态码进行处理
		// 简单起见，只处理返回值为 200 的状态码
		if (statusCode == HttpStatus.SC_OK) {
			input = getMethod.getResponseBodyAsStream();
			// 通过对URL的得到文件名
			String filename = path.substring(path.lastIndexOf('/') + 1) + ".html";
			// 获得文件输出流
			output = new FileOutputStream(filename);
			// 输出到文件
			int tempByte = -1;
			while ((tempByte = input.read()) > 0) {
				output.write(tempByte);
			}
			// 关闭输入流
			if (input != null) {
				input.close();
			}
			// 关闭输出流
			if (output != null) {
				output.close();
			}
			return true;
		}
		return false;
	}
	
	// public static void main(String[] args) throws Exception {
	// String web1 = "http://www.oschina.net/";
	// String web2 = "http://news.baidu.com/";
	// String web3 = "https://linux.cn/";
	// String web4 = "http://www.taobao.com/";
	// // ArrayList<String> websites = new ArrayList<String>();
	// // websites.add(web1);
	// // websites.add(web2);
	// // websites.add(web3);
	// // websites.add(web4);
	// // AutoGetHtml showHttpHeaders = new AutoGetHtml(websites);
	// // showHttpHeaders.getHeaders();
	// // AutoGetHtml.getBody(null, null);
	//
	// AutoGetHtml.downloadPage(web2);
	//
	// }
	
	// public static void main(String[] args) {
	//
	// try {
	//
	// URL obj = new URL("http://mkyong.com");
	// URLConnection conn = obj.openConnection();
	// Map<String, List<String>> map = conn.getHeaderFields();
	//
	// System.out.println("Printing Response Header...\n");
	//
	// for (Map.Entry<String, List<String>> entry : map.entrySet()) {
	// System.out.println("Key : " + entry.getKey() + " ,Value : " + entry.getValue());
	// }
	//
	// System.out.println("\nGet Response Header By Key ...\n");
	// String server = conn.getHeaderField("Server");
	//
	// if (server == null) {
	// System.out.println("Key 'Server' is not found!");
	// } else {
	// System.out.println("Server - " + server);
	// }
	//
	// System.out.println("\n Done");
	//
	// } catch (Exception e) {
	// e.printStackTrace();
	// }
	//
	// }
	
	@SuppressWarnings({ "unused", "rawtypes", "unchecked" })
	public static void main(String[] args) throws IOException {
		String web1 = "http://www.oschina.net/";
		String web2 = "http://news.baidu.com/";
		String web3 = "http://linux.cn/";
		String web4 = "http://www.taobao.com/";
		URL url = new URL(web1);
		URLConnection conn = url.openConnection();
		
		Map headers = conn.getHeaderFields();
		Set<String> keys = headers.keySet();
		for (String key : keys) {
			String val = conn.getHeaderField(key);
			System.out.println(key + "    " + val);
		}
		System.out.println(conn.getLastModified());
	}
	
}
