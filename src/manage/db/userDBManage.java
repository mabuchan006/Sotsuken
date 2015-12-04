package manage.db;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DB.DBAccess;


public class userDBManage extends DBAccess{

	//接続ドライバ未定義
	private final static String DRIVER_NAME = "java:comp/env/jdbc/MySqlCon";

	private String selectSql;
	private String searchSql;
	private String msg;

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public userDBManage() {
		//DBAccessに接続
		super(DRIVER_NAME);
		selectSql =
				String.format( "select id from %s where name=?" );
		searchSql =
				String.format( "select teacherID,teacherName,password from tbl_teacher" );
	}

	public List<teacherInfo> userDBSelect() throws Exception{
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

//	public userInfo userDBSearch(userInfo ui) throws Exception{
//		connect();
//		createStstement(searchSql);
//		getPstmt().setString(1,ui.getTeacherName());
//		getPstmt().setString(2,ui.getPassword());
//		selectExe();//PreparedStatement実行
//		//格納ユーザーインスタンス
//		userInfo user = null;
//		if( getRsResult().next() ){
//			user = new userInfo(
//					getRsResult().getInt("id"),
//					getRsResult().getString("password")
//					);
//		}//if
//		disConnection();
//		return user;
//	}//userDBSearch

	public int userIDSearch(String name) throws Exception{
		//接続
		connect();
		//sql文指定 name=?
		createStstement(selectSql);
		//取得したユーザー情報から名前を取得
		getPstmt().setString(1,name);
		//PreparedStatement実行
		selectExe();
		int id = 0;
		//ResultSet実行、情報取得
		if(getRsResult().next()){
				id=getRsResult().getInt("id");
		}//if
		//切断
		disConnection();
		return id;
	}

	private String resultMsg(teacherInfo ti,String msg){
		//処理が実行されなかったら
		if (getIntResult() == 0){
			return String.format("%sを%sできませんでした。",ti.getTeacherName(),msg);
		}
		return String.format("%sを%sしました。",ti.getTeacherName(),msg);
	}//resultMsg

}
