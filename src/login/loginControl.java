package user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginControl
 */
@WebServlet("/LoginControl")
public class loginControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//session
	private HttpSession session;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String loginPath = "/";
		String logoutPath = "/";

		//ログアウト処理
				if(request.getParameter("state")!=null){
					if(request.getParameter("state").equals("logout")){
						if(session == null){
							//セッション情報取得
							session = request.getSession(true);

						}//if

						session.removeAttribute("loginUser");
						session.removeAttribute("id");
						response.sendRedirect(logoutPath);
				return;
			}//if
		}//if

				response.sendRedirect(loginPath);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String errPath="/graduate_thesis/login.jsp";//ログイン失敗時
		String path="/graduate_thesis/UserUpdateControl";//ログイン成功時


		//仮のユーザー情報作成
		UserInfo user = new UserInfo(0,
				"",
				request.getParameter("email"),
				request.getParameter("password"),"","",0);

		try {
			//該当ユーザーがいるか検索

			UserDBManage Umng = new UserDBManage("user");
			UserInfo loginUser = Umng.userDBSearch(user);

			SchoolDBManage schoolDB = new SchoolDBManage();
			SchoolInfo schoolInfo = schoolDB.schoolDBSearch(loginUser);

			//LoginUser return 該当ユーザー情報
			if(loginUser != null){
				session = request.getSession(true);
				session.setAttribute("loginUser", loginUser);
				session.setAttribute("schoolInfo", schoolInfo);
				response.sendRedirect(path);
				return;

			}//if
			//request情報破棄と同時に遷移



		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			//ログイン失敗時処理
			request.setAttribute("errMsg", "ユーザー名とパスワードが違います");//errorメッセージ

			response.sendRedirect(errPath);
		}

	}
}
