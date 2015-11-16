package manage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
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
	//とりあえず講師画面
	private String content_page = "/Sotsuken/manage/teacher_manage.jsp";
	private String page_title = "講師管理画面";
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

		//文字コードutf8
		request.setCharacterEncoding("UTF-8");
		//jspからのページ情報取得
		String get_page = request.getParameter("page");

		//if(get_page == "teacher_manage"){
			teacherUpdate(request, tdm);
		//}

		//ページデータセット
		try {
			request.setAttribute("page", content_page);
			request.setAttribute("page_title", page_title);

		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}


		//画面遷移
			RequestDispatcher disp = request.getRequestDispatcher("/manage/teacher_manage.jsp");
		      disp.forward(request, response);
		//response.sendRedirect(content_page);


	}//doGet


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}


	private void teacherUpdate(HttpServletRequest request, teacherDBManage tdm) {

		//講師管理画面指定時の処理


			//送信された講師情報取得
			teacherInfo ti = new teacherInfo(
					0,request.getParameter("teacherName"),
					request.getParameter("password")==null?""
							:request.getParameter("password")

					);

			try {
				//ページ情報指定
				content_page = "/Sotsuken/manage/teacher_manage.jsp";
				page_title = "講師管理画面";

				if(request.getParameter("regist_btn") != null ){
					tdm.teacherDBUpdate(ti, DBAccess.INSERT, "登録");
				}

				if(request.getParameter("delete_btn") != null){
					tdm.teacherDBUpdate(ti, DBAccess.DELETE, "削除");
				}
				//更新済み講師情報全件取得
				List<teacherInfo> teacherList = tdm.teacherDBSelect();
				request.setAttribute("teacherList", teacherList);
				System.out.println(teacherList);

			} catch (Exception e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();
			}
		}
	}//teacher






