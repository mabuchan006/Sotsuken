package manage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DBAccess;
import event.db.eventDBManage;
import event.db.eventInfo;
import manage.db.classDBManage;
import manage.db.classInfo;
import manage.db.subjectDBManage;
import manage.db.subjectInfo;
import manage.db.teacherDBManage;
import manage.db.teacherInfo;
import net.arnx.jsonic.web.WebServiceServlet.JSON;

/**
 * Servlet implementation class ManageEditControl
 */
@WebServlet("/ManageEdit")
public class ManageEditControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String upName = "";
	String upValue = "";
	String upKey = "";


    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageEditControl() {
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


		//各jspページの編集ボタンが押されたときajax通信
		Map<String,String[]> map = request.getParameterMap();
		if(map.get("pk")!=null){
		upName = map.get("name")[0];
		upValue = map.get("value")[0];
		upKey = map.get("pk")[0];
		}//if
		else if(map.get("oldPw")!=null){


			String OldPass = map.get("oldPw")[0];
			String NewPass =map.get("newPw")[0];
			int teacherID = Integer.parseInt(map.get("teacher_id")[0]);

			teacherDBManage tdm = new teacherDBManage();
			teacherInfo ti = new teacherInfo();
			Map<String, String> statusMap = new HashMap<String,String>();
			ti.setTeacherID(teacherID);
			ti.setPassword(OldPass);
			try {
				int status=tdm.OldPasswordUpdate(ti,NewPass);
				if(status != 0){
					statusMap.put("status","true" );
				}else{
					statusMap.put("status","false" );
				}

				response.setHeader("Access-Control-Allow-Origin", "*");//dmain指定
				response.setContentType("application/json; charset=utf-8");//json形式
				PrintWriter out = response.getWriter();//書き込み
				out.println(JSON.encode(statusMap));//返す
			} catch (Exception e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();
			}

		}//if

		//クラス
		if(upKey.equals("1")){
		classDBManage cdm = new classDBManage();
		classUpdate(request, cdm,upName);
		}//if

		//科目
		if(upKey.equals("2")){
		subjectDBManage sdm = new subjectDBManage();
		subjectUpdate(request,sdm);
		}//if

		//講師
		if(upKey.equals("3")){
			teacherDBManage tdm = new teacherDBManage();
			teacherUpdate(request, tdm);
		}//if

		//講師
		if(upKey.equals("4")){
			eventDBManage edm = new eventDBManage();
			eventUpdate(request, edm);
		}//if

	}//doGet

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	//クラス管理画面指定時の処理
		private void classUpdate(HttpServletRequest request, classDBManage cdm,String upName) {

				//送信されたクラス情報取得
				classInfo ci = new classInfo();
					//更新
						ci.setClassID(upName);
						ci.setClassName(upValue);
						try {
							cdm.classDBUpdate(ci,DBAccess.UODATE , "更新");
						} catch (Exception e) {
							// TODO 自動生成された catch ブロック
							e.printStackTrace();
						}
						System.out.println("更新");

			}//class

	//科目管理画面指定時の処理
	private void subjectUpdate(HttpServletRequest request ,subjectDBManage sdm) {
		try {
		subjectInfo si = new subjectInfo();
		//更新処理
			si.setSubjectID(Integer.parseInt(upName));
			si.setBringThings(upValue);
			sdm.subjectDBUpdate(si, "", DBAccess.UODATE, "更新");

		} catch (Exception e) {
			// TODO 自動生成された catch ブロック

			e.printStackTrace();

		}
	}

	//講師管理画面指定時の処理
	private void teacherUpdate(HttpServletRequest request, teacherDBManage tdm) {

					teacherInfo ti = new teacherInfo();
					ti.setTeacherID(Integer.parseInt(upName));
					ti.setTeacherName(upValue);
					try {
						tdm.teacherDBUpdate(ti, DBAccess.UODATE, "更新");
					} catch (Exception e) {
						// TODO 自動生成された catch ブロック
						e.printStackTrace();
					}
		}//teacher

	private void eventUpdate(HttpServletRequest request, eventDBManage edm) {
		eventInfo ei = new eventInfo();
		ei.setEventID(Integer.parseInt(upName));
		ei.setEventName(upValue);
		System.out.println(upName);
		System.out.println(upValue);
		try {
			edm.eventDBUpdate(ei, DBAccess.UODATE, "更新");
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}

	}


	}




