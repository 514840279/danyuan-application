package org.danyuan.application.softm.roles.vo;

/**
 * 文件名 ： MailVo.java
 * 包 名 ： com.geekcattle.vo.report
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2017年9月8日 下午3:46:18
 * 版 本 ： V1.0
 */
public class MailVo {
	private String	mail;
	private String	code;
	private String	message;
	
	/**
	 * 方法名 ： getMail
	 * 功 能 ： 返回变量 mail 的值
	 * 
	 * @return: String
	 */
	public String getMail() {
		return mail;
	}
	
	/**
	 * 方法名 ： setMail
	 * 功 能 ： 设置变量 mail 的值
	 */
	public void setMail(String mail) {
		this.mail = mail;
	}
	
	/**
	 * 方法名 ： getCode
	 * 功 能 ： 返回变量 code 的值
	 * 
	 * @return: String
	 */
	public String getCode() {
		return code;
	}
	
	/**
	 * 方法名 ： setCode
	 * 功 能 ： 设置变量 code 的值
	 */
	public void setCode(String code) {
		this.code = code;
	}
	
	/**
	 * 方法名 ： getMessage
	 * 功 能 ： 返回变量 message 的值
	 * 
	 * @return: String
	 */
	public String getMessage() {
		return message;
	}
	
	/**
	 * 方法名 ： setMessage
	 * 功 能 ： 设置变量 message 的值
	 */
	public void setMessage(String message) {
		this.message = message;
	}
	
	/**
	 * 方法名 ： toString
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see java.lang.Object#toString()
	 * 作 者 ： wang
	 */
	
	@Override
	public String toString() {
		return "MailVo [mail=" + mail + ", code=" + code + ", message=" + message + "]";
	}
	
}
