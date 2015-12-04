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

import Tools.layoutInclude;
import Tools.layoutInclude.layoutIncludeInfo;
import Tools.masterDBSwitch;
import Tools.masterDBSwitch.masterDBSwitchInfo;
import timetable.db.masterDBManage;
import timetable.db.masterInfo;

/**
 * Servlet implementation class timeTableMaster
 */
@WebServlet("/publicView")
public class timeTableMasterControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ArrayList<String> css = new ArrayList<String>(); //css用List
	ArrayList<String> js = new ArrayList<String>(); //JavaScript用List


	private List<masterInfo> dList; //時間割マスタ保持用
	private List<masterInfo> period1List; //時間割マスタ保持用
	private List<masterInfo> period2List; //時間割マスタ保持用
	private List<masterInfo> period3List; //時間割マスタ保持用
	private List<masterInfo> period4List; //時間割マスタ保持用

	private String content_page =""; //遷移先jsp
	private String page_title = "";//ページ名
	private String chooseTableName="";//選択時間割




    /**
     * @see HttpServlet#HttpServlet()
     */
    public timeTableMasterControl() {
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");

		// 使用するcss,jsファイルの適用
				layoutInclude tools = new layoutInclude();
				layoutIncludeInfo info =  tools.public_layout();
				request.setAttribute("css", info.css);
				request.setAttribute("js", info.js);

		if( page != null ){
			//DB切り替えClassへ（masteDBSwich.java）
			 masterDBSwitch tblSW= new masterDBSwitch();
			 masterDBSwitchInfo value = tblSW.switchDB(page);
			page_title = value.page_title;
			chooseTableName = value.chooseTableName;
			content_page = value.content_page;
		} else {
			String url = "/Sotsuken/top.jsp";
			response.sendRedirect(url);
			return;
		}

		//●確定時間割情報表示機能
			masterDBManage mDM = new masterDBManage(chooseTableName);//マスターDBマネージャの起動
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
				e.printStackTrace();
	}
		//ディスパッチ準備
			request.setAttribute("content_page", content_page);
			request.setAttribute("page_title", page_title);

		//ディスパッチ処理 layout.jspに投げると中身をcontent_pageのjspに合わせて表示
			RequestDispatcher disp = request.getRequestDispatcher("/template/public_layout.jsp");
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
