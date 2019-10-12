package org.danyuan.application.common.utils.hanlp;

import java.util.ArrayList;
import java.util.List;

import com.hankcs.hanlp.HanLP;
import com.hankcs.hanlp.seg.Segment;
import com.hankcs.hanlp.seg.common.Term;

/**
 * 文件名 ： JapaneseNameRecognition.java
 * 包 名 ： org.danyuan.utils.hanlp
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年4月4日 下午2:47:40
 * 版 本 ： V1.0
 */
public class JapaneseNameRecognition {
	
	/**
	 * 方法名： TranslatedName
	 * 功 能： 取得日本人名
	 * 参 数： @param str
	 * 参 数： @return
	 * 返 回： List<String>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	public static List<String> JapaneseName(String[] str) {
		List<String> list = new ArrayList<String>();
		Segment segment = HanLP.newSegment().enableJapaneseNameRecognize(true);
		for (String sentence : str) {
			List<Term> termList = segment.seg(sentence);
			for (Term term : termList) {
				if (term.toString().contains("nrj")) {
					list.add(term.word);
				}
			}
		}
		return list;
	}
}
