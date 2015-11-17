package timetable;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import timetable.db.masterDBManage;
import timetable.db.masterInfo;

/**
 * Servlet implementation class timeTableMaster
 */
@WebServlet("/publicView")
public class timeTableMaster extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ArrayList<String> css = new ArrayList<String>(); //css用List
	ArrayList<String> js = new ArrayList<String>(); //JavaScript用List
	masterDBManage mDM = new masterDBManage();//マスターDBマネージャの起動

	private List<masterInfo> dList; //時間割マスタ保持用
	private List<masterInfo> mList; //時間割マスタ保持用

    /**
     * @see HttpServlet#HttpServlet()
     */
    public timeTableMaster() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//●確定時間割情報表示機能
		String content_page = "/timeTable/timeTable_master.jsp"; //見せたい画面のパスを入れる
		String page_title = "R4A1"; //タブに表示される表示名を入力
		//timeTable_master.jspで使用
			css.add("/Sotsuken/bootstrap/css/bootstrap.min.css");
			css.add("/Sotsuken/css/font-awesome.min.css");
			css.add("/Sotsuken/css/style.css");
			css.add("http://fonts.googleapis.com/css?family=Lobster");

			js.add("/Sotsuken/js/jquery-2.1.1.min.js");
			js.add("/Sotsuken/bootstrap/js/bootstrap.min.js");
			js.add("/Sotsuken/js/jquery.appear.js");

			try {
				 dList = mDM.dateSelect(); //日付取得
				 mList = mDM.selectTimeTable();
				 request.setAttribute("dList", dList);
				 request.setAttribute("mList", mList);
			} catch (Exception e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();

			}
		//ディスパッチ準備
			request.setAttribute("css", css);
			request.setAttribute("js", js);
			request.setAttribute("content_page", content_page);
			request.setAttribute("page_title", page_title);

		//ディスパッチ処理　layout.jspに投げると中身をcontent_pageのjspに合わせて表示
			RequestDispatcher disp = request.getRequestDispatcher("/template/layout.jsp");
					disp.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
