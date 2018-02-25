package tk.ainiyue.danyuan.application.file.upload.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import io.swagger.annotations.Api;

@RestController
@RequestMapping("/sysFileUploadInfo")
@Api(value = "/SysFileUploadInfo", description = "文件上传")
public class SysFileUploadController {
	
	@RequestMapping("/upload")
	public String upload(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {

		request.setCharacterEncoding("UTF-8");

		Map<String, Object> json = new HashMap<>();
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;

		/** 页面控件的文件流* */
		MultipartFile multipartFile = null;
		Map<String, MultipartFile> map = multipartRequest.getFileMap();
		for (Object obj : map.keySet()) {
			multipartFile = map.get(obj);

		}
		/** 获取文件的后缀* */
		String filename = multipartFile.getOriginalFilename();
		System.out.println(filename);
		InputStream inputStream;
		String path = "";
		String newVersionName = "";
		String fileMd5 = "";
		try {

			inputStream = multipartFile.getInputStream();
//			File tmpFile = File.createTempFile(filename,
//			        filename.substring(filename.lastIndexOf(".")));
//			fileMd5 = Files.hash(tmpFile, Hashing.md5()).toString();
//			FileUtils.copyInputStreamToFile(inputStream, tmpFile);
//			// 上传UpYun后返回的path
//			String versionGbk = AnalysisApk.unZip(tmpFile.getPath(), "")[0];
//			byte[] versionNam = versionGbk.getBytes("iso8859-1");// 这里写转换前的编码方式
//			newVersionName = new String(versionNam, "utf-8");// 这里写转换后的编码方式
//			path = UpyunUtils.uploadApk(tmpFile, multipartFile.getOriginalFilename(), true, newVersionName);
			System.err.println(path);
//			tmpFile.delete();
			
			FileOutputStream fos = new FileOutputStream("./uploadfile/" + filename);
			
			byte[] b = new byte[1024];
			
			while ((inputStream.read(b)) != -1) {
				
				fos.write(b);
				
			}
			
			inputStream.close();
			
			fos.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "1";
	}
	
}
