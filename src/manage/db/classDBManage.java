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
		selectSql = String.format("select classID,className from tbl_class");
		//クラスIDから削除からsql
		deleteSql = String.format("delete  from tbl_class where classID = ?");
		//クラス情報登録sql
		insertSql= String.format(" insert into tbl_class (classID, className) values ( ? , ? )");
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

	/*
	 * @param クラス情報 classinfo
	 * @see classControl
	 */
	public void classDBUpdate(classInfo ci,int state,String msg) throws Exception{
		connect();
		switch(state){
		case INSERT:
			createStstement(insertSql);
			getPstmt().setString(1,ci.getClassID());
			getPstmt().setString(2,ci.getClassName());

			break;
		case DELETE:
			createStstement(deleteSql);
			getPstmt().setString(1,ci.getClassID());//削除するIDをセット

			break;
		}

		setMsg(resultMsg(ci,msg));//実行メッセージ取得
		updateExe();//実行
		disConnection();//切断

	}//method

private String resultMsg(classInfo ci,String msg){
		//処理が実行されなかったら
		if (getIntResult() == 0){
			return String.format("%sを%sできませんでした。",ci.getClassID(),msg);
		}
	return String.format("%sを%sしました。",ci.getClassID(),msg);
}


}
