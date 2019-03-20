package org.danyuan.application.common.utils.excel;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.converter.PicturesManager;
import org.apache.poi.hwpf.converter.WordToHtmlConverter;
import org.apache.poi.hwpf.usermodel.PictureType;
import org.apache.poi.xwpf.converter.core.FileImageExtractor;
import org.apache.poi.xwpf.converter.core.FileURIResolver;
import org.apache.poi.xwpf.converter.xhtml.XHTMLConverter;
import org.apache.poi.xwpf.converter.xhtml.XHTMLOptions;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.w3c.dom.Document;

/**
 * word 转换成html
 */
public class WordToHtml {

	/**
	 * 2007版本word转换成html
	 *
	 * @throws IOException
	 */
	public static void Word2007ToHtml(String filepath, String fileName) throws IOException {
		String htmlName = fileName.substring(0, fileName.lastIndexOf(".")) + ".html";
		final String file = filepath + "/" + fileName;
		File f = new File(file);
		if (!f.exists()) {
			System.out.println("Sorry File does not Exists!");
		} else {
			if (f.getName().toLowerCase().endsWith(".docx") || f.getName().toLowerCase().endsWith(".doc")) {

				// 1) 加载word文档生成 XWPFDocument对象
				InputStream in = new FileInputStream(f);
				XWPFDocument document = new XWPFDocument(in);

				// 2) 解析 XHTML配置 (这里设置IURIResolver来设置图片存放的目录)
				File imageFolderFile = new File(filepath);
				XHTMLOptions options = XHTMLOptions.create().URIResolver(new FileURIResolver(imageFolderFile));
				options.setExtractor(new FileImageExtractor(imageFolderFile));
				options.setIgnoreStylesIfUnused(false);
				options.setFragment(true);

				// 3) 将 XWPFDocument转换成XHTML
				OutputStream out = new FileOutputStream(new File(filepath + "/" + htmlName));
				XHTMLConverter.getInstance().convert(document, out, options);

				// 也可以使用字符数组流获取解析的内容
//                ByteArrayOutputStream baos = new ByteArrayOutputStream();
//                XHTMLConverter.getInstance().convert(document, baos, options);
//                String content = baos.toString();
//                System.out.println(content);
//                 baos.close();
			} else {
				System.out.println("Enter only MS Office 2007+ files");
			}
		}
	}

	/**
	 * /**
	 * 2003版本word转换成html
	 *
	 * @throws IOException
	 * @throws TransformerException
	 * @throws ParserConfigurationException
	 */
	public static void Word2003ToHtml(String filepath, String fileName) throws IOException, TransformerException, ParserConfigurationException {
		String htmlName = fileName.substring(0, fileName.lastIndexOf(".")) + ".html";
		final String file = filepath + "/" + fileName;
		InputStream input = new FileInputStream(new File(file));
		HWPFDocument wordDocument = new HWPFDocument(input);
		WordToHtmlConverter wordToHtmlConverter = new WordToHtmlConverter(DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument());
		// 设置图片存放的位置
		wordToHtmlConverter.setPicturesManager(new PicturesManager() {
			@Override
			public String savePicture(byte[] content, PictureType pictureType, String suggestedName, float widthInches, float heightInches) {
				File imgPath = new File(filepath + "\\" + fileName.substring(0, fileName.lastIndexOf(".")));
				if (!imgPath.exists()) {// 图片目录不存在则创建
					imgPath.mkdirs();
				}
				File file = new File(filepath + "\\" + fileName.substring(0, fileName.lastIndexOf(".")) + "\\" + suggestedName);
				try {
					OutputStream os = new FileOutputStream(file);
					os.write(content);
					os.close();
				} catch (FileNotFoundException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				return filepath + "\\" + fileName.substring(0, fileName.lastIndexOf(".")) + "\\" + suggestedName;
			}
		});

		// 解析word文档
		wordToHtmlConverter.processDocument(wordDocument);
		Document htmlDocument = wordToHtmlConverter.getDocument();

		File htmlFile = new File(filepath + "/" + htmlName);
		OutputStream outStream = new FileOutputStream(htmlFile);

		// 也可以使用字符数组流获取解析的内容
//        ByteArrayOutputStream baos = new ByteArrayOutputStream();
//        OutputStream outStream = new BufferedOutputStream(baos);

		DOMSource domSource = new DOMSource(htmlDocument);
		StreamResult streamResult = new StreamResult(outStream);

		TransformerFactory factory = TransformerFactory.newInstance();
		Transformer serializer = factory.newTransformer();
		serializer.setOutputProperty(OutputKeys.ENCODING, "utf-8");
		serializer.setOutputProperty(OutputKeys.INDENT, "yes");
		serializer.setOutputProperty(OutputKeys.METHOD, "html");

		serializer.transform(domSource, streamResult);

		// 也可以使用字符数组流获取解析的内容
//        String content = baos.toString();
//        System.out.println(content);
//        baos.close();
		outStream.close();
	}
	
	public static void main(String[] args) throws IOException, TransformerException, ParserConfigurationException {
		Word2007ToHtml("D:\\workspace1\\ZHXXYYPT\\文档\\文档", "《ZHXXYYPT职务犯罪平台》数据库说明文档.docx");
		Word2003ToHtml("D:\\workspace1\\ZHXXYYPT\\文档\\文档", "《ZHXXYYPT职务犯罪平台》安装部署说明20160926.doc");
	}
}