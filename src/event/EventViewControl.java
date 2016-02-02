package event;

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
import event.db.eventDBManage;
import event.db.eventInfo;

/**
 * Servlet implementation class EventViewControl
 */
@WebServlet("/eventView")
public class EventViewControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public EventViewControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String content_page= "/eventTable/eventTable.jsp";
		getIncludeFile(request);
		eventDBManage edm = new eventDBManage();
		String page = request.getParameter("page")==null?"ALL":
			request.getParameter("page");
		String page_title= "EventTable  -  "+page ;
		List<eventInfo> eventList = new ArrayList<eventInfo>();
		try {
			if(page !="ALL"){
				eventList = edm.eventPageSelect(page);
			}else{
				System.out.println("page");
				eventList = edm.eventALLSelect();
			}

			request.setAttribute("eventList", eventList);
			request.setAttribute("content_page", content_page);
			request.setAttribute("page_title", page_title);
			request.setAttribute("eventFlag", "eventFlag");
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}


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
	//css,js file import
	private void getIncludeFile(HttpServletRequest request) {
		// 使用するcss,jsファイルの適用
		layoutInclude tools = new layoutInclude();
		layoutIncludeInfo info =  tools.public_layout();
		info.css.add("/Sotsuken/css/event_custom.css");
		request.setAttribute("css", info.css);
		request.setAttribute("js", info.js);

	}//css&js
}
