package excel;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import net.arnx.jsonic.JSON;
import timetable.db.masterDBManage;
import timetable.db.masterInfo;

/**
 * Servlet implementation class ToExcel
 */
@WebServlet("/toExcel")
public class ToExcel extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String chooseTableName="";
	private masterDBManage mdb = null;
	private List<masterInfo> dList = new ArrayList<masterInfo>();//日付
	private List<masterInfo> period1List = new ArrayList<masterInfo>();//1限
	private List<masterInfo> period2List = new ArrayList<masterInfo>();//2限
	private List<masterInfo> period3List = new ArrayList<masterInfo>();//3限
	private List<masterInfo> period4List = new ArrayList<masterInfo>();//4限
	private List<masterInfo> flagList = new ArrayList<masterInfo>();//endFlag用
	private List<XSSFRow> rowList = new ArrayList<XSSFRow>();//作成済み行の管理用
	private XSSFWorkbook wb = new XSSFWorkbook();//creat workbook
	private String classID = "";
	private Map<String, String> jsonMap = new HashMap<String, String>();

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
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		classID = request.getParameter("classID");
		String page = request.getParameter("page");

		if(page.equals("create")){
			createExcel(request, response);
		}else if(page.equals("export")){
			exportExcel(request, response);
		} else {
			return;
		}

	}

	private void createExcel(HttpServletRequest request, HttpServletResponse response){

		try {
			if(classID != null){
				masterDBSwitch mdbSwitch = new masterDBSwitch();
				masterDBSwitchInfo value = mdbSwitch.switchDB(classID);
				chooseTableName = value.chooseTableName;
			} else {
				return;
			}
			mdb = new masterDBManage(chooseTableName);
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

		if(dList.size() == 0
				&& period1List.size() == 0
				&& period2List.size() == 0
				&& period3List.size() == 0
				&& period4List.size() == 0
				&& flagList.size() == 0
				){
			return;
		}

		try{
			XSSFSheet sheet = wb.createSheet(classID);//シート作成 引数はシート名
			sheet.createRow(0);//1行目

			//垂直中央揃え
			CellStyle style1 = wb.createCellStyle();//スタイルの作成
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
			style2.cloneStyleFrom(style1);//style1のクローンを作成
			style2.setRotation((short)0xFF);

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
						> Integer.parseInt(dateArray.get(i + 1).substring(8))
						){
					lastDay = dateArray.get(i);
					firstDay = dateArray.get(i + 1);
					prevMonth = dateArray.indexOf(lastDay) + 2;
					//nextMonth = dateArray.indexOf(firstDay);
					flag = true;
					break;
				}
			}

			//month cell merge
			XSSFRow row = sheet.createRow(1);//行の作成
			if(flag){
				row.createCell(1).setCellValue(lastDay.substring(5,7) + "月");
				sheet.addMergedRegion(new CellRangeAddress(1, 1, 1, prevMonth));//セルの結合 引数で結合範囲の指定
				row.getCell(1).setCellStyle(style1);//セルにスタイルの適用

				row.createCell(prevMonth + 1).setCellValue(firstDay.substring(5,7) + "月");
				sheet.addMergedRegion(new CellRangeAddress(1, 1, prevMonth + 1,29));
				row.getCell(prevMonth + 1).setCellStyle(style1);
			} else {
				sheet.addMergedRegion(new CellRangeAddress(1, 1, 1, 29));
				row.getCell(1).setCellStyle(style1);
			}

			for(int i = 1; i < prevMonth; i++){
				row.createCell(i + 1).setCellStyle(style1);
			}
			for(int i = prevMonth + 2; i <= 29; i++){
				row.createCell(i).setCellStyle(style1);
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

			//1限目
			//row(3,6,9,12) subject
			//row(4,7,10,13) teacher
			//row(5,8,11,14) room
			for(int i = 3; i <= 14;i++){
				rowList.add(sheet.createRow(i));
			}
			rowList.get(0).createCell(1).setCellValue(1);
			periodCellCreate(period1List, 0, style1);
			sheet.addMergedRegion(new CellRangeAddress(3, 5, 1, 1));

			//2限目
			rowList.get(3).createCell(1).setCellValue(2);
			periodCellCreate(period2List, 3, style1);
			sheet.addMergedRegion(new CellRangeAddress(6, 8, 1, 1));


			//3限目
			rowList.get(6).createCell(1).setCellValue(3);
			periodCellCreate(period3List, 6, style1);
			sheet.addMergedRegion(new CellRangeAddress(9, 11, 1, 1));


			//4限目
			rowList.get(9).createCell(1).setCellValue(4);
			periodCellCreate(period4List, 9, style1);
			sheet.addMergedRegion(new CellRangeAddress(12, 14, 1, 1));

			//休日色変更
			CellStyle holiday = wb.createCellStyle();
			holiday.cloneStyleFrom(style1);
			holiday.setFillForegroundColor(IndexedColors.LIGHT_YELLOW.getIndex());
			holiday.setFillPattern(CellStyle.SOLID_FOREGROUND);

			for(int j = 2; j <= 29; j++){
				if( ( row.getCell(j).getStringCellValue().substring(4,5).equals("土")
						|| row.getCell(j).getStringCellValue().substring(4,5).equals("日") )
						&& rowList.get(0).getCell(j).getStringCellValue().equals("")
						&& rowList.get(3).getCell(j).getStringCellValue().equals("")
						&& rowList.get(6).getCell(j).getStringCellValue().equals("")
						&& rowList.get(9).getCell(j).getStringCellValue().equals("")
						){
					row.getCell(j).setCellStyle(holiday);
					sheet.setColumnWidth(j, row.getCell(j).getStringCellValue().length() * 256 * 2);
					for(int i = 0; i < rowList.size();i++){
						rowList.get(i).getCell(j).setCellStyle(holiday);
					}//for
				}//if
			}//for

			for(int i = 2; i <= 29; i++){
				for(int j = 0; j < flagList.size(); j++){
					if(row.getCell(i).getStringCellValue().substring(0, 2).equals(flagList.get(j).getDate().toString().substring(8))
							&& flagList.get(j).getEndFlag().equals("1")
							&& rowList.get(0).getCell(i).getStringCellValue().equals(flagList.get(j).getEventName())
							){
						sheet.addMergedRegion(new CellRangeAddress(3, 14, i, i));
						rowList.get(0).getCell(i).setCellStyle(style2);
						sheet.setColumnWidth(i, row.getCell(i).getStringCellValue().length() * 256 * 2);
					}//if
				}//for
			}//for
		}catch(Exception e){
			e.printStackTrace();
		}

		try {
			response.setHeader("Access-Control-Allow-Origin", "*");//dmain指定
			response.setContentType("application/json; charset=utf-8");//json形式
			PrintWriter out = response.getWriter();//書き込み
			jsonMap.put("key", "info");
			jsonMap.put("value", "ダウンロードを開始します");
			out.println(JSON.encode(jsonMap));//返す
			jsonMap = new HashMap<String,String>();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}//createExcel

	private void exportExcel(HttpServletRequest request, HttpServletResponse response){
		response.setContentType("application/vnd.ms-excel");
		response.setHeader("Content-Disposition", "attachement; filename=\""+classID +".xlsx\"");
		try {
			wb.write(response.getOutputStream());
			paramInit();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void periodCellCreate(List<masterInfo> periodList, int index, CellStyle style1){
		//作成済みシート取得
		XSSFSheet sheet = wb.getSheetAt(0);
		//時限のセルにスタイルを適用
		rowList.get(index).getCell(1).setCellStyle(style1);
		rowList.get(index + 1).createCell(1).setCellStyle(style1);
		rowList.get(index + 2).createCell(1).setCellStyle(style1);
		if(periodList !=null){
			for(int i = 0; i < periodList.size(); i++){
				rowList.get(index ).createCell(i + 2).setCellValue(periodList.get(i).getSubjectName());//セルを作成して値を入れる
				rowList.get(index).getCell(i + 2).setCellStyle(style1);//セルにスタイル適用

				rowList.get(index + 1).createCell(i + 2).setCellValue(periodList.get(i).getTeacherName());
				rowList.get(index + 1).getCell(i + 2).setCellStyle(style1);

				rowList.get(index + 2).createCell(i + 2).setCellValue(periodList.get(i).getRoomName());
				rowList.get(index + 2).getCell(i + 2).setCellStyle(style1);

				//文字列に合わせてセル幅調整
				if(rowList.get(index).getCell(i + 2).getStringCellValue().length() > 0
						&& rowList.get(index + 1).getCell(i + 2).getStringCellValue().length() > 0
						&& rowList.get(index + 2).getCell(i + 2).getStringCellValue().length() > 0
						){
					sheet.setColumnWidth(i + 2, rowList.get(index).getCell(i + 2).getStringCellValue().length() * 256 * 2);
					sheet.setColumnWidth(i + 2, rowList.get(index + 1).getCell(i + 2).getStringCellValue().length() * 256 * 2);
					sheet.setColumnWidth(i + 2, rowList.get(index + 2).getCell(i + 2).getStringCellValue().length() * 256 * 2);
				}//if
			}//for
		}//if
	}//periodCellCreate

	private void paramInit(){
		chooseTableName="";
		mdb = null;
		dList = new ArrayList<masterInfo>();//日付
		period1List = new ArrayList<masterInfo>();//1限
		period2List = new ArrayList<masterInfo>();//2限
		period3List = new ArrayList<masterInfo>();//3限
		period4List = new ArrayList<masterInfo>();//4限
		flagList = new ArrayList<masterInfo>();//endFlag用
		rowList = new ArrayList<XSSFRow>();//作成済み行の管理用
		wb.removeSheetAt(0);
		classID = "";
		jsonMap = new HashMap<String, String>();
	}
}
