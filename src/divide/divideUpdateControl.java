
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
	private String page_title;
	ArrayList<String> css = new ArrayList<String>(); // css用List
	ArrayList<String> js = new ArrayList<String>(); // JavaScript用List

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public divideUpdateControl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		// 文字コードutf8
		request.setCharacterEncoding("UTF-8");
		// 使用するcss,jsファイルの適用
		getIncludeFile(request);
		// ページ情報指定
		content_page = "/manage/time_divide_manage.jsp";
		page_title = "Create Schedule";

		divideDBManage ddm = new divideDBManage();
		String[] classIDArray;
		int period = 0;
		String week = "月";
		String roomID = null;
		List<divideInfo> diList = new ArrayList<>();
		String inputStr[] = new String[2]; // 取得
		Map<String, String[]> map = request.getParameterMap();

		for (String key : map.keySet()) {
			if (key.equals("mon") || key.equals("tue") || key.equals("wed") || key.equals("thu") || key.equals("fri")) {
				switch (key) {
				case "mon":
					week = "月";
					break;
				case "tue":
					week = "火";
					break;
				case "wed":
					week = "水";
					break;
				case "thu":
					week = "木";
					break;
				case "fri":
					week = "金";
					break;
				}
			} else {
				inputStr = key.split("-");
				roomID = inputStr[0];
				period = Integer.parseInt(inputStr[1]);
				classIDArray = map.get(key)[0].split(",");// ,区切りのクラスIDを1つずつ取得

				for (String classID : classIDArray) {

					diList.add(new divideInfo(period, roomID, week, classID));

				} // for
			} // if
			classIDArray = new String[5];
			inputStr = new String[2];

		} // for

		// insert
		try {

			ddm.divideDBInsert(diList);
			request.setAttribute("content_page", content_page);
			request.setAttribute("page_title", page_title);

		} catch (Exception e) {

			e.printStackTrace();

		}

		// 画面遷移
		RequestDispatcher disp = request.getRequestDispatcher("template/layout.jsp");
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

	private void getIncludeFile(HttpServletRequest request) {
		css.add("/Sotsuken/bootstrap/css/bootstrap.min.css");
		css.add("/Sotsuken/css/font-awesome.min.css");
		css.add("/Sotsuken/css/custom.css");
		css.add("/Sotsuken/css/style.css");
		css.add("/Sotsuken/css/pure-drawer.css");
		css.add("http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css");

		js.add("/Sotsuken/js/jquery-2.1.1.min.js");
		js.add("/Sotsuken/bootstrap/js/bootstrap.min.js");
		js.add("/Sotsuken/js/dragdrop.js");
		js.add("/Sotsuken/js/modal.js");
		js.add("/Sotsuken/js/week.js");
		js.add("http://code.jquery.com/ui/1.10.0/jquery-ui.js");
		request.setAttribute("css", css);
		request.setAttribute("js", js);
	}// css&js

}
