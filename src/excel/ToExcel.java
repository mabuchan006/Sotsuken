package excel;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	private List<masterInfo> dList;
	private List<masterInfo> period1List;
	private List<masterInfo> period2List;
	private List<masterInfo> period3List;
	private List<masterInfo> period4List;

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
		String page = request.getParameter("page");


		if(page != null){
			masterDBSwitch mdbSwitch = new masterDBSwitch();
			masterDBSwitchInfo value = mdbSwitch.switchDB(page);
			chooseTableName = value.chooseTableName;
		}
		masterDBManage mdb = new masterDBManage(chooseTableName);
		try {
			dList = mdb.dateSelect();//日付
			 period1List = mdb.selectTimeTable(1);//1限目
			 period2List = mdb.selectTimeTable(2);//2限目
			 period3List = mdb.selectTimeTable(3);//3限目
			 period4List = mdb.selectTimeTable(4);//4限目
		} catch (Exception e) {
			e.printStackTrace();
		}

		XSSFWorkbook wb = new XSSFWorkbook();//creat workbook
		XSSFSheet sheet = wb.createSheet(page);//sheet name
		sheet.createRow(0);//1行目

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
			System.out.println(sheet.getNumMergedRegions());
			System.out.println(sheet.getMergedRegion(0).formatAsString());
			row.createCell(prevMonth + 1).setCellValue(firstDay.substring(5,7) + "月");
			range = new CellRangeAddress(1, 1, prevMonth + 1,29);
			sheet.addMergedRegion(range);
			System.out.println(sheet.getNumMergedRegions());
			System.out.println(sheet.getMergedRegion(1).formatAsString());
		} else {
			sheet.addMergedRegion(range);
		}

		//date set
		row = sheet.createRow(2);
		for(int i = 0; i < dateArray.size(); i++){
			row.createCell(i+2).setCellValue(dateArray.get(i).substring(5, 7) + "月" + dateArray.get(i).substring(8) + "日");
		}

		//1限目
			XSSFRow row1 = sheet.createRow(3);//subject
			XSSFRow row2 = sheet.createRow(4);//teacher
			XSSFRow row3 = sheet.createRow(5);//room
			row1.createCell(1).setCellValue(1);
			sheet.addMergedRegion(new CellRangeAddress(3, 5, 1, 1));
		if(period1List !=null){
			for(int i = 0; i < period1List.size(); i++){
				row1.createCell(i + 2).setCellValue(period1List.get(i).getSubjectName());
				row2.createCell(i + 2).setCellValue(period1List.get(i).getTeacherName());
				row3.createCell(i + 2).setCellValue(period1List.get(i).getRoomName());
			}
		}
		//2限目
			row1 = sheet.createRow(6);
			row2 = sheet.createRow(7);
			row3 = sheet.createRow(8);
			row1.createCell(1).setCellValue(2);
			sheet.addMergedRegion(new CellRangeAddress(6, 8, 1, 1));
		if(period2List !=null){
			for(int i = 0; i < period2List.size(); i++){
				row1.createCell(i + 2).setCellValue(period2List.get(i).getSubjectName());
				row2.createCell(i + 2).setCellValue(period2List.get(i).getTeacherName());
				row3.createCell(i + 2).setCellValue(period2List.get(i).getRoomName());
			}
		}
		//3限目
			row1 = sheet.createRow(9);
			row2 = sheet.createRow(10);
			row3 = sheet.createRow(11);
			row1.createCell(1).setCellValue(3);
			sheet.addMergedRegion(new CellRangeAddress(9, 11, 1, 1));
		if(period3List !=null){
			for(int i = 0; i < period3List.size(); i++){
				row1.createCell(i + 2).setCellValue(period3List.get(i).getSubjectName());
				row2.createCell(i + 2).setCellValue(period3List.get(i).getTeacherName());
				row3.createCell(i + 2).setCellValue(period3List.get(i).getRoomName());
			}
		}
		//4限目
			row1 = sheet.createRow(12);
			row2 = sheet.createRow(13);
			row3 = sheet.createRow(14);
			row1.createCell(1).setCellValue(4);
			sheet.addMergedRegion(new CellRangeAddress(12, 14, 1, 1));
		if(period4List !=null){
			for(int i = 0; i < period4List.size(); i++){
				row1.createCell(i + 2).setCellValue(period4List.get(i).getSubjectName());
				row2.createCell(i + 2).setCellValue(period4List.get(i).getTeacherName());
				row3.createCell(i + 2).setCellValue(period4List.get(i).getRoomName());
			}
		}

		FileOutputStream out = null;
		out = new FileOutputStream("C:/Users/tetsuya/Desktop/" + page + ".xlsx");//file path
		wb.write(out);//file export
		out.close();



	}

}
