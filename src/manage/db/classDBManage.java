package manage.db;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DB.DBAccess;
/*
 * @author syam
 * @see classInfo
 */

public class classDBManage extends DBAccess{
	private String selectSql;//クラス全検索用
	private String deleteSql;//クラス1件削除用
	private String insertSql;//クラス1件登録用
	private String deleteClass;
	private String updateSql;

	//*******Msg*********
	private String msg;

	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
  //********endMsg*************

	private final static String DRIVER_NAME = "java:comp/env/jdbc/MySqlCon";//コネクタ

	public classDBManage() {
		super(DRIVER_NAME);//DBAccessに接続
		//ID,NAME,PASSを全件取得sql
		selectSql = String.format("select classID,className from tbl_class order by classID asc");
		//クラスIDから削除からsql
		deleteSql = String.format("delete  from tbl_class where classID = ?");
		deleteClass = String.format("delete  from tbl_infosubject where classID = ?");
		//クラス情報登録sql
		insertSql= String.format(" replace into tbl_class (classID, className) values ( ? , ? )");
		updateSql= String.format("update tbl_class set className = ? where classID = ?");
	}
	/*
	 * @param classinfo クラス情報
	 * @return classList 全クラス情報
	 */
	public List<classInfo> classDBSelect() throws Exception{
			List<classInfo> classList = new ArrayList<classInfo>();
			//DB接続
			connect();
			createStstement();
			selectExe(selectSql);
			//要素取得用準備
			ResultSet rs = getRsResult();
			classInfo classinfo;
			//全件取得
			while(rs.next()){

				classinfo = new classInfo(
						rs.getString("classID"),
						rs.getString("className"));

				//クラス要素を1件ずつリストに追加
				classList.add(classinfo);

			}//while

			disConnection();//切断

		return classList;

	}//select

	public List<String> classDBSelect_() throws Exception{
		List<String> classList = new ArrayList<String>();
		//DB接続
		connect();
		createStstement();
		selectExe(selectSql);
		//要素取得用準備
		ResultSet rs = getRsResult();
		//全件取得
		while(rs.next()){
			classList.add(rs.getString("classID"));
		}//while

		disConnection();//切断

	return classList;

}//select

	/*
	 * @param クラス情報 classinfo
	 * @see classControl
	 */
	public void classDBUpdate(classInfo ci,int state,String msg) throws Exception{
		connect();
		switch(state){
		case INSERT:

			if(!(ci.getClassID().equals("") || ci.getClassName().equals(""))
					&& ci.getClassID().length() == 4){
			createStstement(insertSql);
			getPstmt().setString(1,ci.getClassID());
			getPstmt().setString(2,ci.getClassName());
			updateExe();//実行

			}//if

			break;
		case DELETE:

			createStstement(deleteClass);

			getPstmt().setString(1, ci.getClassID());// 削除するIDをセット
			updateExe();// 実行
			createStstement(deleteSql);
			getPstmt().setString(1,ci.getClassID());//削除するIDをセット
			updateExe();//実行


			break;
		case UODATE:
			createStstement(updateSql);
			getPstmt().setString(1, ci.getClassName());
			getPstmt().setString(2, ci.getClassID());

			updateExe();//実行

			break;
		}

		if(state!=UODATE){
		setMsg(resultMsg(ci,msg));//実行メッセージ取得
		}//if
		disConnection();//切断
	}//method

private String resultMsg(classInfo ci,String msg){


	if (getIntResult() != 0) {
		return String.format("%sを%sしました。", ci.getClassID()+" : "+ci.getClassName()
		, msg);

	}
	return String.format("入力情報に誤りがあります");
}


}
