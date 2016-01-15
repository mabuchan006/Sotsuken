package event.db;

import DB.DBAccess;

public class  eventDBManage extends DBAccess{
	private final static String DRIVER_NAME = "java:comp/env/jdbc/MySqlCon";//コネクタ

	private String selectSql;//クラス全検索用
	private String deleteSql;//クラス1件削除用
	private String insertSql;//クラス1件登録用


	public eventDBManage(){
		super(DRIVER_NAME);
		selectSql = String.format("select * from tbl_event");
		//クラスIDから削除からsql
		deleteSql = String.format("delete  from tbl_event where eventID = ?");
		//クラス情報登録sql
		insertSql= String.format(" insert into tbl_class (period,date,classID, roomID,eventName,endFlag,guestTeacher,notice) values ( ? , ? )");
	}
}