package temp_timetable.db;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DB.DBAccess;

public class subjectDBManage extends DBAccess {
	private final static String DRIVER_NAME = "java:comp/env/jdbc/MySqlCon";
	private String choiceSubjectSQL; //クラスIDから各科目抽出

	public subjectDBManage(String chooseClassID) {
		super(DRIVER_NAME);
		choiceSubjectSQL = String.format("SELECT infoSub.subjectID, sub.subjectName, infoSub.classID, cla.className "
                +"FROM tbl_infoSubject infoSub "
                +"INNER JOIN tbl_subject sub on infoSub.subjectID = sub.subjectID "
                +"INNER JOIN tbl_class cla on infoSub.classID = cla.classID "
                +"WHERE infoSub.classID = '%s' ORDER BY infoSub.subjectID ASC",chooseClassID);

		// TODO 自動生成されたコンストラクター・スタブ
	}

	public List<subjectInfo> choiceSubject() throws Exception{
		List<subjectInfo> infoSubjectList = new ArrayList<subjectInfo>();
		//DB接続
			connect();
		//ステートメント作成
			createStstement();
		//SQL実行
			selectExe(choiceSubjectSQL);
			ResultSet rs = getRsResult();
			subjectInfo infoSub = null;
				while(rs.next()) {
					infoSub = new subjectInfo(
							rs.getString("subjectID"),
							rs.getString("subjectName"),
							rs.getString("classID"),
							rs.getString("className")
							);
				infoSubjectList.add(infoSub);

				}
				disConnection();
		return infoSubjectList;

	}

}
