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

public class subjectDBManage extends DBAccess {
	private String selectSql;// 科目全検索用
	private String deleteSql;// 科目1件削除用
	private String deleteClass;//クラス情報テーブル削除
	private String insertSql;// 科目1件登録用
	private String ins_infoSubject;// 科目、クラス対応テーブル挿入
	private String selectBox;// 科目管理画面のセレクトボックス表示用
	private String selectAll;//対象学科全部
	private String selectTID;//講師参照制約用



	// *******Msg*********
	private String msg;

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	// ********endMsg*************
	private final static String DRIVER_NAME = "java:comp/env/jdbc/MySqlCon";// コネクタ

	public subjectDBManage() {
		super(DRIVER_NAME);// DBAccessに接続
		// ID,NAME、持ち物、表示フラグを全件取得sql
		selectSql = String.format("select subjectID,subjectName,bringThings,showFlag from tbl_subject");
		//参照制約用
		selectTID = String.format("select subjectID from tbl_subject where subjectName = ?");
		// selectbox表示用
		selectBox = String.format("select classID from tbl_class");
		// 科目IDから削除からsql
		deleteSql = String.format("delete  from tbl_subject where subjectID = ?");
		// 科目IDから削除からsql
		deleteSql = String.format("delete  from tbl_infosubject where subjectID = ?");
		//ALL処理用
		selectAll = String.format("select classID from tbl_class where classID LIKE ?");
		// 科目情報登録sql
		insertSql = String.format(" insert into tbl_subject " + "(subjectName,bringThings,showFlag) values (?,?,?)");
		// クラス情報テーブル登録sql
		ins_infoSubject = String.format("insert into tbl_infoSubject " + "(classID,subjectID) values (?,?)");
	}

	/*
	 * @param subjectinfo 科目情報
	 *
	 * @return subjectList 全科目情報
	 */
	 public List<subjectInfo> subjectDBSelect() throws Exception {
	 List<subjectInfo> subjectList = new ArrayList<subjectInfo>();
	 // DB接続
	 connect();
	 createStstement();
	 selectExe(selectSql);
	 // 要素取得用準備
	 ResultSet rs = getRsResult();
	 subjectInfo subjectinfo;

	 // 全件取得
	 while (rs.next()) {

	 subjectinfo = new subjectInfo(rs.getInt("subjectID"),
	 rs.getString("subjectName"),
	 rs.getString("bringThings"), rs.getInt("showFlag"));

	 // 科目要素を1件ずつリストに追加
	 subjectList.add(subjectinfo);

	 } // while

	 disConnection();// 切断

	 return subjectList;

	 }// select

	/*
	 * @param 科目情報 subjectinfo
	 *
	 * @param クラス情報 classID
	 *
	 * @see subjectControl
	 */
	 public void subjectDBUpdate(subjectInfo ci, String classID, int state,
	 String msg) throws Exception {
	 connect();
	 switch (state) {
	 case INSERT:

	 // 通常科目情報登録
	 createStstement(insertSql);
	 getPstmt().setString(1, ci.getSubjectName());
	 getPstmt().setString(2, ci.getBringThings());
	 getPstmt().setInt(3, ci.getShowFlag());

	 // クラス情報テーブルが外部キー参照するため一度実行
	 updateExe();// 実行

	 disConnection();// 切断

	 // クラス情報テーブル登録
	 connect();
	 createStstement(selectTID);
	 getPstmt().setString(1,ci.getSubjectName());
	 selectExe();

	 int subjectID=0;
	 ResultSet rs = getRsResult();
	 while(rs.next()){
		 subjectID = rs.getInt("subjectID");
	 }


	 createStstement(ins_infoSubject);
	 getPstmt().setString(1, classID);
	 getPstmt().setInt(2, subjectID);


	 break;
	 case DELETE:
	 createStstement(deleteSql);
	 getPstmt().setInt(1, ci.getSubjectID());// 削除するIDをセット
	 updateExe();// 実行
	 createStstement(deleteClass);
	 getPstmt().setInt(1, ci.getSubjectID());

	 break;
	 }



	 updateExe();// 実行
	 setMsg(resultMsg(ci, msg));// 実行メッセージ取得
	 disConnection();// 切断


	 }// method


	 public List<String> classALLSelect(String grade) throws Exception{

		 List<String> courceList = new ArrayList<String>();
		 connect();
		 createStstement(selectAll);
		 getPstmt().setString(1, "%"+grade+"%");
		 selectExe();

		 ResultSet rs = getRsResult();

		 while(rs.next()){
			 courceList.add(rs.getString("classID"));
			 System.out.println(rs.getString("classID"));

		 }




		return courceList;

	 }

	/*
	 * @param classID クラスID
	 *
	 * @return classMap 分割したクラス情報
	 */
	public HashMap<String, List<String>> classDBSelect() throws Exception {

		// 分割クラス格納
		HashMap<String, List<String>> classMap = new HashMap<String, List<String>>();
		List<String> par_classList = new ArrayList<String>();// 分割したクラス格納
		// DB接続
		connect();
		createStstement();
		selectExe(selectBox);
		// 要素取得用準備
		ResultSet rs = getRsResult();
		String classID = null;
		String par_grade;

		while (rs.next()) {
			classID = rs.getString("classID");
			rs.beforeFirst();
			break;
		}
		par_grade = classID.substring(0, 2);// ex)R4A1 → R4 抽出

		// 全件取得 クラス情報分割処理
		while (rs.next()) {

			classID = rs.getString("classID");// クラスID取得

			// クラスが切り替わっていたら
			if (!(classID.substring(0, 2).equals(par_grade))) {
				// ex ) classMap → R4: [A1,A2,A3]
				// R3: [A1,A2]
				classMap.put(par_grade, par_classList);

				// 次のクラス
				par_grade = classID.substring(0, 2);// ex)R3A1 → R3 抽出
				par_classList = new ArrayList<String>();

			} // if
				// クラス専攻情報追加
			par_classList.add(classID.substring(2));

		} // while

		disConnection();// 切断

		return classMap;

	}// selectClass

	 private String resultMsg(subjectInfo ci, String msg) {
	 // 処理が実行されなかったら
	 if (getIntResult() == 0) {
	 return String.format("%sを%sできませんでした。", ci.getSubjectName(), msg);
	 }
	 return String.format("%sを%sしました。", ci.getSubjectName(), msg);
	 }

}
