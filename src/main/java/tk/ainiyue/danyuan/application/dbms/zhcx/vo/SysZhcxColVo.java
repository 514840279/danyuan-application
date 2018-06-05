package tk.ainiyue.danyuan.application.dbms.zhcx.vo;

import java.util.ArrayList;
import java.util.List;

import tk.ainiyue.danyuan.application.common.base.Pagination;
import tk.ainiyue.danyuan.application.dbms.tabs.vo.MulteityParam;
import tk.ainiyue.danyuan.application.dbms.zhcx.po.SysZhcxCol;

public class SysZhcxColVo extends Pagination<SysZhcxCol> {
	public String				userindex;
	public String				uservalue;
	public String				tableUuid;
	public String				tableName;
	public String				dbType;
	public String				esName;
	public String				tableDesc;
	public Integer				total;
	public String				type;
	public String				paramString;
	public List<MulteityParam>	paramList	= new ArrayList<>();
	
	public String				mapString;
	
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
	 * 方法名 ： getMapString
	 * 功 能 ： 返回变量 mapString 的值
	 * @return: String
	 */
	public String getMapString() {
		return mapString;
	}
	
	/**
	 * 方法名 ： setMapString
	 * 功 能 ： 设置变量 mapString 的值
	 */
	public void setMapString(String mapString) {
		this.mapString = mapString;
	}
	
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
	 * 方法名 ： getTableUuid
	 * 功 能 ： 返回变量 tableUuid 的值
	 * @return: String
	 */
	public String getTableUuid() {
		return tableUuid;
	}
	
	/**
	 * 方法名 ： setTableUuid
	 * 功 能 ： 设置变量 tableUuid 的值
	 */
	public void setTableUuid(String tableUuid) {
		this.tableUuid = tableUuid;
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
	 * 方法名 ： getTotal
	 * 功 能 ： 返回变量 total 的值
	 * @return: Integer
	 */
	public Integer getTotal() {
		return total;
	}
	
	/**
	 * 方法名 ： setTotal
	 * 功 能 ： 设置变量 total 的值
	 */
	public void setTotal(Integer total) {
		this.total = total;
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
		return "SysZhcxColVo [userindex=" + userindex + ", uservalue=" + uservalue + ", tableUuid=" + tableUuid + ", tableName=" + tableName + ", dbType=" + dbType + ", esName=" + esName + ", tableDesc=" + tableDesc + ", total=" + total + ", type=" + type + ", paramString=" + paramString + ", paramList=" + paramList + ", mapString=" + mapString + "]";
	}
	
}
