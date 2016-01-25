
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

    //GET受信
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String loginPath = "";	//ログインパス
		String logoutPath = "";//ログアウトパス

		//ログアウト処理
		if( request.getParameter("state") != null &&
				request.getParameter("state").equals("logout") ) {

			//セッション準備
			if( session == null ) {
				session = request.getSession(true);
			}//if

			//セッション開放
			session.removeAttribute("loginControl");

			//JSPに渡す情報がないのでsendRedirectでログアウト
			response.sendRedirect(logoutPath);

			//インスタンス化
			loginDBManage Ldb = new loginDBManage();

			//パラメータ追加
			request.setAttribute( "logout_Msg" , Ldb.getMsg() );

			return;
		}//if

		//JSPに渡す情報がないのでsendRedirectでログイン
		response.sendRedirect(loginPath);
	}//doGet

	//POST受信
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//パス初期値
		String path="/Sotsuken/manage/manage_top.jsp";
		String errPath="/Sotsuken/top.jsp";

		//セッション準備
		if(session == null){
			session = request.getSession( true );
		}

		//インスタンス化
		teacherInfo tchInf = new teacherInfo();

		//入力したIDを取得
		tchInf.setTeacherID( Integer.parseInt( request.getParameter( "teacherID" ) ) );
		//入力したパスワードを取得
		tchInf.setPassword( request.getParameter( "password" ) );

		//セッション情報で振り分け
		try {

			//loginDBManageを参照し、teacherInfoに格納された情報をuserDBSearchで検索
			loginDBManage Ldb = new loginDBManage();
			teacherInfo tchinf = Ldb.userDBSearch( tchInf );

			//入力値が未入力でない場合
			//変更予定箇所→IDに英字が入っている場合など
			if( tchinf != null ){

				//session start
				session = request.getSession(true);

				//add teacherID & password
				session.setAttribute( "tchinf" , tchinf );

				//login
				response.sendRedirect( path );
				request.setAttribute( "login_Msg" , Ldb.getMsg() );

				return;
			} else {
				request.setAttribute("errMsg", "ユーザ名かパスワードが違います。");
				response.sendRedirect(errPath);
			}//else if

		//errManage
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("errMsg", "ユーザ名かパスワードが違います。");
			response.sendRedirect(errPath);
		}//try-catch

	}//doPost


}
