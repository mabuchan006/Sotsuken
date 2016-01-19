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
import Tools.layoutInclude;
import Tools.layoutInclude.layoutIncludeInfo;
import event.db.eventDBManage;
import event.db.eventInfo;
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
		if(get_page.equals("teacher_manage") ||
				request.getParameter("delete_teacher") != null ||
				request.getParameter("regist_teacher") != null ){
			//講師DB操作クラス取得
			teacherDBManage tdm = new teacherDBManage();
			teacherUpdate(request, tdm);
		}//if

		//class管理画面の処理
		else if(get_page.equals("class_manage") ||
				request.getParameter("delete_class") != null ||
				request.getParameter("regist_class") != null){
			//クラスDB操作クラス取得
			classDBManage cdm = new classDBManage();
			classUpdate(request, cdm);
		}//if

		//subject管理画面処理
		else if(get_page.equals("subject_manage") ||
				request.getParameter("delete_subject") != null ||
				request.getParameter("regist_subject") != null ){
			//科目DB操作クラス取得
			subjectUpdate(request);
		}//if

		//event管理画面処理
				else if(get_page.equals("event_manage") ||
						request.getParameter("delete_event") != null ||
						request.getParameter("regist_event") != null ){
					//科目DB操作クラス取得
					eventDBManage edm = new eventDBManage();
						eventUpdate(request,edm);
				}//if

		//ページデータセット
		try {
			request.setAttribute("line_header", "line_header");
			request.setAttribute("content_page", content_page);
			request.setAttribute("page_title", page_title);

		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}


		//画面遷移
			RequestDispatcher disp = request.getRequestDispatcher("template/layout.jsp");
		      disp.forward(request, response);

	}//doGet

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private void subjectUpdate(HttpServletRequest request) {
		try {
		//ページ情報指定
		content_page = "/manage/subject_manage.jsp";
		page_title = "SubjectManage";
		//更新済み科目情報全件取得
		subjectDBManage sdm = new subjectDBManage();
		int showFlag=0;
		//送信された科目情報取得
		subjectInfo si = new subjectInfo();
		String[] setSiArray = new String[4];
		int cnt = 0;
		String classID = "";

		//全リクエスト情報取得
		Map<String, String[]> getMap =request.getParameterMap();

		//学年に対する学科を格納するためのリスト
		List<String> courceList = new ArrayList<String>();

		//すべてのリクエスト情報をinsert処理する
		for (Map.Entry<String, String[]> rs : getMap.entrySet()) {

			//1つ目のリクエストはいらないので除外
			if(!(rs.getKey().equals("grade_name1") || rs.getKey().equals("cource_name1") ||
					rs.getKey().equals("subjectName1") || rs.getKey().equals("bringThings1")||
					rs.getKey().equals("regist_subject") || rs.getKey().equals("page")||
					 rs.getKey().equals("_"))){

				//リクエスト情報を科目情報配列に格納
				if(cnt < 4){

					setSiArray[cnt] = rs.getValue()[0];


					cnt++;
					if(cnt == 4){

						//全学年を指定していた場合
						if(setSiArray[1].equals("ALL")){
							showFlag = 1;
						}//if

						//科目情報を作成
						si = new subjectInfo(
								0
								,setSiArray[0]
								,setSiArray[3] ,showFlag
								);

						//学科がAll指定されていたとき
						if(setSiArray[2].equals("ALL")){

							courceList = sdm.classALLSelect(setSiArray[1]);
							for (String classRs : courceList) {

								sdm.subjectDBUpdate(si, classRs,DBAccess.INSERT, "登録");

							}//for
						}else{

							//通常処理
							//クラス情報作成
							classID = setSiArray[1] + setSiArray[2];

							//登録処理
							sdm.subjectDBUpdate(si, classID,DBAccess.INSERT, "登録");
						}//if

						//初期化
						showFlag=0;
						cnt = 0;
						setSiArray = new String[4];
					}//if
				}//if
			}//if
		}//foreeach


		//送信された削除用科目情報取得
		subjectInfo delsi = new subjectInfo(
				request.getParameter("subjectID")==null?0//true
						:Integer.parseInt(request.getParameter("subjectID"))//false
				,request.getParameter("subjectName")
				,request.getParameter("bringThings"),showFlag

				);

		if(request.getParameter("delete_subject") != null){
			sdm.subjectDBUpdate(delsi, "",DBAccess.DELETE, "削除");
			System.out.println("削除");
		}//if

		//学年ごとに対応したクラス情報
		Map<String,List<String>> classMap = sdm.classDBSelect();
		//更新済み科目情報全件取得
		List<subjectInfo> subjectList = sdm.subjectDBSelect();

		//科目情報
		request.setAttribute("subjectList", subjectList);
		request.setAttribute("classMap", classMap);
		request.setAttribute("cnt", subjectList.size());

		//メッセージ
		if(sdm.getMsg() != null){
		if((sdm.getMsg()).indexOf("入力情報に誤りがあります") != -1){
			request.setAttribute("err_Msg", sdm.getMsg());
		}else{
			request.setAttribute("Msg",sdm.getMsg());
		}//if
		}//if

		} catch (Exception e) {
			// TODO 自動生成された catch ブロック

			e.printStackTrace();

		}
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
					page_title = "ClassManage";

					//登録
					if(request.getParameter("regist_class") != null ){
						cdm.classDBUpdate(ci, DBAccess.INSERT, "登録");

					}
					//削除
					if(request.getParameter("delete_class") != null){
						cdm.classDBUpdate(ci, DBAccess.DELETE, "削除");

					}//if
					//更新

					//更新済み講師情報全件取得
					List<classInfo> classList = cdm.classDBSelect();
					request.setAttribute("cnt", classList.size());

					request.setAttribute("classList", classList);
					if(cdm.getMsg() != null){
						if((cdm.getMsg()).indexOf("入力情報に誤りがあります") != -1){
							request.setAttribute("err_Msg", cdm.getMsg());
						}else{
							request.setAttribute("Msg",cdm.getMsg());
						}//if
					}

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
				page_title = "TeacherManage";

				if(request.getParameter("regist_teacher") != null ){
					tdm.teacherDBUpdate(ti, DBAccess.INSERT, "登録");
				}//if

				if(request.getParameter("delete_teacher") != null){
					tdm.teacherDBUpdate(ti, DBAccess.DELETE, "削除");
				}//if

				//更新済み講師情報全件取得
				List<teacherInfo> teacherList = tdm.teacherDBSelect();
				request.setAttribute("teacherList", teacherList);
				request.setAttribute("cnt", teacherList.size());

				if(tdm.getMsg() != null){
					if((tdm.getMsg()).indexOf("入力情報に誤りがあります") != -1){
						request.setAttribute("err_Msg", tdm.getMsg());
					}else{
						request.setAttribute("Msg",tdm.getMsg());
					}//if
				}

			} catch (Exception e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();
			}
		}//teacher

	//イベント管理画面指定時の処理
	private void eventUpdate(HttpServletRequest request, eventDBManage edm) {
		try {
		//日付情報分割格納
		List<String> dateList = new ArrayList<String>();
		if(request.getParameter("eventDate")!=null){
		String inputStr[];

		inputStr=request.getParameter("eventDate").split("/");
		for (String date : inputStr) {
			System.out.println(date);
			dateList.add(date);
		}//for
		}else{
			dateList.add("date");
		}
		//日付情報分割格納end

		//イベント情報格納
		eventInfo ei = new eventInfo(
				request.getParameter("event_id")==null?0
						:Integer.parseInt(request.getParameter("event_id")),
				request.getParameter("eventName"),
				request.getParameter("period")==null?1
						:Integer.parseInt(request.getParameter("period")),
				dateList,
				request.getParameter("class_id")==null?""
						:request.getParameter("class_id"),
				request.getParameter("roomName")==null?""
						:request.getParameter("roomName"),
				request.getParameter("endFlag")==null?"0"
						:request.getParameter("endFlag"),
				request.getParameter("guestTeacher")==null?""
						:request.getParameter("guestTeacher"),
				request.getParameter("notice")==null?""
						:request.getParameter("notice")
				);

			//ページ情報指定
			content_page = "/manage/event_manage.jsp";
			page_title = "EventManage";

			if(request.getParameter("regist_event") != null ){
				edm.eventDBUpdate(ei, DBAccess.INSERT, "登録");
				if(ei.getDate()!=null){

				}

			}//if

			if(request.getParameter("delete_event") != null){
				edm.eventDBUpdate(ei, DBAccess.DELETE, "削除");
			}//if

			//更新済み講師情報全件取得
			List<eventInfo> eventList = edm.eventDBSelect();
			//更新済み講師情報全件取得
			teacherDBManage tdm = new teacherDBManage();
			List<teacherInfo> teacherList = tdm.teacherDBSelect();
			//更新済み講師情報全件取得
			classDBManage cdm = new classDBManage();
 			List<classInfo> classList = cdm.classDBSelect();
 			//部屋情報取得
 			List<String> roomList = edm.roomDBSelect();
			request.setAttribute("classList", classList);
			request.setAttribute("roomList", roomList);
			request.setAttribute("teacherList", teacherList);
			request.setAttribute("eventList", eventList);
			request.setAttribute("cnt", eventList.size());

			if(edm.getMsg() != null){
				if((edm.getMsg()).indexOf("入力情報に誤りがあります") != -1){
					request.setAttribute("err_Msg", edm.getMsg());
				}else{
					request.setAttribute("Msg",edm.getMsg());
				}//if
			}

		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}

	}//event


	//css,js file import
	private void getIncludeFile(HttpServletRequest request) {
		// 使用するcss,jsファイルの適用
		layoutInclude tools = new layoutInclude();
		layoutIncludeInfo info =  tools.manage_layout();
		request.setAttribute("css", info.css);
		request.setAttribute("js", info.js);

	}//css&js
	}