package tk.ainiyue.danyuan.application.softm.sysmenu.vo;

import java.util.ArrayList;
import java.util.List;

/**
 * 文件名 ： AuthorityVO.java
 * 包 名 ： tk.ainiyue.danyuan.application.authority.vo
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2016年10月26日 下午9:47:35
 * 版 本 ： V1.0
 */
public class AuthorityzTreeVO {

	private String					id;												// DIY

	private String					name;
	private boolean					checked;
	private List<AuthorityzTreeVO>	children	= new ArrayList<AuthorityzTreeVO>();
	private boolean					chkDisabled;
	private String					click;
	private boolean					halfCheck;
	private String					icon;
	private String					iconClose;
	private String					iconOpen;
	private String					iconSkin;
	private String					isHidden;
	private String					isParent;
	private String					nocheck;
	private String					open;
	private String					target;
	private String					url;
	private Boolean					homePage;
	
	/**
	 * 方法名 ： getId
	 * 功 能 ： 返回变量 id 的值
	 * @return: String
	 */
	public String getId() {
		return id;
	}

	/**
	 * 方法名 ： setId
	 * 功 能 ： 设置变量 id 的值
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * 方法名 ： getName
	 * 功 能 ： 返回变量 name 的值
	 * @return: String
	 */
	public String getName() {
		return name;
	}

	/**
	 * 方法名 ： setName
	 * 功 能 ： 设置变量 name 的值
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * 方法名 ： isChecked
	 * 功 能 ： 返回变量 checked 的值
	 * @return: boolean
	 */
	public boolean isChecked() {
		return checked;
	}

	/**
	 * 方法名 ： setChecked
	 * 功 能 ： 设置变量 checked 的值
	 */
	public void setChecked(boolean checked) {
		this.checked = checked;
	}

	/**
	 * 方法名 ： getChildren
	 * 功 能 ： 返回变量 children 的值
	 * @return: List<AuthorityzTreeVO>
	 */
	public List<AuthorityzTreeVO> getChildren() {
		return children;
	}

	/**
	 * 方法名 ： setChildren
	 * 功 能 ： 设置变量 children 的值
	 */
	public void setChildren(List<AuthorityzTreeVO> children) {
		this.children = children;
	}

	/**
	 * 方法名 ： isChkDisabled
	 * 功 能 ： 返回变量 chkDisabled 的值
	 * @return: boolean
	 */
	public boolean isChkDisabled() {
		return chkDisabled;
	}

	/**
	 * 方法名 ： setChkDisabled
	 * 功 能 ： 设置变量 chkDisabled 的值
	 */
	public void setChkDisabled(boolean chkDisabled) {
		this.chkDisabled = chkDisabled;
	}

	/**
	 * 方法名 ： getClick
	 * 功 能 ： 返回变量 click 的值
	 * @return: String
	 */
	public String getClick() {
		return click;
	}

	/**
	 * 方法名 ： setClick
	 * 功 能 ： 设置变量 click 的值
	 */
	public void setClick(String click) {
		this.click = click;
	}

	/**
	 * 方法名 ： isHalfCheck
	 * 功 能 ： 返回变量 halfCheck 的值
	 * @return: boolean
	 */
	public boolean isHalfCheck() {
		return halfCheck;
	}

	/**
	 * 方法名 ： setHalfCheck
	 * 功 能 ： 设置变量 halfCheck 的值
	 */
	public void setHalfCheck(boolean halfCheck) {
		this.halfCheck = halfCheck;
	}

	/**
	 * 方法名 ： getIcon
	 * 功 能 ： 返回变量 icon 的值
	 * @return: String
	 */
	public String getIcon() {
		return icon;
	}

	/**
	 * 方法名 ： setIcon
	 * 功 能 ： 设置变量 icon 的值
	 */
	public void setIcon(String icon) {
		this.icon = icon;
	}

