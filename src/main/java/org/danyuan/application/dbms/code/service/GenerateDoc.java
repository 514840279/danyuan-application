package org.danyuan.application.dbms.code.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

import org.apache.poi.hssf.usermodel.DVConstraint;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFDataValidation;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.util.CellAddress;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.ss.util.CellRangeAddressList;
import org.apache.poi.xssf.usermodel.XSSFDataValidation;
import org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint;
import org.apache.poi.xssf.usermodel.XSSFDataValidationHelper;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.danyuan.application.dbms.code.po.SysDbmsGenerateCodeInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsColsInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsInfo;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSheetView;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STSheetViewType;
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
	
	// 构造constraint对象
	static String	dataList	= "●,○";
	static String	dataList2	= "INT,FLOAT,DOUBLE,DECIMAL,DATE,TIME,TIMESTAMP,DATETIME,CHAR,VARCHAR,TEXT";
	
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
	public static void generateXls(SysDbmsGenerateCodeInfo sysDbmsGenerateCodeInfo, SysDbmsTabsInfo tabsInfo, List<SysDbmsTabsColsInfo> colsInfos, String username, String pathString) throws IOException {
		File file = new File(pathString);
		HSSFWorkbook wb = null;
		if (!file.exists()) {
			// 读取模板文件路径
			// File modelfile = ResourceUtils.getFile(ResourceUtils.CLASSPATH_URL_PREFIX + "static/model/datamodel.xlsx");
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
		int index2 = 0;
		for (SysDbmsTabsColsInfo cols : colsInfos) {
			
			String colsNameString = cols.getColsName();
			if ("uuid".equals(colsNameString) || "delete_flag".equals(colsNameString) || "discription".equals(colsNameString) || "create_time".equals(colsNameString) || "create_user".equals(colsNameString) || "update_time".equals(colsNameString) || "update_user".equals(colsNameString)) {
				index2++;
				setDataValidationList((11 + index2), (11 + index2), 26, 29, dataList, newSheet);
				setDataValidationList((11 + index2), (11 + index2), 30, 34, dataList2, newSheet);
				setDataValidationList((11 + index2), (11 + index2), 38, 41, dataList, newSheet);
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
				setDataValidationList((18 + index), (18 + index), 27 - 1, 30 - 1, dataList, newSheet);
				newSheet.addMergedRegion(CellRangeAddress.valueOf("AJ" + (18 + 1 + index) + ":AL" + (18 + 1 + index)));
				setDataValidationList((18 + index), (18 + index), 31 - 1, 35 - 1, dataList2, newSheet);
				newSheet.addMergedRegion(CellRangeAddress.valueOf("AM" + (18 + 1 + index) + ":AP" + (18 + 1 + index)));
				newSheet.addMergedRegion(CellRangeAddress.valueOf("AQ" + (18 + 1 + index) + ":AU" + (18 + 1 + index)));
				setDataValidationList((18 + index), (18 + index), 39 - 1, 42 - 1, dataList, newSheet);
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
				newSheet.getRow(18 + index).getCell(35).setCellValue(cols.getColsLength() == null ? "255" : cols.getColsLength().toString());
				// 不为空
				newSheet.getRow(18 + index).getCell(38).setCellValue("");
				// default value
				newSheet.getRow(18 + index).getCell(42).setCellValue("");
				// 描述信息
				newSheet.getRow(18 + index).getCell(47).setCellValue(cols.getDiscription() == null ? "" : cols.getDiscription());
			}
			
		}
		
		newSheet.setZoom(85);
		newSheet.setActiveCell(new CellAddress("A1"));
		
		wb.setActiveSheet(0);
		
		// 设置打印区域
		// wb.setPrintArea(wb.getSheetIndex(tabsInfo.getTabsDesc()), "$A$1:$BO$" + (colsInfos.size() + 14));
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
		// sheetTo.setDisplayGuts(true);
		// sheetTo.setDisplayRowColHeadings(true);
		// 剪切
		// sheetTo.shiftRows(13, 15, 31, false, false, false);
		// Excelのズーム設定
		sheetTo.setZoom(85, 100);
		
		// シートを戻る。
		return sheetTo;
		
	}
	
	private static void setDataValidationList(int j, int k, int l, int m, String data, HSSFSheet sheet) {
		// 设置下拉列表的内容
		String[] textlist = data.split(",");
		// 加载下拉列表内容
		DVConstraint constraint = DVConstraint.createExplicitListConstraint(textlist);
		// 设置数据有效性加载在哪个单元格上。
		
		// 四个参数分别是：起始行、终止行、起始列、终止列
		CellRangeAddressList regions = new CellRangeAddressList(j, k, l, m);
		/*   CellRangeAddressList regions = new CellRangeAddressList(
		      6,5, 6,5);*/
		// 数据有效性对象
		HSSFDataValidation data_validation_list = new HSSFDataValidation(regions, constraint);
		data_validation_list.setSuppressDropDownArrow(false);
		sheet.addValidationData(data_validation_list);
	}
	
	private static void setDataValidationList(int j, int k, int l, int m, String data, XSSFSheet sheet) {
		// 设置下拉列表的内容
		String[] textlist = data.split(",");
		// 加载下拉列表内容
		// 设置数据有效性加载在哪个单元格上。
		XSSFDataValidationHelper dvHelper = new XSSFDataValidationHelper(sheet);
		XSSFDataValidationConstraint dvConstraint = (XSSFDataValidationConstraint) dvHelper.createExplicitListConstraint(textlist);
		// 四个参数分别是：起始行、终止行、起始列、终止列
		CellRangeAddressList regions = new CellRangeAddressList(j, k, l, m);
		/*   CellRangeAddressList regions = new CellRangeAddressList(
		      6,5, 6,5);*/
		// 数据有效性对象
		XSSFDataValidation data_validation_list = (XSSFDataValidation) dvHelper.createValidation(dvConstraint, regions);
		// data_validation_list.setSuppressDropDownArrow(false);
		
		sheet.addValidationData(data_validation_list);
	}
	
	@SuppressWarnings({ "resource", "deprecation" })
	public static void generateXlsx(SysDbmsGenerateCodeInfo sysDbmsGenerateCodeInfo, SysDbmsTabsInfo tabsInfo, List<SysDbmsTabsColsInfo> colsInfos, String username, String pathString) throws IOException {
		File file = new File(pathString);
		XSSFWorkbook wb = null;
		if (!file.exists()) {
			// 读取模板文件路径
			// File modelfile = ResourceUtils.getFile(ResourceUtils.CLASSPATH_URL_PREFIX + "static/model/datamodel.xlsx");
			ClassPathResource classPathResource = new ClassPathResource("static/model/datamodel.xlsx");
			InputStream modelfins = classPathResource.getInputStream();
			// 读取Excel模板
			wb = new XSSFWorkbook(modelfins);
		} else {
			//
			FileInputStream fins = new FileInputStream(file);
			wb = new XSSFWorkbook(fins);
			
		}
		XSSFSheet demoSheet = wb.getSheet("demo");
		XSSFSheet newSheet = wb.createSheet(tabsInfo.getTabsDesc());
		
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
		int index2 = 0;
		for (SysDbmsTabsColsInfo cols : colsInfos) {
			
			String colsNameString = cols.getColsName();
			if ("uuid".equals(colsNameString) || "delete_flag".equals(colsNameString) || "discription".equals(colsNameString) || "create_time".equals(colsNameString) || "create_user".equals(colsNameString) || "update_time".equals(colsNameString) || "update_user".equals(colsNameString)) {
				index2++;
				setDataValidationList((11 + index2), (11 + index2), 26, 29, dataList, (XSSFSheet) newSheet);
				setDataValidationList((11 + index2), (11 + index2), 30, 34, dataList2, (XSSFSheet) newSheet);
				setDataValidationList((11 + index2), (11 + index2), 38, 41, dataList, (XSSFSheet) newSheet);
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
				setDataValidationList((18 + index), (18 + index), 27 - 1, 30 - 1, dataList, (XSSFSheet) newSheet);
				newSheet.addMergedRegion(CellRangeAddress.valueOf("AJ" + (18 + 1 + index) + ":AL" + (18 + 1 + index)));
				setDataValidationList((18 + index), (18 + index), 31 - 1, 35 - 1, dataList2, (XSSFSheet) newSheet);
				newSheet.addMergedRegion(CellRangeAddress.valueOf("AM" + (18 + 1 + index) + ":AP" + (18 + 1 + index)));
				newSheet.addMergedRegion(CellRangeAddress.valueOf("AQ" + (18 + 1 + index) + ":AU" + (18 + 1 + index)));
				setDataValidationList((18 + index), (18 + index), 39 - 1, 42 - 1, dataList, (XSSFSheet) newSheet);
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
				newSheet.getRow(18 + index).getCell(35).setCellValue(cols.getColsLength() == null ? "255" : cols.getColsLength().toString());
				// 不为空
				newSheet.getRow(18 + index).getCell(38).setCellValue("");
				// default value
				newSheet.getRow(18 + index).getCell(42).setCellValue("");
				// 描述信息
				newSheet.getRow(18 + index).getCell(47).setCellValue(cols.getDiscription() == null ? "" : cols.getDiscription());
			}
			
		}
		
		newSheet.setZoom(85);
		newSheet.setActiveCell(new CellAddress("A1"));
		
		CTSheetView view = ((XSSFSheet) newSheet).getCTWorksheet().getSheetViews().getSheetViewArray(0);
		view.setView(STSheetViewType.PAGE_BREAK_PREVIEW);
		wb.setActiveSheet(0);
		// 设置打印区域
		wb.setPrintArea(wb.getSheetIndex(tabsInfo.getTabsDesc()), "$A$1:$BL$" + (colsInfos.size() + 13));
		FileOutputStream fout = new FileOutputStream(pathString);
		wb.write(fout);
		fout.close();
		
	}
	
	@SuppressWarnings("deprecation")
	private static XSSFSheet copySheet(XSSFSheet sheetFrom, XSSFSheet sheetTo) {
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
		// sheetTo.setDisplayGuts(true);
		// sheetTo.setDisplayRowColHeadings(true);
		// 剪切
		// sheetTo.shiftRows(13, 15, 31, false, false, false);
		// Excelのズーム設定
		sheetTo.setZoom(85, 100);
		
		// シートを戻る。
		return sheetTo;
	}
	
}
