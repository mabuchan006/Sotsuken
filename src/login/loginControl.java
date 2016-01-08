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

    //doGet(クライアントからデータ要求がある場合に呼び出すメソッド)
    //クライアントに対して要求された内容を出力
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String loginPath = "/Sotsuken/manage/";//変更予定のため未記述
		String logoutPath = "/Sotsuken/top.jsp";//変更予定のため未記述

		//ログアウト処理
		if( request.getParameter("state") != null &&
				request.getParameter("state").equals("logout") ) {

			//セッション情報の取得
			if( session == null ) {
				session = request.getSession(true);
			}//if

			//セッション開放
			session.removeAttribute("loginControl");

			//JSPに渡す情報がないのでsendRedirectでログアウト
			response.sendRedirect(logoutPath);

			loginDBManage Ldb = new loginDBManage();
			request.setAttribute( "logout_Msg" , Ldb.getMsg() );

			return;
		}//if

		//JSPに渡す情報がないのでsendRedirectでログイン
		response.sendRedirect(loginPath);
	}//doGet

	//ログイン処理
	//doPost(クライアントからデータが送られてくる場合に呼び出し)
	//クライアントから送られてきた情報を取得するような処理
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//System.out.println("１");
		//パス初期値
		String path="test/login_test.jsp";//変更予定のため未記述
		String errPath="Sotsuken/top.jsp";//変更予定のため未記述

		//セッション情報取得
		if(session == null){
			session = request.getSession( true );
		}

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
				session.setAttribute( "tchinf" , tchinf );

				//login
				response.sendRedirect( path );
				request.setAttribute( "login_Msg" , Ldb.getMsg() );

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
