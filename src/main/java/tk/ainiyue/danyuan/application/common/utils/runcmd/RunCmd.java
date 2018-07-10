package tk.ainiyue.danyuan.application.common.utils.runcmd;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

/**
 * 文件名 ： RunCmd.java
 * 包 名 ： tk.ainiyue.utils.runcmd
 * 描 述 ： 执行命令
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2015年10月9日 下午4:52:19
 * 版 本 ： V1.0
 */
public class RunCmd {
	/**
	 * 构造方法：
	 * 描 述： 执行cmd、
	 * 参 数： @param cmd
	 * 时 间 ： 2015年10月9日 下午4:56:13
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	public static List<String> runCmd(String cmd) {
		List<String> list = null;
		Process proc = null;
		try {
			// 执行语句
			proc = Runtime.getRuntime().exec(cmd.toString());
			
			// 获得返回数据流
			InputStream is = proc.getInputStream();
			BufferedReader reader = new BufferedReader(new InputStreamReader(is));
			String line;
			list = new ArrayList<String>();
			while ((line = reader.readLine()) != null) {
				// 添加返回数据
				list.add(line);
			}
			// waitFor将返回exitValue的值0表示正常结束
			if (proc.waitFor() != 0) {
				System.out.println("命令执行出错了");
				return null;
			}
			// 关闭流
			is.close();
			reader.close();
		} catch (Exception e) {
			System.out.println("命令执行出错了" + e);
		} finally {
			// 关闭程序
			proc.destroy();
		}
		
		return list;
	}
	
}
