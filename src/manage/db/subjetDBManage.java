package manage.db;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
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
	private String ins_infoSubject;//科目、クラス対応テーブル挿入
	private String selectBox;//科目管理画面のセレクトボックス表示用
	private String select_par;

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
		//ID,NAME、持ち物、表示フラグを全件取得sql
		selectSql = String.format("select subjectID,subjectName,bringThings,showFlag"
				+ " from tbl_subject");
		//selectbox表示用
		selectBox = String.format("select classID from tbl_class");
		select_par = String.format("select classID from tbl_class where classID like ' "+ " ? " +"% ' ");
		//科目IDから削除からsql
		deleteSql = String.format("delete  from tbl_subject where subjectID = ?");
		//科目情報登録sql
		insertSql= String.format(" insert into tbl_subject "
				+ "(subjectName,bringThings,showFlag) values (?,?,?)");
		//クラス情報テーブル登録sql
		ins_infoSubject = String.format("insert into tbl_infoSubject "
				+ "(classID,subjectID) values (?,?)");
	}
	/*
	 * @param subjectinfo 科目情報
	 * @return subjectList 全科目情報
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
	 * @param クラス情報 classID
	 * @see subjectControl
	 */
	public void subjectDBUpdate(subjectInfo ci,String classID,int state,String msg) throws Exception{
		connect();
		switch(state){
		case INSERT:
			//通常科目情報登録
			createStstement(insertSql);
			getPstmt().setInt(1,ci.getSubjectID());
			getPstmt().setString(2,ci.getSubjectName());

			//クラス情報テーブルが外部キー参照するため一度実行
			updateExe();//実行
			disConnection();//切断

			//クラス情報テーブル登録
			connect();
			createStstement(ins_infoSubject);
			getPstmt().setString(1,classID);
			getPstmt().setInt(2,ci.getSubjectID());

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


	/*
	 * @param classID クラスID
	 * @return classMap 分割したクラス情報
	 */
	public HashMap<String,List<String>> classDBSelect() throws Exception{

			//分割クラス格納
			HashMap<String,List<String>> classMap = new HashMap<String,List<String>>();
			List <String> par_classList = new ArrayList<String>();//分割したクラス格納
			//DB接続
			connect();
			createStstement();
			selectExe(selectBox);
			//要素取得用準備
			ResultSet rs = getRsResult();
			String classID;
			String par_grade;
			String par_class;
			String tempStr;
			
			//要素取得用準備
			ResultSet rs2;

			//全件取得
			while(rs.next()){

				classID = rs.getString("classID");
				
				selectExe(select_par);
				
				par_grade = classID.substring(0,2);

				tempStr  = par_grade;

				par_class =  classID.substring(2);

				if(par_grade.equals(tempStr)){
					par_classList.add(par_class);
				}//if






			}//while

			disConnection();//切断

		return classMap;

	}//selectClass

private String resultMsg(subjectInfo ci,String msg){
		//処理が実行されなかったら
		if (getIntResult() == 0){
			return String.format("%sを%sできませんでした。",ci.getSubjectID(),msg);
		}
	return String.format("%sを%sしました。",ci.getSubjectID(),msg);
}


}
