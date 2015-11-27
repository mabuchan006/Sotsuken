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
import manage.db.teacherInfo;
import temp_timetable.db.subjectDBManage;
import temp_timetable.db.subjectInfo;

/**
 * Servlet implementation class temp_tableControl
 */
@WebServlet("/editView")
public class temp_tableControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ArrayList<String> css = new ArrayList<String>(); //css用List
	ArrayList<String> js = new ArrayList<String>(); //JavaScript用List

	private List<divideInfo> divideList; //コマ割り情報保持用
	private List<subjectInfo> InfosubjectList; //科目情報保持用
	private List<teacherInfo> teacherList; //先生情報保持用


	private String content_page ="/temp_timetable/temp_table_regist.jsp"; //遷移先jsp
	private String page_title = "";//ページ名
	private String chooseClassID="R4A1";//classID選択

    /**
     * @see HttpServlet#HttpServlet()
     */
    public temp_tableControl() {
      //●temp_table_regist.jspで使用
    	css.add("/Sotsuken/bootstrap/css/bootstrap.min.css");
    	css.add("/Sotsuken/css/style.css");
       	css.add("/Sotsuken/css/font-awesome.min.css");
    	css.add("http://fonts.googleapis.com/css?family=Lobster");


    	js.add("/Sotsuken/bootstrap/js/bootstrap.min.js");
    	js.add("/Sotsuken/js/jquery-2.1.1.min.js");
       	js.add("/Sotsuken/js/jquery.appear.js");
       	js.add("/Sotsuken/bootstrap/js/bootstrap-dropdown.js");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		subjectDBManage suDBM = new subjectDBManage(chooseClassID);
		//teacherDBManage teDM = new teacherDBManage();
		//masterDBSwitch tblSW= new masterDBSwitch();
		//TODO テーブル柔軟にすること
		try {
			InfosubjectList = suDBM.choiceSubject();
			request.setAttribute(" InfosubjectList", InfosubjectList);
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
