package timetable.db;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DB.DBAccess;

public class masterDBManage extends DBAccess {
	private final static String DRIVER_NAME = "java:comp/env/jdbc/MySqlCon";

	//マスタ時間割抽出用
	private String masterDataSQL;
	private String masterUpDate;
	private String dateSQL; //日付取得用
	private String deleteSQL;

	private String dropDBSQL;
	private String createDBSQL;

	private String excelSql;

	public masterDBManage() {
		super(DRIVER_NAME);
	}

	public masterDBManage(String chooseTableName) {
		super(DRIVER_NAME);
		masterDataSQL = String.format("SELECT period,subjectName,date,classID, roomName,teacherName,bringThings "
							 +"FROM %s "
                             +"WHERE period =? ORDER BY date,period ASC",chooseTableName);

		dateSQL =String.format("SELECT date FROM %s GROUP BY date order by date asc",chooseTableName);

		excelSql = String.format("SELECT e.period, m.date, e.eventName, e.endFlag "
				+ "FROM %s m, tbl_event e "
				+ "WHERE m.date = e.date AND m.period = 1 ORDER BY m.date ASC", chooseTableName);
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
		createStstement(masterDataSQL);
		//SQL実行
		getPstmt().setInt(1, periodNum);
		selectExe();
		ResultSet rs = getRsResult();
		masterInfo masterinfo = null;
			while(rs.next()) {
				masterinfo = new masterInfo(
						rs.getInt("period"),
						rs.getString("subjectName"),
						rs.getDate("date"),
						rs.getString("classID"),
						rs.getString("roomName"),
						rs.getString("teacherName"),
						rs.getString("bringThings")
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
						"",
						""
						);
				timeTableDateList.add(masterinfo);
			}
			disConnection();
		return timeTableDateList;

	}

	public void masterUpdate(String masterTableName,String tempTableName) throws Exception{

		masterUpDate = String.format("INSERT INTO "+ masterTableName +" (period, subjectName, date, classID, roomName, teacherName, bringThings) "
			+ "SELECT temp.period, sub.subjectName, temp.date, temp.classID, temp.roomName, temp.teacherName, sub.bringThings "
			+ "FROM "+ tempTableName +" temp "
			+ "INNER JOIN tbl_subject sub on sub.subjectID = temp.subjectID "
			+ "ORDER BY temp.date,temp.period");

		connect();
		createStstement();
		updateExe(masterUpDate);
		disConnection();
	} //TempからMasterにUpdate

	public void masterDelete(String masterTableName) throws Exception {
		deleteSQL = String.format("DELETE FROM "+masterTableName);
		connect();
		createStstement();
		updateExe(deleteSQL);
		disConnection();
	}//masterDB Delete


	//ClassTBL動的対応用
	public void tblCreate(String classID) throws Exception{
		String tblName = "tbl_master_"+ classID +"timetable";
		createDBSQL = String.format("CREATE TABLE IF NOT EXISTS %s( "
				+ "period CHAR(1) NOT NULL, "
				+ "subjectName VARCHAR(20) NOT NULL, "
				+ "date DATE NOT NULL, "
				+ "classID CHAR(4) NOT NULL, "
				+ "roomName VARCHAR(20) NOT NULL, "
				+ "teacherName VARCHAR(20) NOT NULL, "
				+ "bringThings VARCHAR(50), "
				+ "PRIMARY KEY(period,date,classID), "
				+ "FOREIGN KEY (classID) "
				+ "REFERENCES tbl_class(classID) "
				+ ")ENGINE=InnoDB DEFAULT CHARSET=utf8",tblName);
		connect();
		createStstement();
		updateExe(createDBSQL);
		disConnection();
	}
	//ClassTBL動的対応用
	public void tblDrop(String classID) throws Exception {
		String tblName = "tbl_master_"+ classID +"timetable";
		dropDBSQL =String.format("DROP TABLE if exists %s", tblName);
		connect();
		createStstement();
		updateExe(dropDBSQL);
		disConnection();
	}//MasterDB Drop

	public List<masterInfo> excelExp() throws Exception{
		List<masterInfo> timeTableMasterList = new ArrayList<masterInfo>();
		//DB接続
		connect();
		//ステートメント作成
		createStstement(excelSql);
		//SQL実行
		selectExe();
		ResultSet rs = getRsResult();
		masterInfo masterinfo = null;
			while(rs.next()) {
				masterinfo = new masterInfo(
						rs.getInt("period"),
						rs.getDate("date"),
						rs.getString("eventName"),
						rs.getString("endFlag")
						);
				timeTableMasterList.add(masterinfo);
			}
			disConnection();
		return timeTableMasterList;

	}
}
