package manage.db;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;

import DB.DBAccess;
/*
 * @author syam
 * @see subjectInfo
 */

public class subjectDBManage extends DBAccess {
	private String selectSql;// 科目全検索用
	private String deleteSql;// 科目1件削除用
	private String deleteClass;// クラス情報テーブル削除
	private String insertSql;// 科目1件登録用
	private String ins_infoSubject;// 科目、クラス対応テーブル挿入
	private String selectBox;// 科目管理画面のセレクトボックス表示用
	private String selectAll;// 対象学科全部
	private String selectTID;// 講師参照制約用
	private String updateSql;//持ち物情報更新用
	private String replaseSql;
	private String selectInsert;
	private String selectInfo;
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
		//class情報と関連付けた科目情報sql
		// 参照制約用
		selectTID = String.format("select subjectID from tbl_subject where subjectName = ?");
		// selectbox表示用
		selectBox = String.format("select classID from tbl_class order by classID");
		// ALL処理用
		selectAll = String.format("select classID from tbl_class where classID LIKE ?");
		// 科目情報登録sql
		selectInsert=String.format("select subjectID,bringThings from tbl_subject where subjectName = ?");
		selectInfo=String.format("select classID from tbl_infoSubject where subjectID = ? ");
		insertSql = String.format(" insert into tbl_subject " + "(subjectName,bringThings,showFlag) values (?,?,?)");
		replaseSql = String.format(" update tbl_subject " +
		" set subjectName=? , bringThings=? , showFlag = ? where subjectID = ?");
		// クラス情報テーブル登録sql
		ins_infoSubject = String.format("replace into tbl_infoSubject " + "(classID,subjectID) values (?,?)");
		//持ち物更新sql
		updateSql = String.format("update tbl_subject set bringThings = ? where subjectID = ?");
		// 科目IDから削除からsql
		deleteSql = String.format("delete from tbl_subject where subjectID = ?");
		// 科目IDから削除からsql
		deleteClass = String.format("delete from tbl_infoSubject where subjectID = ?");
	}

	/*
	 * @param subjectinfo 科目情報
	 *
	 * @return subjectList 全科目情報
	 */
	public List<subjectInfo> subjectDBSelect() throws Exception {
		List<subjectInfo> subjectList = new ArrayList<subjectInfo>();
		List<String> classList =new ArrayList<String>();
		// DB接続
		connect();
		createStstement();
		selectExe(selectSql);
		// 要素取得用準備
		ResultSet rs = getRsResult();
		ResultSet classRs;
		subjectInfo subjectinfo;

		// 全件取得
		while (rs.next()) {

			subjectinfo = new subjectInfo(rs.getInt("subjectID"), rs.getString("subjectName"),
					rs.getString("bringThings"), rs.getInt("showFlag"));

			createStstement(selectInfo);

			getPstmt().setInt(1, subjectinfo.getSubjectID());
			selectExe();
			// 要素取得用準備
			classRs = getRsResult();
			while(classRs.next()){
				classList.add(classRs.getString("classID"));
			}//while
			subjectinfo.setClassList(classList);
			// 科目要素を1件ずつリストに追加
			if(!((subjectinfo.getSubjectName()).length()==0)){//空白排除
			subjectList.add(subjectinfo);
			}
			classList=new ArrayList<String>();
		}//while

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
	public void subjectDBUpdate(subjectInfo si, String classID, int state, String msg) throws Exception {

		connect();
		switch (state) {
		// 登録
		case INSERT:
			//ALLの時にすべてのものがUPDATEされてしまう

			// 入力情報に誤りがなければ
			if (!((si.getSubjectName()).equals("") || classID.length() > 4)) {

				createStstement(selectInsert);
				getPstmt().setString(1, si.getSubjectName());
				selectExe();
				// 要素取得用準備
				ResultSet boolRs = getRsResult();
				if(boolRs.next()){
				// 重複科目情報登録
				createStstement(replaseSql);
				getPstmt().setInt(4, boolRs.getInt("subjectID"));
				getPstmt().setString(1, si.getSubjectName());
				getPstmt().setString(2, si.getBringThings()==""?boolRs.getString("bringThings")
						:si.getBringThings());
				getPstmt().setInt(3, si.getShowFlag());
				}else{
				// 新規科目情報登録
				createStstement(insertSql);
				getPstmt().setString(1, si.getSubjectName());
				getPstmt().setString(2, si.getBringThings()==""?"なし"
						:si.getBringThings());
				getPstmt().setInt(3, si.getShowFlag());
				}//if
				// クラス情報テーブルが外部キー参照するため一度実行
				updateExe();// 実行

				disConnection();// 切断

				// クラス情報テーブル登録
				connect();
				createStstement(selectTID);
				getPstmt().setString(1, si.getSubjectName());
				selectExe();

				int subjectID = 0;
				ResultSet rs = getRsResult();
				while (rs.next()) {
					subjectID = rs.getInt("subjectID");
				}

				createStstement(ins_infoSubject);
				getPstmt().setString(1, classID);
				getPstmt().setInt(2, subjectID);
				updateExe();// 実行
			}//if
			break;
		// 削除
		case DELETE:
			createStstement(deleteClass);

			getPstmt().setInt(1, si.getSubjectID());// 削除するIDをセット
			updateExe();// 実行

			createStstement(deleteSql);
			getPstmt().setInt(1, si.getSubjectID());
			updateExe();// 実行

			break;
		case UODATE:
			createStstement(updateSql);
			getPstmt().setInt(2, si.getSubjectID());
			getPstmt().setString(1, si.getBringThings());

			updateExe();//実行

			break;
		}

		if(state!=UODATE){
		setMsg(resultMsg(si,msg));//実行メッセージ取得
		}//if
		disConnection();// 切断

	}// method

	// 選択学年から対応する学科を取得
	public List<String> classALLSelect(String grade) throws Exception {

		List<String> courceList = new ArrayList<String>();
		connect();
		createStstement(selectAll);
		getPstmt().setString(1, grade + "%");
		selectExe();

		ResultSet rs = getRsResult();

		while (rs.next()) {

			courceList.add(rs.getString("classID"));

		}

		return courceList;

	}

	/*
	 * @param classID クラスID
	 *
	 * @return classMap 分割したクラス情報
	 */
	public TreeMap<String, List<String>> classDBSelect() throws Exception {

		// 分割クラス格納
		TreeMap<String, List<String>> classMap = new TreeMap<String, List<String>>();
		// 学科リスト
		List<String> par_classList = new ArrayList<String>();
		// DB接続
		connect();
		createStstement();
		//全クラス取得
		selectExe(selectBox);
		// 要素取得用準備
		ResultSet rs = getRsResult();
		String classID = null;
		String par_grade="";//学年
		//初回比較用のクラスID取得
		while (rs.next()) {
			classID = rs.getString("classID");
			//最初に戻す
			rs.beforeFirst();
			break;
		}//while
		if(classID!=null){
		par_grade = classID.substring(0, 2);// ex)R4A1 → R4 学年抽出
		}
		// 全件取得 クラス情報分割処理
		while (rs.next()) {

			classID = rs.getString("classID");// クラスID取得

			// クラスが切り替わっていたら
			if (!(classID.substring(0, 2).equals(par_grade))) {
				// ex ) classMap → R4: [A1,A2,A3]
				// R3: [A1,A2]
				Collections.sort(par_classList);
				//学年学科情報追加
				classMap.put(par_grade, par_classList);
				// 次の学年
				par_grade = classID.substring(0, 2);// ex)R3A1 → R3 抽出
				par_classList = new ArrayList<String>();

			} // if

				par_classList.add(classID.substring(2));//学科リストに学科追加

		} // while
		//最後にもう一回
		classMap.put(par_grade, par_classList);
		disConnection();// 切断

		return classMap;

	}// selectClass

	private String resultMsg(subjectInfo ci, String msg) {

		if (getIntResult() != 0) {
			return String.format("%sを%sしました。", ci.getSubjectName(), msg);

		}
		return String.format("入力情報に誤りがあります");

	}

}
