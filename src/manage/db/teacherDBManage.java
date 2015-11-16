package manage.db;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DB.DBAccess;
/*
 * @author syam
 * @see teacherInfo
 */

public class teacherDBManage extends DBAccess{
	private String selectSql;//講師全検索用
	private String deleteSql;//講師1件削除用
	private String insertSql;//講師1件登録用

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

	public teacherDBManage() {
		super(DRIVER_NAME);//DBAccessに接続
		//ID,NAME,PASSを全件取得sql
		selectSql = String.format("select teacherID,teacherName,password from tbl_teacher");
		//講師IDから削除からsql
		deleteSql = String.format("select teacherID,teacherName,password from tbl_teacher where id = ?");
		//講師情報登録sql
		insertSql= String.format(" insert into tbl_teacher (teacherName, password) values ( ? , ? )");
	}
	/*
	 * @param teacherinfo 講師情報
	 * @return teacherList 全講師情報
	 */
	public List<teacherInfo> teacherDBSelect() throws Exception{
			List<teacherInfo> teacherList = new ArrayList<teacherInfo>();
			//DB接続
			connect();
			createStstement();
			selectExe(selectSql);
			//要素取得用準備
			ResultSet rs = getRsResult();
			teacherInfo teacherinfo;

			//全件取得
			while(rs.next()){

				teacherinfo = new teacherInfo(
						rs.getInt("teacherID"),
						rs.getString("teacherName"),
						rs.getString("password"));
				//講師要素を1件ずつリストに追加
				teacherList.add(teacherinfo);

			}//while

			disConnection();//切断

		return teacherList;

	}//select

	/*
	 * @param 講師情報 teacherinfo
	 * @see teacherControl
	 */
	public void teacherDBUpdate(teacherInfo ti,int state,String msg) throws Exception{
		connect();
		switch(state){
		case INSERT:
			createStstement(insertSql);
			getPstmt().setString(1,ti.getTeacherName());
			getPstmt().setString(2,ti.getPassword());

			break;
		case DELETE:
			createStstement(deleteSql);
			getPstmt().setInt(1,ti.getTeacherID());//削除するIDをセット

			break;
		}

		setMsg(resultMsg(ti,msg));//実行メッセージ取得
		updateExe();//実行
		disConnection();//切断

	}//method

private String resultMsg(teacherInfo ti,String msg){
		//処理が実行されなかったら
		if (getIntResult() == 0){
			return String.format("%sを%sできませんでした。",ti.getTeacherName(),msg);
		}
	return String.format("%sを%sしました。",ti.getTeacherName(),msg);
}


}
