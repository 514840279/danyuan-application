package org.danyuan.application.dbms.code.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.util.CellRangeAddress;
import org.danyuan.application.dbms.code.po.SysDbmsGenerateCodeInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsColsInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsInfo;
import org.springframework.util.ResourceUtils;

/**
 * @文件名 GenerateDoc.java
 * @包名 org.danyuan.application.dbms.code.service
 * @描述 数据文档生成
 * @时间 2019年1月17日 下午2:27:52
 * @author Administrator
 * @版本 V1.0
 */
public class GenerateDoc {

	/**
	 * @throws IOException
	 * @throws FileNotFoundException
	 * @方法名 generate
	 * @功能 生成数据文档
	 * @参数 @param sysDbmsGenerateCodeInfo
	 * @参数 @param tabsInfo
	 * @参数 @param colsInfos
	 * @参数 @param username
	 * @参数 @param pathString
	 * @返回 void
	 * @author Administrator
	 * @throws
	 */
	public static void generate(SysDbmsGenerateCodeInfo sysDbmsGenerateCodeInfo, SysDbmsTabsInfo tabsInfo, List<SysDbmsTabsColsInfo> colsInfos, String username, String pathString) throws IOException {
		File file = new File(pathString);
		HSSFWorkbook wb = null;
		if (!file.exists()) {
			// 读取模板文件路径
			File modelfile = ResourceUtils.getFile(ResourceUtils.CLASSPATH_URL_PREFIX + "static/model/datamodel.xls");
			FileInputStream modelfins = new FileInputStream(modelfile);
			POIFSFileSystem modelfs = new POIFSFileSystem(modelfins);
			// 读取Excel模板
			wb = new HSSFWorkbook(modelfs);
		} else {
			//
			FileInputStream fins = new FileInputStream(file);
			POIFSFileSystem fs = new POIFSFileSystem(fins);
			wb = new HSSFWorkbook(fs);

		}
		HSSFSheet demoSheet = wb.getSheet("demo");
		HSSFSheet newSheet = wb.createSheet(tabsInfo.getTabsDesc());

		newSheet = copySheet(demoSheet, newSheet);
		
		// 表头
		newSheet.getRow(1).getCell(1).setCellValue("123");
		// 表格

		// 设置打印区域
//		wb.setPrintArea(wb.getSheetIndex(tabsInfo.getTabsDesc()), "$A$1:$BO$" + colsInfos.size() + 13);
		FileOutputStream fout = new FileOutputStream(pathString);
		wb.write(fout);
		fout.close();
	}

	/**
	 * @方法名 copySheet
	 * @功能 复制sheet
	 * @参数 @param sheetFrom
	 * @参数 @param sheetTo
	 * @参数 @return
	 * @返回 HSSFSheet
	 * @author Administrator
	 * @throws
	 */
	private static HSSFSheet copySheet(HSSFSheet sheetFrom, HSSFSheet sheetTo) {

		// 初期化
		CellRangeAddress region = null;
		Row rowFrom = null;
		Row rowTo = null;
		Cell cellFrom = null;
		Cell cellTo = null;
		// セル結合のコピー
		for (int i = 0; i < sheetFrom.getNumMergedRegions(); i++) {
			region = sheetFrom.getMergedRegion(i);

			if ((region.getFirstColumn() >= sheetFrom.getFirstRowNum()) && (region.getLastRow() <= sheetFrom.getLastRowNum())) {
				sheetTo.addMergedRegion(region);
			}
		}

		// セルのコピー
		for (int intRow = sheetFrom.getFirstRowNum(); intRow < sheetFrom.getLastRowNum(); intRow++) {
			rowFrom = sheetFrom.getRow(intRow);
			rowTo = sheetTo.createRow(intRow);
			if (null == rowFrom) {
				continue;
			}
			rowTo.setHeight(rowFrom.getHeight());
			for (int intCol = 0; intCol < rowFrom.getLastCellNum(); intCol++) {
				// セル幅のコピー
				sheetTo.setDefaultColumnStyle(intCol, sheetFrom.getColumnStyle(intCol));
				sheetTo.setColumnWidth(intCol, sheetFrom.getColumnWidth(intCol));
				cellFrom = rowFrom.getCell(intCol);
				cellTo = rowTo.createCell(intCol);
				if (null == cellFrom) {
					continue;
				}
				// セルスタイルとタイプのコピー
				cellTo.setCellStyle(cellFrom.getCellStyle());
				cellTo.setCellType(cellFrom.getCellType());
				// タイトル内容のコピー
				// 不同数据类型处理
				int cellFromType = cellFrom.getCellType();
				cellTo.setCellType(cellFromType);
				if (cellFromType == HSSFCell.CELL_TYPE_NUMERIC) {
					if (HSSFDateUtil.isCellDateFormatted(cellFrom)) {
						cellTo.setCellValue(cellFrom.getDateCellValue());
					} else {
						cellTo.setCellValue(cellFrom.getNumericCellValue());
					}
				} else if (cellFromType == HSSFCell.CELL_TYPE_STRING) {
					cellTo.setCellValue(cellFrom.getRichStringCellValue());
				} else if (cellFromType == HSSFCell.CELL_TYPE_BLANK) {
					// nothing21
				} else if (cellFromType == HSSFCell.CELL_TYPE_BOOLEAN) {
					cellTo.setCellValue(cellFrom.getBooleanCellValue());
				} else if (cellFromType == HSSFCell.CELL_TYPE_ERROR) {
					cellTo.setCellErrorValue(cellFrom.getErrorCellValue());
				} else if (cellFromType == HSSFCell.CELL_TYPE_FORMULA) {
					cellTo.setCellFormula(cellFrom.getCellFormula());
				} else { // nothing29
				}
			}
		}

		// 枠線の設定
		sheetTo.setDisplayGridlines(false);
//		sheetTo.setDisplayGuts(true);
//		sheetTo.setDisplayRowColHeadings(true);
		// 剪切
		// sheetTo.shiftRows(13, 15, 31, false, false, false);
		//
		sheetTo.setRepeatingRows(CellRangeAddress.valueOf("13:15"));
		// Excelのズーム設定
		sheetTo.setZoom(80, 100);

		// シートを戻る。
		return sheetTo;

	}

}
