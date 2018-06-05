package tk.ainiyue.danyuan.application.dbms.tabs.vo;

/**
 * 文件名 ： MulteityParams.java
 * 包 名 ： com.shumeng.application.zhcx.vo
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年3月20日 下午5:37:27
 * 版 本 ： V1.0
 */
public class MulteityParam {
	private String	operator;
	private String	userDesc;
	private String	userIndex;
	private String	value;
	
	/**
	 * 方法名 ： getOperator
	 * 功 能 ： 返回变量 operator 的值
	 * @return: String
	 */
	public String getOperator() {
		return operator;
	}
	
	/**
	 * 方法名 ： setOperator
	 * 功 能 ： 设置变量 operator 的值
	 */
	public void setOperator(String operator) {
		this.operator = operator;
	}
	
	/**
	 * 方法名 ： getUserDesc
	 * 功 能 ： 返回变量 userDesc 的值
	 * @return: String
	 */
	public String getUserDesc() {
		return userDesc;
	}
	
	/**
	 * 方法名 ： setUserDesc
	 * 功 能 ： 设置变量 userDesc 的值
	 */
	public void setUserDesc(String userDesc) {
		this.userDesc = userDesc;
	}
	
	/**
	 * 方法名 ： getUserIndex
	 * 功 能 ： 返回变量 userIndex 的值
	 * @return: String
	 */
	public String getUserIndex() {
		return userIndex;
	}
	
	/**
	 * 方法名 ： setUserIndex
	 * 功 能 ： 设置变量 userIndex 的值
	 */
	public void setUserIndex(String userIndex) {
		this.userIndex = userIndex;
	}
	
	/**
	 * 方法名 ： getValue
	 * 功 能 ： 返回变量 value 的值
	 * @return: String
	 */
	public String getValue() {
		return value;
	}
	
	/**
	 * 方法名 ： setValue
	 * 功 能 ： 设置变量 value 的值
	 */
	public void setValue(String value) {
		this.value = value;
	}
	
	/**
	 * 方法名 ： toString
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see java.lang.Object#toString()
	 * 作 者 ： Administrator
	 */
	
	@Override
	public String toString() {
		return "MulteityParam [operator=" + operator + ", userDesc=" + userDesc + ", userIndex=" + userIndex + ", value=" + value + "]";
	}
	
}
