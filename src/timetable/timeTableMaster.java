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


	private List<masterInfo> dList; //時間割マスタ保持用
	private List<masterInfo> period1List; //時間割マスタ保持用
	private List<masterInfo> period2List; //時間割マスタ保持用
	private List<masterInfo> period3List; //時間割マスタ保持用
	private List<masterInfo> period4List; //時間割マスタ保持用

	private String content_page ="";
	private String page_title = "";
	private String chooseTableName="";


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
		String page = request.getParameter("page");
		switch (page) {
		case "R":
			 page_title = "R4A1";
			 chooseTableName = "tbl_master_R4A1timetable";
			 content_page = "/timeTable/R_master.jsp";
			break;
		case "S":
			page_title = "";
			break;
		case "J":
			page_title = "";
			break;
		case "A":
			page_title = "";
			break;
		case "exam":
			page_title = "";
			break;
		default:

			break;
		}//switch end(tbl名切り替え)

		//●確定時間割情報表示機能
		masterDBManage mDM = new masterDBManage(chooseTableName);//マスターDBマネージャの起動
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
				 period1List = mDM.selectTimeTable(1);//1限目
				 period2List = mDM.selectTimeTable(2);//2限目
				 period3List = mDM.selectTimeTable(3);//3限目
				 period4List = mDM.selectTimeTable(4);//4限目
				 request.setAttribute("dList", dList);
				 request.setAttribute("period1List", period1List);
				 request.setAttribute("period2List", period2List);
				 request.setAttribute("period3List", period3List);
				 request.setAttribute("period4List", period4List);
			} catch (Exception e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();

			}
		//ディスパッチ準備
			request.setAttribute("css", css);
			request.setAttribute("js", js);
			request.setAttribute("content_page", content_page);
			request.setAttribute("page_title", page_title);

		//ディスパッチ処理 layout.jspに投げると中身をcontent_pageのjspに合わせて表示
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
