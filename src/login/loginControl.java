
package login;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import manage.db.teacherInfo;
import net.arnx.jsonic.web.WebServiceServlet.JSON;


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

		request.setCharacterEncoding("UTF-8");
		//ログアウト処理
				if( request.getParameter("state") != null &&
						request.getParameter("state").equals("logout") ) {

					//セッション準備
					if( session == null ) {
						session = request.getSession(true);
					}//if

					//セッション開放
					session.removeAttribute("tchinf");
					//パラメータ追加
					session.setAttribute( "logout_Msg" , "ログアウトしました。" );
					//JSPに渡す情報がないのでsendRedirectでログアウト
					response.sendRedirect("/Sotsuken/top.jsp");



					return;
				}//if

		Map<String, String[]> viewMap = request.getParameterMap();
		Map<String, String> loginMap = new HashMap<String,String>();
		teacherInfo tchInf = new teacherInfo();
		loginDBManage Ldb = new loginDBManage();
		if(tchInf != null){
		for (Map.Entry<String, String[]> result : viewMap.entrySet()) {
			if(result.getKey().equals("id")){
				tchInf.setTeacherID(Integer.parseInt(result.getValue()[0]));

			}else
				if(result.getKey().equals("pw")){
					tchInf.setPassword(result.getValue()[0]);

				}
		}//for


			//loginDBManageを参照し、teacherInfoに格納された情報をuserDBSearchで検索

			try {
				teacherInfo tchinf=new teacherInfo();
				tchinf = Ldb.userDBSearch( tchInf );

				if(tchinf != null){
					loginMap.put("status","true" );

				}else{
					loginMap.put("status","false" );

				}
				response.setHeader("Access-Control-Allow-Origin", "*");//dmain指定
				response.setContentType("application/json; charset=utf-8");//json形式
				PrintWriter out = response.getWriter();//書き込み
				out.println(JSON.encode(loginMap));//返す

			} catch (Exception e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();
			}
			}




	}//doGet

	//POST受信
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");



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
