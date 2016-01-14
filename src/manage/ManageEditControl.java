package manage;

import java.io.IOException;
import java.util.Map;

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

		System.out.println("edit");

		//各jspページの編集ボタンが押されたときajax通信
		Map<String,String[]> map = request.getParameterMap();
		if(map.get("pk")!=null){
		upName = map.get("name")[0];
		upValue = map.get("value")[0];
		upKey = map.get("pk")[0];
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

	}




