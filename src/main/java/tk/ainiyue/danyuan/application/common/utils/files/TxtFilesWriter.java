package tk.ainiyue.danyuan.application.common.utils.files;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

/**
 * 文件名 ： TxtFilesWriter.java
 * 包 名 ： org.danyuan.utils.files
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年4月13日 下午11:53:47
 * 版 本 ： V1.0
 */
public class TxtFilesWriter {
	
	/**
	 * 拼接写入
	 * 方法名： appendWriteToFile
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param data
	 * 参 数： @param filepath
	 * 返 回： void
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	public static void appendWriteToFile(String data, String filepath) {
		try {
			String path = filepath.substring(0, filepath.lastIndexOf("\\") > 0 ? filepath.lastIndexOf("\\") : filepath.lastIndexOf("/") > 0 ? filepath.lastIndexOf("/") : filepath.length());
			File dir = new File(path);
			if (!dir.exists()) {
				dir.mkdirs();
			}
			File file = new File(filepath);
			// if file doesnt exists, then create it
			if (!file.exists()) {
				file.createNewFile();
			}
			// true = append file
			FileWriter fileWritter = new FileWriter(filepath, true);
			fileWritter.write(data + "\r\n");
			fileWritter.flush();
			fileWritter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 重新写入文件
	 * 方法名： writeToFile
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param data
	 * 参 数： @param filepath
	 * 返 回： void
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	public static void writeToFile(String data, String filepath) {
		try {
			String path = filepath.substring(0, filepath.lastIndexOf("\\") > 0 ? filepath.lastIndexOf("\\") : filepath.lastIndexOf("/") > 0 ? filepath.lastIndexOf("/") : filepath.length());
			File dir = new File(path);
			if (!dir.exists()) {
				dir.mkdirs();
			}
			File file = new File(filepath);
			// if file doesnt exists, then create it
			if (!file.exists()) {
				file.createNewFile();
			}
			// true = append file
			FileWriter fileWritter = new FileWriter(filepath);
			fileWritter.write(data + "\r\n");
			fileWritter.flush();
			fileWritter.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
