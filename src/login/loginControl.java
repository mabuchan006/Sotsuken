package login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/loginControl")
public class loginControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//session
	private HttpSession session;

    public loginControl() {
        super();
    }

    //doGet
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String loginPath = "/Sotsuken/manage/manage_top.jsp";
		String logoutPath = "/Sotsuken/top.jsp";

		//ログアウト処理
		if( request.getParameter("state") != null &&
				request.getParameter("state").equals("logout") ) {

			//セッション情報取得
			if( session == null ) {
				session = request.getSession(true);
			}//if

			//セッション接続を切る
			//userInfoでも可？
			session.removeAttribute("id");
			session.removeAttribute("password");

			//JSPに渡す情報がないのでsendRedirectでログアウト
			response.sendRedirect(logoutPath);
			return;
		}//if

		//JSPに渡す情報がないのでsendRedirectでログイン
		response.sendRedirect(loginPath);
	}//doGet

	//doPost
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//パス初期値
		String path="/Sotsuken/manage/manage_top.jsp";
		String errPath="/Sotsuken/";

//		userInfo user = new userInfo();
//		user.setName(request.getParameter("id") );
//		user.setName(request.getParameter("password") );

		//セッション情報で振り分け
		try {
//			userDBManage udb = new userDBManage("user");
//			userInfo loginUser = udb.userDBSelect(user);
//			SchoolDBManage schoolDB = new SchoolDBManage();
//			SchoolInfo schoolInfo = schoolDB.schoolDBSearch(loginUser);

//			if( loginInfo != null ){
//				session = request.getSession(true);
//				session.setAttribute( "" , "" );
//				session.setAttribute( "" , "" );
//				response.sendRedirect(path);
//				return;
//			}//if

		} catch (Exception e) {
			e.printStackTrace();
//			request.setAttribute("errMsg", "ユーザ名かパスワードが違います。");
//			response.sendRedirect(errPath);
		}//try-catch

	}//doPost

}
