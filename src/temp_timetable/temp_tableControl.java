package temp_timetable;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Tools.layoutInclude;
import Tools.layoutInclude.layoutIncludeInfo;
import Tools.masterDBSwitch;
import Tools.masterDBSwitch.masterDBSwitchInfo;
import manage.db.teacherDBManage;
import manage.db.teacherInfo;
import temp_timetable.db.roomInfo;
import temp_timetable.db.subjectDBManage;
import temp_timetable.db.subjectInfo;
import temp_timetable.db.tempDBManage;
import temp_timetable.db.tempInfo;

/**
 * Servlet implementation class temp_tableControl
 */
@WebServlet("/editView")
public class temp_tableControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ArrayList<String> css = new ArrayList<String>(); // css用List
	ArrayList<String> js = new ArrayList<String>(); // JavaScript用List

	private List<subjectInfo> infoSubjectList= new ArrayList<>(); // 科目情報保持用
	private List<teacherInfo> teacherList= new ArrayList<>(); // 先生情報保持用
	private List<roomInfo> rooms1List = new ArrayList<>(); // 1限目部屋マスタ保持用
	private List<roomInfo> rooms2List= new ArrayList<>(); // 2限目時間割マスタ保持用
	private List<roomInfo> rooms3List= new ArrayList<>(); // 3限目時間割マスタ保持用
	private List<roomInfo> rooms4List= new ArrayList<>(); // 4限目時間割マスタ保持用

	private String page_title = "";// ページ名
	private String chooseClassID ;// classID選択 TODO:DBSWitchテーブル変更を柔軟にする。
	private String tblName;
	String content_page; // 遷移先jsp



	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public temp_tableControl() {
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//各List初期化
		 List <tempInfo> regtiList1 = new ArrayList<>();
		 List <tempInfo> regtiList2 = new ArrayList<>();
		 List <tempInfo> regtiList3 = new ArrayList<>();
		 List <tempInfo> regtiList4 = new ArrayList<>();

		 List<tempInfo> tiList1 = new ArrayList<>(); //一時時間割情報用-1
		 List<tempInfo> tiList2 = new ArrayList<>(); //一時時間割情報用-2
		 List<tempInfo> tiList3 = new ArrayList<>(); //一時時間割情報用-3
		 List<tempInfo> tiList4 = new ArrayList<>(); //一時時間割情報用-4

		// 文字コードutf8
				request.setCharacterEncoding("UTF-8");

		String page = request.getParameter("page");

		System.out.println("page:"+page);


		// 使用するcss,jsファイルの適用
		layoutInclude tools = new layoutInclude();
		layoutIncludeInfo info =  tools.layout();
		request.setAttribute("css", info.css);
		request.setAttribute("js", info.js);

		//page 情報の取得
		if( page != null ){
			//DB切り替えClassへ（masteDBSwich.java）
			 masterDBSwitch tblSW= new masterDBSwitch();
			 masterDBSwitchInfo value = tblSW.switchTempDB(page);
			chooseClassID = value.chooseClassID; //クラス情報取得
			content_page = value.content_page; //遷移先
			tblName = value.chooseTableName;

			request.setAttribute("chooseClassID",chooseClassID); //Insert のクラス情報に使用するため
			page_title = "Temporary Edit" + " 　" +chooseClassID.toString();
		} else{
			chooseClassID = "R4A1";
			content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			page_title = "Temporary Edit" + " 　" +chooseClassID.toString();
			tblName = "tbl_temp_R4A1timetable";  //Table名取得
		}//if DB切り替え

		System.out.println(chooseClassID);
		System.out.println(content_page);
		System.out.println(tblName);

		//使用DBManage
		tempDBManage tempDBM = new tempDBManage(tblName);
		subjectDBManage suDBM = new subjectDBManage(chooseClassID);
		teacherDBManage teDBM = new teacherDBManage();

		//DivideUpdateからの情報取得
		try {

			infoSubjectList = suDBM.choiceSubject(); // 科目取得
			teacherList = teDBM.teacherDBSelect(); // 先生取得

			rooms1List = tempDBM.roomsSelect(1, chooseClassID);
			rooms2List = tempDBM.roomsSelect(2, chooseClassID);
			rooms3List = tempDBM.roomsSelect(3, chooseClassID);
			rooms4List = tempDBM.roomsSelect(4, chooseClassID);
			int period_1 = rooms1List.size();
			int period_2 = rooms2List.size();
			int period_3 = rooms3List.size();
			int period_4 = rooms4List.size();

			request.setAttribute("period_1",period_1);
			request.setAttribute("period_2",period_2);
			request.setAttribute("period_3",period_3);
			request.setAttribute("period_4",period_4);

			request.setAttribute("infoSubjectList", infoSubjectList);
			request.setAttribute("teacherList",teacherList);

			request.setAttribute("rooms1List", rooms1List);
			request.setAttribute("rooms2List", rooms2List);
			request.setAttribute("rooms3List", rooms3List);
			request.setAttribute("rooms4List", rooms4List);

		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}



		//Insert 登録ボタン
		if(request.getParameter("regist") != null){
			try {
				//delete
				tempDBM.tempDelete();
			String date = request.getParameter("start").toString(); //始点の日付取得
			System.out.println(date);

			for(int week=0;week <= 3;week++){
				for(int i=0; i <= 6; i++){
					String num = String.valueOf(i);

					//1限目の週間予定取得
					//１限目
					String subject1 = request.getParameter("Su"+ num +"_1");
					int subjectID1;
					if( subject1 == null || subject1.length() == 0 ){
						subjectID1 = 1;
					}else {
						 subjectID1 = Integer.parseInt(subject1.substring(0,1));
					}
					String teacherName1 = request.getParameter("Te"+ num +"_1");
					if( teacherName1 == null || teacherName1.length() == 0 ){
						teacherName1 = "";
					}//null排除
					String roomName1 	= request.getParameter("Ro"+ num +"_1");
					if( roomName1 == null || roomName1.length() == 0 ){
						roomName1 = "";
					}//null排除

					//２限目
					String subject2 = request.getParameter("Su"+ num +"_2");
					int subjectID2;
					if( subject2 == null || subject2.length() == 0 ){
						subjectID2 = 1;
					}else {
						 subjectID2 = Integer.parseInt(subject2.substring(0,1));
					}
					String teacherName2 = request.getParameter("Te"+ num +"_2");
					if( teacherName2 == null || teacherName2.length() == 0 ){
						teacherName2 = "";
					}//null排除
					String roomName2	=    request.getParameter("Ro"+ num +"_2");
					if( roomName2 == null || roomName2.length() == 0 ){
						roomName2 = "";
					}//null排除

					//３限目
					String subject3 = request.getParameter("Su"+ num +"_3");
					int subjectID3;
					if( subject3 == null || subject3.length() == 0 ){
						subjectID3 = 1;
					}else {
						 subjectID3 = Integer.parseInt(subject3.substring(0,1));
					}
					String teacherName3 = request.getParameter("Te"+ num +"_3");
					if( teacherName3 == null || teacherName3.length() == 0 ){
						teacherName3 = "";
					}//null排除
					String roomName3 	=    request.getParameter("Ro"+ num +"_3");
					if( roomName3 == null || roomName3.length() == 0 ){
						roomName3 = "";
					}//null排除

					//4限目
					String subject4 = request.getParameter("Su"+ num +"_4");
					int subjectID4;
					if( subject4 == null || subject4.length() == 0 ){
						subjectID4 = 1;
					}else {
						 subjectID4 = Integer.parseInt(subject4.substring(0,1));
					}
					String teacherName4 = request.getParameter("Te"+ num +"_4");
					if( teacherName4 == null || teacherName4.length() == 0 ){
						teacherName4 = "";
					}//null排除
					String roomName4	=    request.getParameter("Ro"+ num +"_4");
					if( roomName4 == null || roomName4.length() == 0 ){
						roomName4 = "";
					}//null排除

					//各日のコマをリストに追加
					tiList1.add(new tempInfo("1",  subjectID1,  date,  chooseClassID,  roomName1,  teacherName1));
					tiList2.add(new tempInfo( "2", subjectID2,  date, chooseClassID,  roomName2,  teacherName2));
					tiList3.add(new tempInfo( "3", subjectID3,  date,  chooseClassID,  roomName3,  teacherName3));
					tiList4.add(new tempInfo( "4", subjectID4,  date,  chooseClassID,  roomName4,  teacherName4));

					date = dateAdd(date); //日にち加算
				}//for 7日分
			}//for ４週分

			//Insert　２８日分
			tempDBM.tempDBInsert(tiList1);
			tempDBM.tempDBInsert(tiList2);
			tempDBM.tempDBInsert(tiList3);
			tempDBM.tempDBInsert(tiList4);

			} catch (Exception e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();
			}

		}//Insert 終了


		//Select 一時時間割から登録済み情報の取得
		try {
			regtiList1 = tempDBM.regSelect("1");
			request.setAttribute("regtiList1", regtiList1);
			regtiList2 = tempDBM.regSelect("2");
			request.setAttribute("regtiList2", regtiList2);
			regtiList3 = tempDBM.regSelect("3");
			request.setAttribute("regtiList3", regtiList3);
			regtiList4 = tempDBM.regSelect("4");
			request.setAttribute("regtiList4", regtiList4);
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		//マスタアップ

		//マスタ確認
		if(request.getParameter("confirm") != null){
			String url = "/Sotsuken/publicView?page="+ chooseClassID;
			response.sendRedirect(url);
			return;
		}

		// ディスパッチ準備
		request.setAttribute("content_page", content_page);
		request.setAttribute("page_title", page_title);

		// ディスパッチ処理
		RequestDispatcher disp = request.getRequestDispatcher("/template/layout.jsp");
		disp.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	//日付加算用メソッド
	private String dateAdd(String date){
		Calendar calendar = Calendar.getInstance();
		calendar.set(Integer.parseInt(date.substring(0, 4)),Integer.parseInt(date.substring(5, 7)),Integer.parseInt(date.substring(8)));
		calendar.add(Calendar.DAY_OF_MONTH, 1);
		 String year = String.valueOf(calendar.get(Calendar.YEAR));
		 String month = String.format("%02d", calendar.get(Calendar.MONTH));
		 String day =String.format("%02d", calendar.get(Calendar.DATE));
		 date = year+"-"+ month +"-"+ day;
		return date;

	}

}
