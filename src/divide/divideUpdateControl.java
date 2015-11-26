

package divide;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import divide.db.divideDBManage;
import divide.db.divideInfo;

/**
 * Servlet implementation class divideUpdateControl
 */
@WebServlet("/divideUpdate")
public class divideUpdateControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String content_page;
	private String page_title ;
	ArrayList<String> css = new ArrayList<String>(); //css用List
	ArrayList<String> js = new ArrayList<String>(); //JavaScript用List
    /**
     * @see HttpServlet#HttpServlet()
     */
	public divideUpdateControl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		//文字コードutf8
		request.setCharacterEncoding("UTF-8");
		//jspからのページ情報取得
		String get_page = request.getParameter("page")==null?"divide_manage"
				:request.getParameter("page");
		//使用するcss,jsファイルの適用
		getIncludeFile(request);

		if(get_page == "divide_manage"){

			if(request.getParameter("regist_divide")!=null){
			divideDBManage ddm = new divideDBManage();
			//ページ情報指定
			content_page = "/manage/time_divide_manage.jsp";
			page_title = "コマ割り管理画面";

			String[] classIDArray;
			int period = 0;
			String week = "月";
			String roomID = null;
			List<divideInfo> diList = new ArrayList<>();
			String inputStr[];
			//取得
			Map<String, String[]> map = request.getParameterMap();
			for (String key : map.keySet()) {

				inputStr = key.split("-");
				roomID = inputStr[0];
				period = Integer.parseInt(inputStr[1]);
				classIDArray = map.get(key)[0].split(",");//,区切りのクラスIDを1つずつ取得

				for (String classID : classIDArray) {
					diList.add ( new divideInfo(

							period,
							roomID,
							week,
							classID

							));

					System.out.print(period);
					System.out.print(roomID);
					System.out.print(week);
					System.out.println(classID);
				}

				classIDArray = new String[5];
				inputStr = new String[2];
				//System.out.println(key + ":" +map.get(key)[0]);
			}//for
			//insert
			try {
				String Msg;
				Msg=ddm.divideDBInsert(diList);
				request.setAttribute("msg", Msg);
				} catch (Exception e) {e.printStackTrace();}
		}//if
		}//if
		//ページデータセット
		try {
			request.setAttribute("content_page", content_page);
			request.setAttribute("page_title", page_title);

		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}

		//画面遷移
		RequestDispatcher disp = request.getRequestDispatcher("template/layout.jsp");
		disp.forward(request, response);
		//response.sendRedirect(content_page);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//文字コードutf8
				request.setCharacterEncoding("UTF-8");
				//jspからのページ情報取得
				String get_page = request.getParameter("page")==null?"divide_manage"
						:request.getParameter("page");
				//使用するcss,jsファイルの適用
				getIncludeFile(request);

				if(get_page == "divide_manage"){

					divideDBManage ddm = new divideDBManage();
					//ページ情報指定
					content_page = "/manage/time_divide_manage.jsp";
					page_title = "コマ割り管理画面";

					String[] classIDArray;
					int period = 0;
					String week = "月";
					String roomID = null;
					List<divideInfo> diList = new ArrayList<>();
					String inputStr[];
					//取得
					Map<String, String[]> map = request.getParameterMap();
					for (String key : map.keySet()) {

						inputStr = key.split("-");
						roomID = inputStr[0];
						period = Integer.parseInt(inputStr[1]);
						classIDArray = map.get(key)[0].split(",");//,区切りのクラスIDを1つずつ取得

						for (String classID : classIDArray) {
							diList.add ( new divideInfo(

									period,
									roomID,
									week,
									classID

									));

							System.out.print(period);
							System.out.print(roomID);
							System.out.print(week);
							System.out.println(classID);
						}

						classIDArray = new String[5];
						inputStr = new String[2];
						//System.out.println(key + ":" +map.get(key)[0]);
					}//for
					//insert
					try {
						String Msg;
						Msg=ddm.divideDBInsert(diList);
						request.setAttribute("msg", Msg);
						} catch (Exception e) {e.printStackTrace();}
				}//if

				//ページデータセット
				try {
					request.setAttribute("content_page", content_page);
					request.setAttribute("page_title", page_title);

				} catch (Exception e) {
					// TODO 自動生成された catch ブロック
					e.printStackTrace();
				}

				//画面遷移
					RequestDispatcher disp = request.getRequestDispatcher("template/layout.jsp");
				      disp.forward(request, response);
				//response.sendRedirect(content_page);


		//doGet(request, response);
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
		js.add("/Sotsuken/js/jquery.appear.js");
		js.add("/Sotsuken/js/teacher_regist.js");
		js.add("/Sotsuken/js/dragdrop.js");
		js.add("http://code.jquery.com/ui/1.10.0/jquery-ui.js");
		js.add("http://code.jquery.com/jquery-1.8.3.js");
		request.setAttribute("css", css);
		request.setAttribute("js", js);
	}//css&js

}
