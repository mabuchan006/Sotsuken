package temp_timetable;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
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

	private List<tempInfo> tList; //一時時間割情報用
	private List<tempInfo> tList1; //一時時間割情報用-1
	private List<tempInfo> tList2; //一時時間割情報用-2
	private List<tempInfo> tList3; //一時時間割情報用-3
	private List<tempInfo> tList4; //一時時間割情報用-4

	private List<subjectInfo> infoSubjectList; // 科目情報保持用
	private List<teacherInfo> teacherList; // 先生情報保持用
	private List<roomInfo> rooms1List; // 1限目部屋マスタ保持用
	private List<roomInfo> rooms2List; // 2限目時間割マスタ保持用
	private List<roomInfo> rooms3List; // 3限目時間割マスタ保持用
	private List<roomInfo> rooms4List; // 4限目時間割マスタ保持用

	private String page_title = "Temporary Edit";// ページ名
	String content_page; // 遷移先jsp
	private String chooseClassID ;// classID選択 TODO:DBSWitchテーブル変更を柔軟にする。

	teacherDBManage teDBM = new teacherDBManage();
	tempDBManage tempDBM = new tempDBManage();

	private int period;
	private String subjectName;
	private Date date;
	private String classID;
	private String roomName;
	private String teacherName;

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

		String page = request.getParameter("page");
		// 文字コードutf8
		request.setCharacterEncoding("UTF-8");

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
			chooseClassID = value.chooseClassID;
			content_page = value.content_page;
		} else {
			String url = "/Sotsuken/editView?page=R";
			response.sendRedirect(url);
			return;
		} //if else

		//DivideUpdateからの情報取得
		try {
			subjectDBManage suDBM = new subjectDBManage(chooseClassID);
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

			int teacher_count = teacherList.size();
			request.setAttribute("teacher_count",teacher_count);
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
		} //try Edit View 表示
		System.out.println("1");
		//Insert 登録ボタンが押された場
		if(request.getParameter("regist") != null){
			for(int i=0; i <= 6; i++){
				String num = String.valueOf(i);
				String subject = request.getParameter("Su"+ num +"_1");
				String teacher = request.getParameter("Te"+ num +"_1");
				String room = request.getParameter("Ro"+ num +"_1");
				System.out.println(subject + teacher + room);
				System.out.println("test");
			}
		}
		System.out.println("2");

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

}
