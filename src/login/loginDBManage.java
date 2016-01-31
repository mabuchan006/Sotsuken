package login;

import DB.DBAccess;
import manage.db.teacherInfo;

public class loginDBManage extends DBAccess{

	private final static String DRIVER_NAME = "java:comp/env/jdbc/MySqlCon";

	private String selectSql;
	//private String searchSql;
	private String msg;

	public String getMsg() {
		return msg;
	}//getMsg

	public void setMsg(String msg) {
		this.msg = msg;
	}//setMsg

	public loginDBManage() {
		//DBAccessに接続
		super(DRIVER_NAME);
		selectSql =
				String.format( "select teacherName,teacherID,password from tbl_teacher where teacherID =? AND password=?");
	}//loginDBManage()

	public teacherInfo userDBSearch(teacherInfo ti) throws Exception{
		//接続
		connect();
		//selectSqlをDBへ流す
		createStstement(selectSql);
		getPstmt().setInt( 1 , ti.getTeacherID() );
		getPstmt().setString( 2 , ti.getPassword() );
		//PreparedStatement実行
		selectExe();

		//格納ユーザーインスタンス
		teacherInfo teacher = null;
		if( getRsResult().next() ){
			teacher = new teacherInfo(
					getRsResult().getInt( "teacherID" ),
					getRsResult().getString( "teacherName" ),
					getRsResult().getString( "password" )
					);
		}//if
		System.out.println("test");
		//接続解除
		disConnection();
		return teacher;
	}//userDBSearch


	public String resultMsg(teacherInfo ti,String msg){
		//処理が実行されなかったら
		if ( getIntResult() == 0 ){
			return String.format( "%sを%sできませんでした。" , ti.getTeacherName() , msg );
		}//if
		return String.format( "%sを%sしました。" , ti.getTeacherName() , msg );
	}//resultMsg

}