	/**
	 * 方法名 ： getIconClose
	 * 功 能 ： 返回变量 iconClose 的值
	 * @return: String
	 */
	public String getIconClose() {
		return iconClose;
	}

	/**
	 * 方法名 ： setIconClose
	 * 功 能 ： 设置变量 iconClose 的值
	 */
	public void setIconClose(String iconClose) {
		this.iconClose = iconClose;
	}

	/**
	 * 方法名 ： getIconOpen
	 * 功 能 ： 返回变量 iconOpen 的值
	 * @return: String
	 */
	public String getIconOpen() {
		return iconOpen;
	}

	/**
	 * 方法名 ： setIconOpen
	 * 功 能 ： 设置变量 iconOpen 的值
	 */
	public void setIconOpen(String iconOpen) {
		this.iconOpen = iconOpen;
	}

	/**
	 * 方法名 ： getIconSkin
	 * 功 能 ： 返回变量 iconSkin 的值
	 * @return: String
	 */
	public String getIconSkin() {
		return iconSkin;
	}

	/**
	 * 方法名 ： setIconSkin
	 * 功 能 ： 设置变量 iconSkin 的值
	 */
	public void setIconSkin(String iconSkin) {
		this.iconSkin = iconSkin;
	}

	/**
	 * 方法名 ： getIsHidden
	 * 功 能 ： 返回变量 isHidden 的值
	 * @return: String
	 */
	public String getIsHidden() {
		return isHidden;
	}

	/**
	 * 方法名 ： setIsHidden
	 * 功 能 ： 设置变量 isHidden 的值
	 */
	public void setIsHidden(String isHidden) {
		this.isHidden = isHidden;
	}

	/**
	 * 方法名 ： getIsParent
	 * 功 能 ： 返回变量 isParent 的值
	 * @return: String
	 */
	public String getIsParent() {
		return isParent;
	}

	/**
	 * 方法名 ： setIsParent
	 * 功 能 ： 设置变量 isParent 的值
	 */
	public void setIsParent(String isParent) {
		this.isParent = isParent;
	}

	/**
	 * 方法名 ： getNocheck
	 * 功 能 ： 返回变量 nocheck 的值
	 * @return: String
	 */
	public String getNocheck() {
		return nocheck;
	}

	/**
	 * 方法名 ： setNocheck
	 * 功 能 ： 设置变量 nocheck 的值
	 */
	public void setNocheck(String nocheck) {
		this.nocheck = nocheck;
	}

	/**
	 * 方法名 ： getOpen
	 * 功 能 ： 返回变量 open 的值
	 * @return: String
	 */
	public String getOpen() {
		return open;
	}

	/**
	 * 方法名 ： setOpen
	 * 功 能 ： 设置变量 open 的值
	 */
	public void setOpen(String open) {
		this.open = open;
	}

	/**
	 * 方法名 ： getTarget
	 * 功 能 ： 返回变量 target 的值
	 * @return: String
	 */
	public String getTarget() {
		return target;
	}

	/**
	 * 方法名 ： setTarget
	 * 功 能 ： 设置变量 target 的值
	 */
	public void setTarget(String target) {
		this.target = target;
	}

	/**
	 * 方法名 ： getUrl
	 * 功 能 ： 返回变量 url 的值
	 * @return: String
	 */
	public String getUrl() {
		return url;
	}

	/**
	 * 方法名 ： setUrl
	 * 功 能 ： 设置变量 url 的值
	 */
	public void setUrl(String url) {
		this.url = url;
	}
	
	/**
	 * 方法名 ： getHomePage
	 * 功 能 ： 返回变量 homePage 的值
	 * @return: Boolean
	 */
	public Boolean getHomePage() {
		return homePage;
	}
	
	/**
	 * 方法名 ： setHomePage
	 * 功 能 ： 设置变量 homePage 的值
	 */
	public void setHomePage(Boolean homePage) {
		this.homePage = homePage;
	}
	
}
