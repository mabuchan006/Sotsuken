package temp_timetable;

import java.io.IOException;
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
import divide.db.divideInfo;
import manage.db.teacherDBManage;
import manage.db.teacherInfo;
import temp_timetable.db.roomInfo;
import temp_timetable.db.subjectDBManage;
import temp_timetable.db.subjectInfo;
import temp_timetable.db.tempDBManage;

/**
 * Servlet implementation class temp_tableControl
 */
@WebServlet("/editView")
public class temp_tableControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ArrayList<String> css = new ArrayList<String>(); // css用List
	ArrayList<String> js = new ArrayList<String>(); // JavaScript用List

	private List<divideInfo> divideList; // コマ割り情報保持用
	private List<subjectInfo> infoSubjectList; // 科目情報保持用
	private List<teacherInfo> teacherList; // 先生情報保持用
	private List<String> rooms1List; // 時間割マスタ保持用
	private List<roomInfo> rooms2List; // 時間割マスタ保持用
	private List<roomInfo> rooms3List; // 時間割マスタ保持用
	private List<roomInfo> rooms4List; // 時間割マスタ保持用

	String content_page = "/temp_timetable/temp_table_regist.jsp"; // 遷移先jsp
	private String page_title = "Temporary Edit";// ページ名
	private String chooseClassID = "R4A1";// classID選択

	subjectDBManage suDBM = new subjectDBManage(chooseClassID);
	teacherDBManage teDBM = new teacherDBManage();
	tempDBManage tempDBM = new tempDBManage();

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
		// 文字コードutf8
		request.setCharacterEncoding("UTF-8");

		// 使用するcss,jsファイルの適用
		layoutInclude tools = new layoutInclude();
		layoutIncludeInfo info =  tools.layout();
		request.setAttribute("css", info.css);
		request.setAttribute("js", info.js);

		try {
			infoSubjectList = suDBM.choiceSubject(); // 科目取得
			teacherList = teDBM.teacherDBSelect(); // 先生取得
			int teacher_count = teacherList.size();

				String roomName = tempDBM.roomsSelect(1, chooseClassID, 1);
				if(roomName.equals(null)){
					System.out.println("null");
				}
				rooms1List.add(roomName);
				//rooms2List = tempDBM.roomsSelect(2, chooseClassID, i);
				//rooms3List = tempDBM.roomsSelect(3, chooseClassID, i);
				//rooms4List = tempDBM.roomsSelect(4, chooseClassID, i);


			request.setAttribute("infoSubjectList", infoSubjectList);
			request.setAttribute("teacherList",teacherList);
			request.setAttribute("teacher_count",teacher_count);
			request.setAttribute("rooms1List", rooms1List);
			//request.setAttribute("rooms2List", rooms2List);
			//request.setAttribute("rooms3List", rooms3List);
			//request.setAttribute("rooms4List", rooms4List);

		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		// ディスパッチ準備

		request.setAttribute("content_page", content_page);
		request.setAttribute("page_title", page_title);

		// ディスパッチ処理 layout.jspに投げると中身をcontent_pageのjspに合わせて表示
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
