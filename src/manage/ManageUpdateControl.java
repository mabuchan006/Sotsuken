package manage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DBAccess;
import manage.db.classDBManage;
import manage.db.classInfo;
import manage.db.subjectDBManage;
import manage.db.subjectInfo;
import manage.db.teacherDBManage;
import manage.db.teacherInfo;

/**
 * Servlet implementation class ManageUpdateControl
 */
@WebServlet("/ManageUpdate")
public class ManageUpdateControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//
	private String content_page;
	private String page_title ;
	ArrayList<String> css = new ArrayList<String>(); //css用List
	ArrayList<String> js = new ArrayList<String>(); //JavaScript用List
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

		//文字コードutf8
		request.setCharacterEncoding("UTF-8");
		//jspからのページ情報取得
		String get_page = request.getParameter("page")==null?"subject_manage"
				:request.getParameter("page");
		//使用するcss,jsファイルの適用
		getIncludeFile(request);

		//teacher管理の画面処理
		if(get_page.equals("teacher_manage")){
			//講師DB操作クラス取得
			teacherDBManage tdm = new teacherDBManage();
			teacherUpdate(request, tdm);
		}//if
		//class管理画面の処理
		if(get_page.equals("class_manage")){
			//クラスDB操作クラス取得
			classDBManage cdm = new classDBManage();
			classUpdate(request, cdm);
		}//if

		//講師管理画面処理
		if(get_page.equals("subject_manage")){

			try {
			//ページ情報指定
			content_page = "/manage/subject_manage.jsp";
			page_title = "科目管理画面";
			//更新済み科目情報全件取得
			subjectDBManage sdm = new subjectDBManage();
			//学年ごとに対応したクラス情報
			Map<String,List<String>> classMap = sdm.classDBSelect();
			//更新済み科目情報全件取得
			List<subjectInfo> subjectList = sdm.subjectDBSelect();

			int showFlag=0;
			String grade_name1 = request.getParameter("grade_name1");
			String cource_name1 = request.getParameter("cource_name1");
			String classID1 = grade_name1+cource_name1;
//			String grade_name2 = request.getParameter("grade_name2");
//			String cource_name2 = request.getParameter("cource_name2");
//			String classID2 = grade_name2+cource_name2;


//			//学年がallだった場合の処理
//			if(grade_name1.equals("ALL")){
//				showFlag=1;
//			}
//			//学科がallだった場合の処理
//			if(cource_name1.equals("ALL")){
//				//対象学年の全学科に対してinsert
//				for (String cource : classMap.get(grade_name1)) {
//
//					//insert走らせる予定
//					subjectUpdate(request, sdm, cource + grade_name1, showFlag); ;
//
//				}
//				classMap.get("grade_name1");
//			}

			//送信された科目情報取得
			subjectInfo si = new subjectInfo(
					request.getParameter("subjectID")==null?0//true
							:Integer.parseInt(request.getParameter("subjectID"))//false
					,request.getParameter("subjectName")
					,request.getParameter("bringThings"),showFlag

					);

			if(request.getParameter("regist_subject") != null ){
				sdm.subjectDBUpdate(si, classID1,DBAccess.INSERT, "登録");
				System.out.println("登録");
			}

			if(request.getParameter("delete_subject") != null){
				sdm.subjectDBUpdate(si, classID1,DBAccess.DELETE, "削除");
				System.out.println("削除");
			}



			request.setAttribute("subjectList", subjectList);
			request.setAttribute("classMap", classMap);


			} catch (Exception e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();
			}

		}

		//ページデータセット
		try {

			request.setAttribute("content_page", content_page);
			request.setAttribute("page_title", page_title);

		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}


		//画面遷移
			RequestDispatcher disp = request.getRequestDispatcher("template/layout.jsp");
		      disp.forward(request, response);
		//response.sendRedirect(content_page);


	}//doGet


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	//クラス管理画面指定時の処理
		private void classUpdate(HttpServletRequest request, classDBManage cdm) {


				//送信されたクラス情報取得
				classInfo ci = new classInfo(
						request.getParameter("classID")==null?""//true
								:request.getParameter("classID")//false
						,request.getParameter("className")

						);

				try {
					//ページ情報指定
					content_page = "/manage/class_manage.jsp";
					page_title = "クラス管理画面";

					if(request.getParameter("regist_class") != null ){
						cdm.classDBUpdate(ci, DBAccess.INSERT, "登録");
						System.out.println("登録");
					}

					if(request.getParameter("delete_class") != null){
						cdm.classDBUpdate(ci, DBAccess.DELETE, "削除");
						System.out.println("削除");
					}
					//更新済み講師情報全件取得
					List<classInfo> classList = cdm.classDBSelect();

					request.setAttribute("classList", classList);
				} catch (Exception e) {
					// TODO 自動生成された catch ブロック
					e.printStackTrace();
				}
			}//class

	//講師管理画面指定時の処理
	private void teacherUpdate(HttpServletRequest request, teacherDBManage tdm) {

			//送信された講師情報取得
			teacherInfo ti = new teacherInfo(
					request.getParameter("teacher_id")==null?0//true
							:Integer.parseInt(request.getParameter("teacher_id"))//false
					,request.getParameter("teacherName"),
					request.getParameter("password")==null?""
							:request.getParameter("password")

					);

			try {
				//ページ情報指定
				content_page = "/manage/teacher_manage.jsp";
				page_title = "講師管理画面";

				if(request.getParameter("regist_btn") != null ){
					tdm.teacherDBUpdate(ti, DBAccess.INSERT, "登録");
					System.out.println("登録");
				}

				if(request.getParameter("delete_btn") != null){
					tdm.teacherDBUpdate(ti, DBAccess.DELETE, "削除");
					System.out.println("削除");
				}
				//更新済み講師情報全件取得
				List<teacherInfo> teacherList = tdm.teacherDBSelect();
				request.setAttribute("teacherList", teacherList);

			} catch (Exception e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();
			}
		}//teacher

	private void getIncludeFile(HttpServletRequest request) {
		css.add("/Sotsuken/bootstrap/css/bootstrap.min.css");
		css.add("/Sotsuken/css/font-awesome.min.css");
		css.add("/Sotsuken/css/custom.css");
		css.add("/Sotsuken/css/style.css");
		css.add("/Sotsuken/css/pure-drawer.css");



		js.add("/Sotsuken/js/jquery-2.1.1.min.js");
		js.add("/Sotsuken/bootstrap/js/bootstrap.min.js");
		js.add("/Sotsuken/js/jquery.appear.js");
		js.add("/Sotsuken/js/subject_manage.js");
		request.setAttribute("css", css);
		request.setAttribute("js", js);
	}//css&js
	}






