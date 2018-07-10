package tk.ainiyue.danyuan.application.common.utils.excel;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFDataFormat;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.fasterxml.jackson.databind.exc.InvalidFormatException;

/**
 * 文件名 ： ImportExeclMain.java
 * 包 名 ： org.danyuan.utils.excel
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2016年7月12日 下午12:12:29
 * 版 本 ： V1.0
 */
public class ImportExeclMain {
	// 错误信息
	private String			errorInfo;
	// 错误信息
	private static int		readSheet		= 0;
	private static boolean	readSheetNum	= false;
	
	public static void main(String[] args) throws Exception {
		// readSheetNum = true 开启自定义读取sheet页 默认false(读取全部sheet页)
		readSheetNum = false;
		// readSheet默认为0(读取第一页) 值为2时读取第二页
		// 当readSheetNum = false时 readSheet无作用
		readSheet = 1;
		ImportExeclMain poi = new ImportExeclMain();
		// 2003
		// List<List<String>> list =
		// poi.readExcel("D:\\excel\\EXCEL2003测试.xls");
		// 2007
		List<List<List<String>>> list = poi.readExcel("G:\\车主\\安徽\\安庆市\\安庆--500.xls");
		
		if (list != null) {
			for (List<List<String>> list2 : list) {
				
				for (int i = 0; i < list2.size(); i++) {
					
					System.out.print("第" + (i) + "行");
					
					List<String> listCell = list2.get(i);
					
					for (String s : listCell) {
						System.out.print(" " + s);
					}
					System.out.println();
					
				}
			}
		}
		
	}
	
	// 验证excel文件
	public boolean validateExcel(String filePath) {
		// 检查文件名是否为空或者是否是Excel格式的文件
		
		if (filePath == null || !(is2003Excel(filePath) || is2007Excel(filePath))) {
			
			errorInfo = "文件名不是excel格式";
			
			return false;
		}
		// 检查文件是否存在
		
		File file = new File(filePath);
		
		if (file == null || !file.exists()) {
			
			errorInfo = "excel文件不存在";
			
			return false;
			
		}
		
		return true;
		
	}
	
	// 根据文件名读取excel文件
	
	public List<List<List<String>>> readExcel(String filePath) {
		
		List<List<List<String>>> dataList = new ArrayList<List<List<String>>>();
		
		InputStream is = null;
		
		try {
			
			// 验证文件是否合法
			
			if (!validateExcel(filePath)) {
				
				System.out.println(errorInfo);
				
				return null;
				
			}
			
			// 判断文件的类型，是2003还是2007
			
			boolean is2003Excel = true;
			
			if (is2007Excel(filePath)) {
				
				is2003Excel = false;
			}
			
			// 调用本类提供的根据流读取的方法
			
			File file = new File(filePath);
			
			is = new FileInputStream(file);
			
			dataList = readFile(is, is2003Excel);
			
			is.close();
			
		} catch (Exception ex) {
			
			ex.printStackTrace();
			
		} finally {
			
			if (is != null) {
				
				try {
					
					is.close();
					
				} catch (IOException e) {
					
					is = null;
					
					e.printStackTrace();
					
				}
				
			}
			
		}
		
		// 返回最后读取的结果
		
		return dataList;
		
	}
	
	// 根据流读取Excel文件
	
