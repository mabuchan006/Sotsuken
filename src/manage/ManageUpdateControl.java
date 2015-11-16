package manage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DBAccess;
import manage.db.teacherDBManage;
import manage.db.teacherInfo;

/**
 * Servlet implementation class ManageUpdateControl
 */
@WebServlet("/ManageUpdate")
public class ManageUpdateControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageUpdateControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//講師DB操作クラス取得
		teacherDBManage tdm = new teacherDBManage();
		//とりあえず講師画面
		String content_page = "/manage/teacher_manage";
		String page_title = "講師管理画面";
		//文字コードutf8
		request.setCharacterEncoding("UTF-8");
		//jspからのページ情報取得
		String get_page = request.getParameter("page");

		//講師管理画面指定時の処理
		if(get_page == "teacher_manage"){

			//送信された講師情報取得
			teacherInfo ti = new teacherInfo(
					0,request.getParameter("teacherName"),
					request.getParameter("password")==null?""
							:request.getParameter("password")

					);

			try {
				//講師情報全件取得
				List<teacherInfo> teacherList = tdm.teacherDBSelect();

				if(request.getParameter("registBtn") != null ){
					tdm.teacherDBUpdate(ti, DBAccess.INSERT, "登録");
				}
			} catch (Exception e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
