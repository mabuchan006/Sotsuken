package timetable.db;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DB.DBAccess;

public class masterDBManage extends DBAccess {
	private final static String DRIVER_NAME = "java:comp/env/jdbc/MySqlCon";

	//マスタ時間割抽出用
	private String period1_SQL;
	private String period2_SQL;
	private String period3_SQL;
	private String period4_SQL;

	private String dateSQL; //日付取得用

	public masterDBManage(String chooseTableName) {
		super(DRIVER_NAME);
		StringBuilder sb = new StringBuilder();
		//TODO テーブルを柔軟にすること。
		period1_SQL = String.format("SELECT timetable.period, subject.subjectName, timetable.date, timetable.classID, room.roomName, timetable.teacherName "
							 +"FROM %s timetable "
                             +"INNER JOIN tbl_subject subject on timetable.subjectID = subject.subjectID "
                             +"INNER JOIN tbl_room room on timetable.roomID = room.roomID "
                             +"Where timetable.period = '1' ORDER BY date,period ASC",chooseTableName);


		period2_SQL =String.format("SELECT timetable.period, subject.subjectName, timetable.date, timetable.classID, room.roomName, timetable.teacherName "
                             +"FROM %s timetable "
                             +"INNER JOIN tbl_subject subject on timetable.subjectID = subject.subjectID "
                             +"INNER JOIN tbl_room room on timetable.roomID = room.roomID "
                             +"Where timetable.period = '2' ORDER BY date,period ASC",chooseTableName);


		period3_SQL =String.format("SELECT timetable.period, subject.subjectName, timetable.date, timetable.classID, room.roomName, timetable.teacherName "
                             +"FROM %s timetable "
                             +"INNER JOIN tbl_subject subject on timetable.subjectID = subject.subjectID "
                             +"INNER JOIN tbl_room room on timetable.roomID = room.roomID "
                             +"Where timetable.period = '3' ORDER BY date,period ASC",chooseTableName);

		period4_SQL =String.format("SELECT timetable.period, subject.subjectName, timetable.date, timetable.classID, room.roomName, timetable.teacherName "
                             +"FROM %s timetable "
                             +"INNER JOIN tbl_subject subject on timetable.subjectID = subject.subjectID "
                             +"INNER JOIN tbl_room room on timetable.roomID = room.roomID "
                             +"Where timetable.period = '4' ORDER BY date,period ASC",chooseTableName);




		dateSQL =String.format("SELECT date FROM %s GROUP BY date order by date asc",chooseTableName);
	}
	/**
	 * @param
	 *
	 *
	 * @return マスタ時間割情報
	 * @throws Exception
	 */
	public List<masterInfo> selectTimeTable(int periodNum) throws Exception{
		List<masterInfo> timeTableMasterList = new ArrayList<masterInfo>();


		//DB接続
		connect();
		//ステートメント作成
		createStstement();
		//SQL実行 switch(時限選択)
		switch (periodNum) {
		case 1:
			selectExe(period1_SQL);
			break;
		case 2:
			selectExe(period2_SQL);
			break;
		case 3:
			selectExe(period3_SQL);
			break;
		case 4:
			selectExe(period4_SQL);
			break;
		}
		ResultSet rs = getRsResult();
		masterInfo masterinfo = null;
			while(rs.next()) {
				masterinfo = new masterInfo(
						rs.getInt("period"),
						rs.getString("subjectName"),
						rs.getDate("date"),
						rs.getString("classID"),
						rs.getString("roomName"),
						rs.getString("teacherName")
						);
				timeTableMasterList.add(masterinfo);
			}
			disConnection();
		return timeTableMasterList;

	}

	/**
	 *
	 * @return 日付取得用
	 * @throws Exception
	 */
	public List<masterInfo> dateSelect() throws Exception{
		List<masterInfo> timeTableDateList = new ArrayList<masterInfo>();

		//DB接続
		connect();
		//ステートメント作成
		createStstement();
		//SQL実行
		selectExe(dateSQL);
		ResultSet rs = getRsResult();
		masterInfo masterinfo = null;
			while(rs.next()) {
				masterinfo = new masterInfo(
						0,
						"",
						rs.getDate("date"),
						"",
						"",
						"");
				timeTableDateList.add(masterinfo);
			}
			disConnection();
		return timeTableDateList;

	}
}
