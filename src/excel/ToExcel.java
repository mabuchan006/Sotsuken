package excel;

import java.awt.FileDialog;
import java.awt.Frame;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import Tools.masterDBSwitch;
import Tools.masterDBSwitch.masterDBSwitchInfo;
import timetable.db.masterDBManage;
import timetable.db.masterInfo;

/**
 * Servlet implementation class ToExcel
 */
@WebServlet("/excelExport")
public class ToExcel extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String chooseTableName="";
	private List<masterInfo> dList = new ArrayList<masterInfo>();
	private List<masterInfo> period1List = new ArrayList<masterInfo>();
	private List<masterInfo> period2List = new ArrayList<masterInfo>();
	private List<masterInfo> period3List = new ArrayList<masterInfo>();
	private List<masterInfo> period4List = new ArrayList<masterInfo>();
	private List<masterInfo> flagList = new ArrayList<masterInfo>();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ToExcel() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String classID = request.getParameter("classID");

		try {
			if(classID != null){
				masterDBSwitch mdbSwitch = new masterDBSwitch();
				masterDBSwitchInfo value = mdbSwitch.switchDB(classID);
				chooseTableName = value.chooseTableName;
			} else {
				return;
			}
			masterDBManage mdb = new masterDBManage(chooseTableName);
			if(mdb.dateSelect() != null){
				dList = mdb.dateSelect();//日付
				period1List = mdb.selectTimeTable(1);//1限目
				period2List = mdb.selectTimeTable(2);//2限目
				period3List = mdb.selectTimeTable(3);//3限目
				period4List = mdb.selectTimeTable(4);//4限目
				flagList = mdb.excelExp();

			} else {
				return;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		XSSFWorkbook wb = new XSSFWorkbook();//creat workbook
		XSSFSheet sheet = wb.createSheet(classID);//sheet name
		sheet.createRow(0);//1行目

		//垂直中央揃え
		CellStyle style1 = wb.createCellStyle();
		//罫線
		style1.setBorderTop(CellStyle.BORDER_THIN);
		style1.setBorderBottom(CellStyle.BORDER_THIN);
		style1.setBorderLeft(CellStyle.BORDER_THIN);
		style1.setBorderRight(CellStyle.BORDER_THIN);
		//罫線の色
		style1.setTopBorderColor(IndexedColors.BLACK.getIndex());
		style1.setBottomBorderColor(IndexedColors.BLACK.getIndex());
		style1.setLeftBorderColor(IndexedColors.BLACK.getIndex());
		style1.setRightBorderColor(IndexedColors.BLACK.getIndex());
		//中央揃え
		style1.setAlignment(CellStyle.ALIGN_CENTER);
		style1.setVerticalAlignment(CellStyle.VERTICAL_CENTER);

		//罫線のみ
		CellStyle style2 = wb.createCellStyle();
		//罫線
		style2.setBorderTop(CellStyle.BORDER_THIN);
		style2.setBorderBottom(CellStyle.BORDER_THIN);
		style2.setBorderLeft(CellStyle.BORDER_THIN);
		style2.setBorderRight(CellStyle.BORDER_THIN);
		//罫線の色
		style2.setTopBorderColor(IndexedColors.BLACK.getIndex());
		style2.setBottomBorderColor(IndexedColors.BLACK.getIndex());
		style2.setLeftBorderColor(IndexedColors.BLACK.getIndex());
		style2.setRightBorderColor(IndexedColors.BLACK.getIndex());

		//substring() 5,7 month / 8 day
		ArrayList<String> dateArray = new ArrayList<String>();
		for(int i = 0; i < dList.size(); i++){
			dateArray.add(dList.get(i).getDate().toString());
		}


		String lastDay = "";
		String firstDay = "";
		int prevMonth = 0;
		//int nextMonth = 0;
		Boolean flag = new Boolean(false);

		for(int i = 0; i < dateArray.size(); i++){
			if(Integer.parseInt(dateArray.get(i).substring(8))
					> Integer.parseInt(dateArray.get(i + 1).substring(8))){
				lastDay = dateArray.get(i);
				firstDay = dateArray.get(i + 1);
				prevMonth = dateArray.indexOf(lastDay) + 2;
				//nextMonth = dateArray.indexOf(firstDay);
				flag = true;
				break;
			}
		}

		//month cell merge
		XSSFRow row = sheet.createRow(1);
		CellRangeAddress range = new CellRangeAddress(1, 1, 1, 29);
		if(flag){
			row.createCell(1).setCellValue(lastDay.substring(5,7) + "月");
			range = new CellRangeAddress(1, 1, 1, prevMonth);
			sheet.addMergedRegion(range);
			row.getCell(1).setCellStyle(style1);

			row.createCell(prevMonth + 1).setCellValue(firstDay.substring(5,7) + "月");
			range = new CellRangeAddress(1, 1, prevMonth + 1,29);
			sheet.addMergedRegion(range);
			row.getCell(prevMonth + 1).setCellStyle(style1);
		} else {
			sheet.addMergedRegion(range);
			row.getCell(1).setCellStyle(style1);
		}

		for(int i = 1; i < prevMonth; i++){
			row.createCell(i + 1).setCellStyle(style2);
		}
		for(int i = prevMonth + 2; i <= 29; i++){
			row.createCell(i).setCellStyle(style2);
		}

		//date set
		Calendar calendar;
		String week = "";
		row = sheet.createRow(2);
		row.createCell(1).setCellStyle(style1);
		for(int i = 0; i < dateArray.size(); i++){
			calendar = new GregorianCalendar(
					Integer.parseInt(dateArray.get(i).substring(0, 4)),
					Integer.parseInt(dateArray.get(i).substring(5, 7))-1,
					Integer.parseInt(dateArray.get(i).substring(8))
					);
			switch(calendar.get(Calendar.DAY_OF_WEEK)){
			case Calendar.SUNDAY:week = "(日)";break;
			case Calendar.MONDAY:week = "(月)";break;
			case Calendar.TUESDAY:week = "(火)";break;
			case Calendar.WEDNESDAY:week = "(水)";break;
			case Calendar.THURSDAY:week = "(木)";break;
			case Calendar.FRIDAY:week = "(金)";break;
			case Calendar.SATURDAY:week = "(土)";break;
			}
			row.createCell(i+2).setCellValue(dateArray.get(i).substring(8) + "日" + week);
			row.getCell(i + 2).setCellStyle(style1);
		}

		//列幅指定(列,幅) 半角英数字/256
		sheet.setColumnWidth(0, 2*256);
		sheet.setColumnWidth(1, 2*256);

		List<XSSFRow> rowList = new ArrayList<XSSFRow>();
		//1限目
		//row(3,6,9,12) subject
		//row(4,7,10,13) teacher
		//row(5,8,11,14) room
		for(int i = 3; i <= 14;i++){
			rowList.add(sheet.createRow(i));
		}
		rowList.get(0).createCell(1).setCellValue(1);
		rowList.get(0).getCell(1).setCellStyle(style1);
		rowList.get(1).createCell(1).setCellStyle(style2);
		rowList.get(2).createCell(1).setCellStyle(style2);
		sheet.addMergedRegion(new CellRangeAddress(3, 5, 1, 1));
		if(period1List !=null){
			for(int i = 0; i < period1List.size(); i++){
				rowList.get(0).createCell(i + 2).setCellValue(period1List.get(i).getSubjectName());
				rowList.get(0).getCell(i + 2).setCellStyle(style1);
				rowList.get(1).createCell(i + 2).setCellValue(period1List.get(i).getTeacherName());
				rowList.get(1).getCell(i + 2).setCellStyle(style1);
				rowList.get(2).createCell(i + 2).setCellValue(period1List.get(i).getRoomName());
				rowList.get(2).getCell(i + 2).setCellStyle(style1);
			}
		}
		//2限目
		rowList.get(3).createCell(1).setCellValue(2);
		rowList.get(3).getCell(1).setCellStyle(style1);
		rowList.get(4).createCell(1).setCellStyle(style2);
		rowList.get(5).createCell(1).setCellStyle(style2);
		sheet.addMergedRegion(new CellRangeAddress(6, 8, 1, 1));
		if(period2List !=null){
			for(int i = 0; i < period2List.size(); i++){
				rowList.get(3).createCell(i + 2).setCellValue(period2List.get(i).getSubjectName());
				rowList.get(3).getCell(i + 2).setCellStyle(style1);
				rowList.get(4).createCell(i + 2).setCellValue(period2List.get(i).getTeacherName());
				rowList.get(4).getCell(i + 2).setCellStyle(style1);
				rowList.get(5).createCell(i + 2).setCellValue(period2List.get(i).getRoomName());
				rowList.get(5).getCell(i + 2).setCellStyle(style1);
			}
		}
		//3限目
		rowList.get(6).createCell(1).setCellValue(3);
		rowList.get(6).getCell(1).setCellStyle(style1);
		rowList.get(7).createCell(1).setCellStyle(style2);
		rowList.get(8).createCell(1).setCellStyle(style2);
		sheet.addMergedRegion(new CellRangeAddress(9, 11, 1, 1));
		if(period3List !=null){
			for(int i = 0; i < period3List.size(); i++){
				rowList.get(6).createCell(i + 2).setCellValue(period3List.get(i).getSubjectName());
				rowList.get(6).getCell(i + 2).setCellStyle(style1);
				rowList.get(7).createCell(i + 2).setCellValue(period3List.get(i).getTeacherName());
				rowList.get(7).getCell(i + 2).setCellStyle(style1);
				rowList.get(8).createCell(i + 2).setCellValue(period3List.get(i).getRoomName());
				rowList.get(8).getCell(i + 2).setCellStyle(style1);
			}
		}
		//4限目
		rowList.get(9).createCell(1).setCellValue(4);
		rowList.get(9).getCell(1).setCellStyle(style1);
		rowList.get(10).createCell(1).setCellStyle(style2);
		rowList.get(11).createCell(1).setCellStyle(style2);
		sheet.addMergedRegion(new CellRangeAddress(12, 14, 1, 1));
		if(period4List !=null){
			for(int i = 0; i < period4List.size(); i++){
				rowList.get(9).createCell(i + 2).setCellValue(period4List.get(i).getSubjectName());
				rowList.get(9).getCell(i + 2).setCellStyle(style1);
				rowList.get(10).createCell(i + 2).setCellValue(period4List.get(i).getTeacherName());
				rowList.get(10).getCell(i + 2).setCellStyle(style1);
				rowList.get(11).createCell(i + 2).setCellValue(period4List.get(i).getRoomName());
				rowList.get(11).getCell(i + 2).setCellStyle(style1);
			}
		}

		//休日色変更
		CellStyle holiday = wb.createCellStyle();
		holiday.setFillForegroundColor(IndexedColors.LIGHT_YELLOW.getIndex());
		holiday.setFillPattern(CellStyle.SOLID_FOREGROUND);
		holiday.setBorderTop(CellStyle.BORDER_THIN);
		holiday.setBorderBottom(CellStyle.BORDER_THIN);
		holiday.setBorderLeft(CellStyle.BORDER_THIN);
		holiday.setBorderRight(CellStyle.BORDER_THIN);
		holiday.setTopBorderColor(IndexedColors.BLACK.getIndex());
		holiday.setBottomBorderColor(IndexedColors.BLACK.getIndex());
		holiday.setLeftBorderColor(IndexedColors.BLACK.getIndex());
		holiday.setRightBorderColor(IndexedColors.BLACK.getIndex());
		holiday.setAlignment(CellStyle.ALIGN_CENTER);
		holiday.setVerticalAlignment(CellStyle.VERTICAL_CENTER);
		for(int j = 2; j <= 29; j++){
			if( ( row.getCell(j).getStringCellValue().substring(4,5).equals("土")
					|| row.getCell(j).getStringCellValue().substring(4,5).equals("日") )
					&& rowList.get(0).getCell(j).getStringCellValue().equals("")
					&& rowList.get(3).getCell(j).getStringCellValue().equals("")
					&& rowList.get(6).getCell(j).getStringCellValue().equals("")
					&& rowList.get(9).getCell(j).getStringCellValue().equals("")
					){
				row.getCell(j).setCellStyle(holiday);
				for(int i = 0; i < rowList.size();i++){
					rowList.get(i).getCell(j).setCellStyle(holiday);
				}//for
			}//if
		}//for

		System.out.println(flagList.size());
		for(int i = 0; i < flagList.size();i++){
			System.out.println(flagList.get(i).getDate() + ":" + flagList.get(i).getEndFlag());
		}

		FileDialog fd =  new FileDialog(new Frame(), "名前をつけて保存", FileDialog.SAVE);
		String path = null;
		try{
			fd.toFront();
			fd.setFile(classID + ".xlsx");
			fd.setVisible(true);
			if(fd.getFile() != null){
				path = fd.getDirectory() + fd.getFile();
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			fd.dispose();
		}

		FileOutputStream out = null;
		out = new FileOutputStream(path);//file path
		wb.write(out);//file export
		out.close();

	}

}
