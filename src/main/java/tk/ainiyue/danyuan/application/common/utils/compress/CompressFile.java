package tk.ainiyue.danyuan.application.common.utils.compress;

/**
 * 文件名 ： CompressFile.java
 * 包 名 ： com.dalianyijianxing.wth.changerartofile
 * 描 述 ： 解压缩文件（.rar，.zip）
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2015年9月16日 下午4:30:09
 * 版 本 ： V1.0
 */
public class CompressFile {
	
	/**
	 * 方法名： generalZipFile
	 * 功 能： CMD模式解压带密码的rar文件
	 * 参 数： @param file
	 * 参 数： @param dir
	 * 返 回： void
	 * 作 者 ： Tenghui.Wang
	 * 版 本 ： V1.0
	 * @throws
	 */
	public static void generalRARFile(String file, String password) {
		// 根据类型，进行相应的解压缩
		String type = file.substring(file.lastIndexOf(".") + 1).toLowerCase();
		String dir = file.replace(file.substring(file.lastIndexOf("/") + 1), "");
		if (type.equals("rar")) {
			System.out.println("解压文件：" + file);
			StringBuffer cmd = new StringBuffer();// 安装的winrar路径
			cmd.append("  unrar x -o+ -p");
			cmd.append(password);// 压缩密码
			cmd.append(" ");//
			cmd.append(file);// 原文件的路径
			cmd.append(" ");
			cmd.append(dir);// 目标路径
			System.out.println(cmd.toString());
			try {
				Process proc = Runtime.getRuntime().exec(cmd.toString());
				if (proc.waitFor() != 0) {// waitFor将返回exitValue的值0表示正常结束 {
					System.out.println("出错了");
					return;
				} else {
					// OldRarFile.update(file,"2");
					// 解压完的删除rar文件
					// File files = new File(file);
					// files.delete();
				}
				proc.destroy();
			} catch (Exception e) {
				System.out.println(file + " ====解压失败" + e);
			}
		}
		return;
	}
	
}
