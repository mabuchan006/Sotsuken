package login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import manage.db.loginDBManage;
import manage.db.teacherInfo;


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
		String loginPath = "/Sotsuken/manage/";//変更予定のため未記述
		String logoutPath = "/Sotsuken/";//変更予定のため未記述

		//セッション情報がない場合　セッションが開始されていない場合
		//request.getParameterメソッドでstate情報を取得
		if( request.getParameter("state") != null &&
				request.getParameter("state").equals("logout") ) {

			//セッション情報ない場合→開始
			if( session == null ) {
				session = request.getSession(true);
			}//if

			//セッション接続を切る
			session.removeAttribute("id");
			session.removeAttribute("password");

			//JSPに渡す情報がないのでsendRedirectでログアウト
			response.sendRedirect(logoutPath);
			return;
		}//if

		//JSPに渡す情報がないのでsendRedirectでログイン
		response.sendRedirect(loginPath);
	}//doGet

	//ログイン処理
	//doPost
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//パス初期値
		String path="/Sotsuken/manage/";//変更予定のため未記述
		String errPath="/Sotsuken/";//変更予定のため未記述

		//teacherInfoを参照
		teacherInfo tchInf = new teacherInfo();
		//ユーザーが入力したIDとPASSWORDをteacherInfoで取得
		tchInf.setTeacherID(Integer.parseInt( request.getParameter( "teacherID" ) ) );
		tchInf.setPassword( request.getParameter( "password" ) );

		//セッション情報で振り分け
		try {
			//loginDBManageを参照し、teacherInfoに格納された情報をuserDBSearchで検索
			loginDBManage Ldb = new loginDBManage();
			teacherInfo tchinf = Ldb.userDBSearch( tchInf );

			//teacherInfo内に情報がなかったら
			if( tchinf != null ){
				//session start
				session = request.getSession(true);
				//add teacherID & password
				session.setAttribute( "teacherID" , "teacherID" );
				session.setAttribute( "password" , "password" );
				//login
				response.sendRedirect( path );
				return;
			}//if

		//errManage
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("errMsg", "ユーザ名かパスワードが違います。");
			response.sendRedirect(errPath);
		}//try-catch

	}//doPost


}
