package org.danyuan.application.common.utils.string;

import java.util.Map;

import org.json.JSONObject;
import org.json.XML;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * 文件名 ： JSONUtils.java
 * 包 名 ： org.danyuan.application.common.utils.string
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年12月10日 下午3:28:12
 * 版 本 ： V1.0
 */
public class JSONUtils<T> {
	
	/**
	 * 将json转化为Map
	 *
	 * @param jsonStr
	 * @param obj
	 * @return
	 */
	public static final Map<String, Object> stringToMap(String jsonString) {
		Map<String, Object> mapTypes = JSON.parseObject(jsonString);
		return mapTypes;
	}
	
	/**
	 * 将json转化为实体obj
	 *
	 * @param jsonStr
	 * @param obj
	 * @return
	 */
	public static <T> Object stringToObj(String jsonStr, Class<T> obj) {
		T t = null;
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			t = objectMapper.readValue(jsonStr, obj);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return t;
	}

	/**
	 * 将json转化为实体obj
	 *
	 * @param jsonStr
	 * @param obj
	 * @return
	 */
	public static <T> void stringToObj(String jsonStr, T t, Class<T> obj) {
		try {
			ObjectMapper objectMapper = new ObjectMapper();
			t = objectMapper.readValue(jsonStr, obj);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * json to xml
	 *
	 * @param json
	 * @return
	 */
	public static String json2xml(String json) {
		JSONObject jsonObj = new JSONObject(json);
		return "<xml>" + XML.toString(jsonObj) + "</xml>";
	}
	
	/**
	 * xml to json
	 * 
	 * @param xml
	 * @return
	 */
	public static String xml2json(String xml) {
		JSONObject xmlJSONObj = XML.toJSONObject(xml.replace("<xml>", "").replace("</xml>", ""));
		return xmlJSONObj.toString();
	}
}
