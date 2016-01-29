
package divide;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Tools.layoutInclude;
import Tools.layoutInclude.layoutIncludeInfo;
import divide.db.divideDBManage;
import divide.db.divideInfo;
import net.arnx.jsonic.JSON;

/**
 * Servlet implementation class divideUpdateControl
 */
@WebServlet("/divideUpdate")
public class divideUpdateControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String page_title;
	private String content_page;
	private String msg;
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
		// 文字コードutf8
		request.setCharacterEncoding("UTF-8");
		// 使用するcss,jsファイルの適用
		layoutInclude tools = new layoutInclude();
		layoutIncludeInfo info =  tools.divideLayout();
		request.setAttribute("css", info.css);
		request.setAttribute("js", info.js);
		// ページ情報指定
		page_title = "Create Schedule";
		content_page = "/manage/time_divide_manage.jsp";

		String[] classIDArray;
		int period = 0;
		String week = "月";
		String roomID = null;
		List<divideInfo> diList = new ArrayList<>();
		String inputStr[] = new String[2]; // 取得
		Map<String, String[]> map = request.getParameterMap();
		String ajaxWeek = request.getParameter("ajaxWeek");//name value ajax

		//System.out.println(map + ":" + ajaxWeek);

		// コマ割りDB操作クラス取得
		divideDBManage ddm = new divideDBManage();

		try {
			for (String key : map.keySet()) {
				//System.out.println(key + ":" + map.get(key)[0]);
				if (key.equals("mon") || key.equals("tue") || key.equals("wed") || key.equals("thu")
						|| key.equals("fri") || key.equals("ajaxWeek")) {
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
					case "ajaxWeek":
						week = map.get(key)[0];
						break;
					}
				} else if (key.equals("regist")){
					// delete
					ddm.divideDBDelete(week);
				}else {
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
			msg = ddm.divideDBInsert(diList);

			// select edit
			HashMap<String, String[]> divideMap = ddm.editDivideDBSelect(week);

			// select view
			HashMap<String, HashMap<String, String[]>> viewMap = new HashMap<String, HashMap<String, String[]>>();
			for (String rKey : divideMap.keySet()) {
				viewMap.put(rKey, new HashMap<String, String[]>());
				for (int i = 0; i < divideMap.get(rKey).length; i++) {
					if (divideMap.get(rKey)[i] != null) {
						inputStr = new String[5];
						inputStr = divideMap.get(rKey)[i].split(",");
						viewMap.get(rKey).put("p" + (i + 1), inputStr);
					} // if
				} // for
			} // for

			// select
			divideMap = ddm.editDivideDBSelect(week);

			ddm.classIDDBSelect(request);

			//ajaxを返す
			if (ajaxWeek != null) {
				response.setHeader("Access-Control-Allow-Origin", "*");//dmain指定
				response.setContentType("application/json; charset=utf-8");//json形式
				PrintWriter out = response.getWriter();//書き込み
				out.println(JSON.encode(viewMap));//返す
			}

			request.setAttribute("msg", msg);
			request.setAttribute("divideMap", divideMap);
			request.setAttribute("viewMap", viewMap);
			request.setAttribute("page_title", page_title);
			request.setAttribute("content_page", content_page);

		} catch (Exception e) {

			e.printStackTrace();

		}

		// 画面遷移
		if(ajaxWeek == null && map.isEmpty()){
			RequestDispatcher disp = request.getRequestDispatcher("/template/layout.jsp");
			disp.forward(request, response);
		}
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
