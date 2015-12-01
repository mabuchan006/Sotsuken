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

import divide.db.divideInfo;
import manage.db.teacherDBManage;
import manage.db.teacherInfo;
import temp_timetable.db.subjectDBManage;
import temp_timetable.db.subjectInfo;

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

	private String content_page = "/temp_timetable/temp_table_regist.jsp"; // 遷移先jsp
	private String page_title = "Temporary Edit";// ページ名
	private String chooseClassID = "R4A1";// classID選択

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public temp_tableControl() {
		// ●temp_table_regist.jspで使用

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 文字コードutf8
		request.setCharacterEncoding("UTF-8");
		// jspからのページ情報取得
		// 使用するcss,jsファイルの適用
		getIncludeFile(request);

		subjectDBManage suDBM = new subjectDBManage(chooseClassID);
		teacherDBManage teDBM = new teacherDBManage();
		// masterDBSwitch tblSW= new masterDBSwitch();
		// TODO テーブル柔軟にすること
		try {
			infoSubjectList = suDBM.choiceSubject(); // 科目取得
			teacherList = teDBM.teacherDBSelect(); // 先生取得

			request.setAttribute("infoSubjectList", infoSubjectList);
			request.setAttribute("teacherList",teacherList);
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		// ディスパッチ準備

		request.setAttribute("css", css);
		request.setAttribute("js", js);
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
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private void getIncludeFile(HttpServletRequest request) {
		css.add("/Sotsuken/bootstrap/css/bootstrap.min.css");
		css.add("/Sotsuken/css/font-awesome.min.css");
		css.add("/Sotsuken/css/custom.css");
		css.add("/Sotsuken/css/style.css");
		css.add("/Sotsuken/css/pure-drawer.css");
		css.add("http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css");

		js.add("/Sotsuken/js/jquery-2.1.1.min.js");
		js.add("/Sotsuken/bootstrap/js/bootstrap.min.js");
		js.add("/Sotsuken/bootstrap/js/bootstrap.js");
		js.add("/Sotsuken/js/jquery.appear.js");
		js.add("/Sotsuken/js/teacher_regist.js");
		js.add("/Sotsuken/js/dragdrop.js");
		js.add("/Sotsuken/js/modal.js");
		js.add("http://code.jquery.com/ui/1.10.0/jquery-ui.js");
		js.add("http://code.jquery.com/jquery-1.8.3.js");
		request.setAttribute("css", css);
		request.setAttribute("js", js);
	}// css&js

}
