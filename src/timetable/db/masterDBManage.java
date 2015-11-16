package timetable.db;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DB.DBAccess;

public class masterDBManage extends DBAccess {
	private final static String DRIVER_NAME = "java:comp/env/jdbc/MySqlCon";
	private String selectSQL;  //マスタ時間割抽出用

	public masterDBManage() {
		super(DRIVER_NAME);
		StringBuilder sb = new StringBuilder();
		//TODO テーブルを柔軟にすること。
		sb.append("SELECT * FROM tbl_master_R4A1timetable order by date asc");
		selectSQL = sb.toString();
		sb.setLength(0);
	}
	/**
	 * @param
	 *
	 *
	 * @return マスタ時間割情報
	 * @throws Exception
	 */
	public List<masterInfo> selectTimeTable() throws Exception{
		List<masterInfo> timeTableMasterList = new ArrayList<masterInfo>();

		//DB接続
		connect();
		//ステートメント作成
		createStstement();
		//SQL実行
		selectExe(selectSQL);
		ResultSet rs = getRsResult();
		masterInfo masterinfo = null;
			while(rs.next()) {
				masterinfo = new masterInfo(
						rs.getInt("period"),
						rs.getString("subjectID"),
						rs.getDate("date"),
						rs.getString("classID"),
						rs.getString("roomID"),
						rs.getString("teacherName")
						);
				timeTableMasterList.add(masterinfo);
			}
		return timeTableMasterList;

	}
}
