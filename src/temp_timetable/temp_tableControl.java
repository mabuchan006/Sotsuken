package temp_timetable;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import timetable.db.masterDBSwitch;

/**
 * Servlet implementation class temp_tableControl
 */
@WebServlet("/editView")
public class temp_tableControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ArrayList<String> css = new ArrayList<String>(); //css用List
	ArrayList<String> js = new ArrayList<String>(); //JavaScript用List

    /**
     * @see HttpServlet#HttpServlet()
     */
    public temp_tableControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		masterDBSwitch tblSW= new masterDBSwitch();
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