	public List<List<List<String>>> readFile(InputStream inputStream, boolean is2003Excel) throws InvalidFormatException {
		
		List<List<List<String>>> dataLists = new ArrayList<List<List<String>>>();
		
		try {
			
			// 根据版本选择创建Workbook的方式
			
			Workbook wb = null;
			
			if (is2003Excel) {
				wb = new HSSFWorkbook(inputStream);
			} else {
				// wb = WorkbookFactory.create(inputStream);
				// Sheet childSheet = wbs.getSheetAt(0);
				wb = new XSSFWorkbook(inputStream);
			}
			// sheet循环
			int sheetNum = sheetCirculation(wb);
			// List<List<String>> dataList = new ArrayList<List<String>>();
			if (readSheetNum) {
				dataLists.add(read(wb, readSheet));
			} else {
				for (int i = 0; i < sheetNum; i++) {
					// Sheet sheet = wb.getSheetAt(i);
					// 显示sheet名称
					// System.out.println(sheet.getSheetName());
					dataLists.add(read(wb, i));
				}
			}
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
		
		return dataLists;
		
	}
	
	// 读取数据
	
	private List<List<String>> read(Workbook wb, int sheets) {
		// 返回值
		List<List<String>> dataList = new ArrayList<List<String>>();
		// 总行数
		int totalRows = 0;
		// 总列数
		int totalCells = 0;
		
		// 第一个shell页
		Sheet sheet = wb.getSheetAt(sheets);
		
		// Excel的行数
		
		totalRows = sheet.getPhysicalNumberOfRows();
		
		// Excel的列数
		
		if (totalRows >= 1 && sheet.getRow(0) != null) {
			
			totalCells = sheet.getRow(0).getPhysicalNumberOfCells();
			
		}
		// 遍历Excel的行
		for (int r = 0; r < totalRows; r++) {
			
			Row row = sheet.getRow(r);
			
			if (row == null) {
				
				continue;
				
			}
			
			List<String> rowLst = new ArrayList<String>();
			
			// 遍历Excel的列
			for (int c = 0; c < totalCells; c++) {
				
				Cell cell = row.getCell(c);
				
				String cellValue = "";
				
				if (null != cell) {
					//
					// cellValue = cell.getStringCellValue();
					// 以下是判断数据的类型
					switch (cell.getCellType()) {
						case HSSFCell.CELL_TYPE_NUMERIC: // 数字
							if (DateUtil.isCellDateFormatted(cell)) { // 日期
								DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
								if (cell.getCellStyle().getDataFormat() == HSSFDataFormat.getBuiltinFormat("h:mm")) {
									sdf = new SimpleDateFormat("HH:mm");
								} else if (cell.getCellStyle().getDataFormat() == HSSFDataFormat.getBuiltinFormat("yyy-MM-dd")) {// 日期
									sdf = new SimpleDateFormat("yyyy-MM-dd");
								} else if (cell.getCellStyle().getDataFormat() == HSSFDataFormat.getBuiltinFormat("yyyy-MM-dd h:mm:ss")) {
									sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
								}
								
								Date theDate = cell.getDateCellValue();
								cellValue = sdf.format(theDate);
							} else {
								cell.setCellType(HSSFCell.CELL_TYPE_STRING);
								cellValue = cell.getStringCellValue();
							}
							break;
						
						case HSSFCell.CELL_TYPE_STRING: // 字符串
							cellValue = cell.getStringCellValue();
							break;
						
						case HSSFCell.CELL_TYPE_BOOLEAN: // Boolean
							cellValue = cell.getBooleanCellValue() ? "TRUE" : "FALSE";
							break;
						
						case HSSFCell.CELL_TYPE_FORMULA: // 公式
							cellValue = cell.getCellFormula() + "";
							break;
						
						case HSSFCell.CELL_TYPE_BLANK: // 空值
							cellValue = "";
							break;
						
						case HSSFCell.CELL_TYPE_ERROR: // 故障
							cellValue = "非法字符";
							break;
						
						default:
							cellValue = "未知类型";
							break;
					}
				}
				
				rowLst.add(cellValue);
				
			}
			// 保存第r行的第c列
			
			dataList.add(rowLst);
			
		}
		return dataList;
		
	}
	
	private int sheetCirculation(Workbook wb) {
		int sheetCount = -1;
		sheetCount = wb.getNumberOfSheets();
		return sheetCount;
	}
	
	// 是否是2003的excel，返回true是2003
	
	public static boolean is2003Excel(String filePath) {
		
		return filePath.matches("^.+\\.(?i)(xls)$");
		
	}
	
	// 是否是2007的excel，返回true是2007
	public static boolean is2007Excel(String filePath) {
		
		return filePath.matches("^.+\\.(?i)(xlsx)$");
		
	}
	
	// 构造方法
	public ImportExeclMain() {
	}
	
	// 得到错误信息
	public String getErrorInfo() {
		return errorInfo;
	}
}
