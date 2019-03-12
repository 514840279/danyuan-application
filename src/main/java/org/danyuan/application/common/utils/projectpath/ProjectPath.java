package org.danyuan.application.common.utils.projectpath;

public class ProjectPath {

	/**
	 * 方法名： getProjectClassPath
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param path
	 * 参 数： @return
	 * 返 回： String
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	public String getProjectClassPath(String path) {
		return this.getClass().getClassLoader().getResource(path).getPath();
	}

	/**
	 * 方法名： getProjectRootPath
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param string
	 * 参 数： @return
	 * 返 回： String
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	public static String getProjectRootPath() {
		return System.getProperty("user.dir");
	}
}
