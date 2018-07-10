package tk.ainiyue.danyuan.application.common.utils.hanlp;

import java.util.ArrayList;
import java.util.List;

import com.hankcs.hanlp.HanLP;
import com.hankcs.hanlp.seg.Segment;
import com.hankcs.hanlp.seg.common.Term;

/**
 * 文件名 ： ChineseNameRecognition.java
 * 包 名 ： org.danyuan.utils.hanlp
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年4月4日 下午2:14:02
 * 版 本 ： V1.0
 */
public class ChineseNameRecognition {
	
	/**
	 * 方法名： ChineseName
	 * 功 能： 取得中文名
	 * 参 数： @param str
	 * 参 数： @return
	 * 返 回： List<String>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	public static List<String> ChineseName(String[] str) {
		List<String> list = new ArrayList<String>();
		Segment segment = HanLP.newSegment().enableNameRecognize(true);
		for (String sentence : str) {
			List<Term> termList = segment.seg(sentence);
			for (Term term : termList) {
				if (term.toString().contains("nr")) {
					list.add(term.word);
				}
			}
		}
		return list;
	}
}
