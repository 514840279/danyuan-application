package org.danyuan.application.dbms.code.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
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
import org.springframework.core.io.ClassPathResource;

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
	@SuppressWarnings({ "resource", "deprecation" })
	public static void generate(SysDbmsGenerateCodeInfo sysDbmsGenerateCodeInfo, SysDbmsTabsInfo tabsInfo, List<SysDbmsTabsColsInfo> colsInfos, String username, String pathString) throws IOException {
		File file = new File(pathString);
		HSSFWorkbook wb = null;
		if (!file.exists()) {
			// 读取模板文件路径
//			File modelfile = ResourceUtils.getFile(ResourceUtils.CLASSPATH_URL_PREFIX + "static/model/datamodel.xls");
			ClassPathResource classPathResource = new ClassPathResource("static/model/datamodel.xls");
			InputStream modelfins = classPathResource.getInputStream();
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

		// 日期
		newSheet.getRow(1).getCell(42).setCellValue(new Date());

		// 作成者
		newSheet.getRow(1).getCell(52).setCellValue(sysDbmsGenerateCodeInfo.getCreateUser());
		// 数据库选择
		newSheet.getRow(7).getCell(0).setCellValue(tabsInfo.getDbType());
		// 表头
		// 表名称
		newSheet.getRow(9).getCell(11).setCellValue(tabsInfo.getTabsName());
		// 表含义
		newSheet.getRow(10).getCell(11).setCellValue(tabsInfo.getTabsDesc() == null ? "" : tabsInfo.getTabsDesc());
		// 表描述
		newSheet.getRow(10).getCell(30).setCellValue(tabsInfo.getDiscription() == null ? "" : tabsInfo.getDiscription());
		// 表格
		int index = 0;
		for (SysDbmsTabsColsInfo cols : colsInfos) {
			String colsNameString = cols.getColsName();
			if ("uuid".equals(colsNameString) || "delete_flag".equals(colsNameString) || "discription".equals(colsNameString) || "create_time".equals(colsNameString) || "create_user".equals(colsNameString) || "update_time".equals(colsNameString) || "update_user".equals(colsNameString)) {
				continue;
			} else {
				index++;
				// セル幅のコピー
				Row rowFrom = newSheet.getRow(13);
				Row rowTo = newSheet.createRow(18 + index);
				rowTo.setHeight(rowFrom.getHeight());
				// 合并单元格
				newSheet.addMergedRegion(CellRangeAddress.valueOf("A" + (18 + 1 + index) + ":B" + (18 + 1 + index)));
				newSheet.addMergedRegion(CellRangeAddress.valueOf("C" + (18 + 1 + index) + ":K" + (18 + 1 + index)));
				newSheet.addMergedRegion(CellRangeAddress.valueOf("L" + (18 + 1 + index) + ":Z" + (18 + 1 + index)));
				newSheet.addMergedRegion(CellRangeAddress.valueOf("AA" + (18 + 1 + index) + ":AD" + (18 + 1 + index)));
				newSheet.addMergedRegion(CellRangeAddress.valueOf("AE" + (18 + 1 + index) + ":AI" + (18 + 1 + index)));
				newSheet.addMergedRegion(CellRangeAddress.valueOf("AJ" + (18 + 1 + index) + ":AL" + (18 + 1 + index)));
				newSheet.addMergedRegion(CellRangeAddress.valueOf("AM" + (18 + 1 + index) + ":AP" + (18 + 1 + index)));
				newSheet.addMergedRegion(CellRangeAddress.valueOf("AQ" + (18 + 1 + index) + ":AU" + (18 + 1 + index)));
				newSheet.addMergedRegion(CellRangeAddress.valueOf("AV" + (18 + 1 + index) + ":BJ" + (18 + 1 + index)));
				
				Cell cellFrom = null;
				Cell cellTo = null;
				newSheet.setDefaultColumnStyle(18 + index, newSheet.getColumnStyle(13));
				newSheet.setColumnWidth(18 + index, newSheet.getColumnWidth(13));
				for (int intCol = 0; intCol < rowFrom.getLastCellNum(); intCol++) {
					// セル幅のコピー
					newSheet.setDefaultColumnStyle(intCol, newSheet.getColumnStyle(intCol));
					newSheet.setColumnWidth(intCol, newSheet.getColumnWidth(intCol));
					cellFrom = rowFrom.getCell(intCol);
					cellTo = rowTo.createCell(intCol);
					
					// セルスタイルとタイプのコピー
					cellTo.setCellStyle(cellFrom.getCellStyle());

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
				
				// 字段名
				newSheet.getRow(18 + index).getCell(2).setCellValue(cols.getColsName());
				// 字段含义
				newSheet.getRow(18 + index).getCell(11).setCellValue(cols.getColsDesc() == null ? "" : cols.getColsDesc());
				// 是否主键
				newSheet.getRow(18 + index).getCell(26).setCellValue("");
				// 数据类型
				newSheet.getRow(18 + index).getCell(30).setCellValue(cols.getColsType() == null ? "" : cols.getColsType().toString().toUpperCase());
				// 数据长度
				newSheet.getRow(18 + index).getCell(35).setCellValue(cols.getColsLength() == null ? "" : cols.getColsLength().toString());
				// 不为空
				newSheet.getRow(18 + index).getCell(38).setCellValue("");
				// default value
				newSheet.getRow(18 + index).getCell(42).setCellValue("");
				// 描述信息
				newSheet.getRow(18 + index).getCell(47).setCellValue(cols.getDiscription() == null ? "" : cols.getDiscription());
			}

		}

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
	@SuppressWarnings("deprecation")
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
		for (int intRow = sheetFrom.getFirstRowNum(); intRow <= sheetFrom.getLastRowNum(); intRow++) {
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
		// Excelのズーム設定
		sheetTo.setZoom(85, 100);

		// シートを戻る。
		return sheetTo;

	}

}
