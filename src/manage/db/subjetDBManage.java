package manage.db;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DB.DBAccess;
/*
 * @author syam
 * @see subjectInfo
 */

public class subjetDBManage extends DBAccess{
	private String selectSql;//科目全検索用
	private String deleteSql;//科目1件削除用
	private String insertSql;//科目1件登録用

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

	public subjetDBManage() {
		super(DRIVER_NAME);//DBAccessに接続
		//ID,NAME,PASSを全件取得sql
		selectSql = String.format("select classID,className from tbl_class");
		//科目IDから削除からsql
		deleteSql = String.format("delete  from tbl_class where classID = ?");
		//科目情報登録sql
		insertSql= String.format(" insert into tbl_class (classID, className) values ( ? , ? )");
	}
	/*
	 * @param classinfo 科目情報
	 * @return classList 全科目情報
	 */
	public List<subjectInfo> subjectDBSelect() throws Exception{
			List<subjectInfo> subjectList = new ArrayList<subjectInfo>();
			//DB接続
			connect();
			createStstement();
			selectExe(selectSql);
			//要素取得用準備
			ResultSet rs = getRsResult();
			subjectInfo subjectinfo;

			//全件取得
			while(rs.next()){

				subjectinfo = new subjectInfo(
						rs.getInt("subjectID"),
						rs.getString("subjectName"),
						rs.getString("bringThings"),
						rs.getInt("showFlag"));

				//科目要素を1件ずつリストに追加
				subjectList.add(subjectinfo);


			}//while

			disConnection();//切断

		return subjectList;

	}//select

	/*
	 * @param 科目情報 subjectinfo
	 * @see subjectControl
	 */
	public void subjectDBUpdate(subjectInfo ci,int state,String msg) throws Exception{
		connect();
		switch(state){
		case INSERT:
			createStstement(insertSql);
			getPstmt().setInt(1,ci.getSubjectID());
			getPstmt().setString(2,ci.getSubjectName());

			break;
		case DELETE:
			createStstement(deleteSql);
			getPstmt().setInt(1,ci.getSubjectID());//削除するIDをセット

			break;
		}

		setMsg(resultMsg(ci,msg));//実行メッセージ取得
		updateExe();//実行
		disConnection();//切断

	}//method

private String resultMsg(subjectInfo ci,String msg){
		//処理が実行されなかったら
		if (getIntResult() == 0){
			return String.format("%sを%sできませんでした。",ci.getSubjectID(),msg);
		}
	return String.format("%sを%sしました。",ci.getSubjectID(),msg);
}


}
