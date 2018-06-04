package tk.ainiyue.danyuan.application.dbms.zhcx.vo;

import java.util.ArrayList;
import java.util.List;

import tk.ainiyue.danyuan.application.common.base.Pagination;
import tk.ainiyue.danyuan.application.dbms.zhcx.po.SysZhcxTab;

public class SysZhcxTabVo extends Pagination<SysZhcxTab> {
	public String				userindex;
	public String				uservalue;
	public String				type;
	public String				typeUuid;
	public String				tableuuid;
	public String				tableName;
	public String				dbType;
	public String				esName;
	public String				tableDesc;
	public String				tableRows;
	
	public String				paramString;
	public List<MulteityParam>	paramList	= new ArrayList<>();
	
	/**
	 * 方法名 ： getType
	 * 功 能 ： 返回变量 type 的值
	 * @return: String
	 */
	public String getType() {
		return type;
	}
	
	/**
	 * 方法名 ： setType
	 * 功 能 ： 设置变量 type 的值
	 */
	public void setType(String type) {
		this.type = type;
	}
	
	/**
	 * 方法名 ： getParamString
	 * 功 能 ： 返回变量 paramString 的值
	 * @return: String
	 */
	public String getParamString() {
		return paramString;
	}
	
	/**
	 * 方法名 ： setParamString
	 * 功 能 ： 设置变量 paramString 的值
	 */
	public void setParamString(String paramString) {
		this.paramString = paramString;
	}
	
	/**
	 * 方法名 ： getTableDesc
	 * 功 能 ： 返回变量 tableDesc 的值
	 * @return: String
	 */
	public String getTableDesc() {
		return tableDesc;
	}
	
	/**
	 * 方法名 ： setTableDesc
	 * 功 能 ： 设置变量 tableDesc 的值
	 */
	public void setTableDesc(String tableDesc) {
		this.tableDesc = tableDesc;
	}
	
	/**
	 * 方法名 ： getTableName
	 * 功 能 ： 返回变量 tableName 的值
	 * @return: String
	 */
	public String getTableName() {
		return tableName;
	}
	
	/**
	 * 方法名 ： setTableName
	 * 功 能 ： 设置变量 tableName 的值
	 */
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	
	/**
	 * 方法名 ： getUserindex
	 * 功 能 ： 返回变量 userindex 的值
	 * @return: String
	 */
	public String getUserindex() {
		return userindex;
	}
	
	/**
	 * 方法名 ： setUserindex
	 * 功 能 ： 设置变量 userindex 的值
	 */
	public void setUserindex(String userindex) {
		this.userindex = userindex;
	}
	
	/**
	 * 方法名 ： getUservalue
	 * 功 能 ： 返回变量 uservalue 的值
	 * @return: String
	 */
	public String getUservalue() {
		return uservalue;
	}
	
	/**
	 * 方法名 ： setUservalue
	 * 功 能 ： 设置变量 uservalue 的值
	 */
	public void setUservalue(String uservalue) {
		this.uservalue = uservalue;
	}
	
	/**
	 * 方法名 ： getTypeUuid
	 * 功 能 ： 返回变量 typeUuid 的值
	 * @return: String
	 */
	public String getTypeUuid() {
		return typeUuid;
	}
	
	/**
	 * 方法名 ： setTypeUuid
	 * 功 能 ： 设置变量 typeUuid 的值
	 */
	public void setTypeUuid(String typeUuid) {
		this.typeUuid = typeUuid;
	}
	
	/**
	 * 方法名 ： getTableuuid
	 * 功 能 ： 返回变量 tableuuid 的值
	 * @return: String
	 */
	public String getTableuuid() {
		return tableuuid;
	}
	
	/**
	 * 方法名 ： setTableuuid
	 * 功 能 ： 设置变量 tableuuid 的值
	 */
	public void setTableuuid(String tableuuid) {
		this.tableuuid = tableuuid;
	}
	
	/**
	 * 方法名 ： getTableRows
	 * 功 能 ： 返回变量 tableRows 的值
	 * @return: String
	 */
	public String getTableRows() {
		return tableRows;
	}
	
	/**
	 * 方法名 ： setTableRows
	 * 功 能 ： 设置变量 tableRows 的值
	 */
	public void setTableRows(String tableRows) {
		this.tableRows = tableRows;
	}
	
	/**
	 * 方法名 ： getParamList
	 * 功 能 ： 返回变量 paramList 的值
	 * @return: List<MulteityParam>
	 */
	public List<MulteityParam> getParamList() {
		return paramList;
	}
	
	/**
	 * 方法名 ： setParamList
	 * 功 能 ： 设置变量 paramList 的值
	 */
	public void setParamList(List<MulteityParam> paramList) {
		this.paramList = paramList;
	}
	
	/**
	 * 方法名 ： getDbType
	 * 功 能 ： 返回变量 dbType 的值
	 * @return: String
	 */
	public String getDbType() {
		return dbType;
	}
	
	/**
	 * 方法名 ： setDbType
	 * 功 能 ： 设置变量 dbType 的值
	 */
	public void setDbType(String dbType) {
		this.dbType = dbType;
	}
	
	/**
	 * 方法名 ： getEsName
	 * 功 能 ： 返回变量 esName 的值
	 * @return: String
	 */
	public String getEsName() {
		return esName;
	}
	
	/**
	 * 方法名 ： setEsName
	 * 功 能 ： 设置变量 esName 的值
	 */
	public void setEsName(String esName) {
		this.esName = esName;
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
		return "SysZhcxTabVo [userindex=" + userindex + ", uservalue=" + uservalue + ", typeUuid=" + typeUuid + ", tableuuid=" + tableuuid + ", tableName=" + tableName + ", tableDesc=" + tableDesc + ", tableRows=" + tableRows + ", paramString=" + paramString + ", paramList=" + paramList + "]";
	}
	
}
