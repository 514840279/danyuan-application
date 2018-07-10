package tk.ainiyue.danyuan.application.common.utils.excel;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.fasterxml.jackson.databind.exc.InvalidFormatException;

/**
 * 文件名 ： ExcelHandle.java
 * 包 名 ： org.danyuan.utils.excel
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月7日 下午11:36:17
 * 版 本 ： V1.0
 */
public class ExcelHandle {
	
	public List<String[]> readXLS(String path, int num) throws FileNotFoundException, IOException {
		File file = new File(path);
		POIFSFileSystem poifsFileSystem = new POIFSFileSystem(new FileInputStream(file));
		HSSFWorkbook hssfWorkbook = new HSSFWorkbook(poifsFileSystem);
		HSSFSheet hssfSheet = hssfWorkbook.getSheetAt(num);
		
		int rowstart = hssfSheet.getFirstRowNum();
		int rowEnd = hssfSheet.getLastRowNum();
		for (int i = rowstart; i <= rowEnd; i++) {
			HSSFRow row = hssfSheet.getRow(i);
			if (null == row)
				continue;
			int cellStart = row.getFirstCellNum();
			int cellEnd = row.getLastCellNum();
			
			for (int k = cellStart; k <= cellEnd; k++) {
				HSSFCell cell = row.getCell(k);
				if (null == cell)
					continue;
				System.out.print("" + k + "  ");
				// System.out.print("type:"+cell.getCellType());
				
				switch (cell.getCellType()) {
					case HSSFCell.CELL_TYPE_NUMERIC: // 数字
						System.out.print(cell.getNumericCellValue() + "   ");
						break;
					case HSSFCell.CELL_TYPE_STRING: // 字符串
						System.out.print(cell.getStringCellValue() + "   ");
						break;
					case HSSFCell.CELL_TYPE_BOOLEAN: // Boolean
						System.out.println(cell.getBooleanCellValue() + "   ");
						break;
					case HSSFCell.CELL_TYPE_FORMULA: // 公式
						System.out.print(cell.getCellFormula() + "   ");
						break;
					case HSSFCell.CELL_TYPE_BLANK: // 空值
						System.out.println(" ");
						break;
					case HSSFCell.CELL_TYPE_ERROR: // 故障
						System.out.println(" ");
						break;
					default:
						System.out.print("未知类型   ");
						break;
				}
				
			}
			System.out.print("\n");
		}
		return null;
		
	}
	
	public void readXLSX(String path, int num) throws InvalidFormatException, IOException {
		File file = new File(path);
		XSSFWorkbook xssfWorkbook = new XSSFWorkbook(new FileInputStream(file));
		XSSFSheet xssfSheet = xssfWorkbook.getSheetAt(num);
		
		int rowstart = xssfSheet.getFirstRowNum();
		int rowEnd = xssfSheet.getLastRowNum();
		for (int i = rowstart; i <= rowEnd; i++) {
			XSSFRow row = xssfSheet.getRow(i);
			if (null == row)
				continue;
			int cellStart = row.getFirstCellNum();
			int cellEnd = row.getLastCellNum();
			
			for (int k = cellStart; k <= cellEnd; k++) {
				XSSFCell cell = row.getCell(k);
				if (null == cell)
					continue;
				
				switch (cell.getCellType()) {
					case HSSFCell.CELL_TYPE_NUMERIC: // 数字
						System.out.print(cell.getNumericCellValue() + "   ");
						break;
					case HSSFCell.CELL_TYPE_STRING: // 字符串
						System.out.print(cell.getStringCellValue() + "   ");
						break;
					case HSSFCell.CELL_TYPE_BOOLEAN: // Boolean
						System.out.println(cell.getBooleanCellValue() + "   ");
						break;
					case HSSFCell.CELL_TYPE_FORMULA: // 公式
						System.out.print(cell.getCellFormula() + "   ");
						break;
					case HSSFCell.CELL_TYPE_BLANK: // 空值
						System.out.println(" ");
						break;
					case HSSFCell.CELL_TYPE_ERROR: // 故障
						System.out.println(" ");
						break;
					default:
						System.out.print("未知类型   ");
						break;
				}
				
			}
			System.out.print("\n");
		}
		
	}
}
