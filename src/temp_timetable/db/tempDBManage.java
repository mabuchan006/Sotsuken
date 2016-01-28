package temp_timetable.db;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DB.DBAccess;

public class tempDBManage extends DBAccess {
	private final static String DRIVER_NAME = "java:comp/env/jdbc/MySqlCon";
	private String selectSQL;
	private String insertSQL;
	private String deleteSQL;
	private String checkDB;
	private String roomsSQL; //コマ割りから部屋情報取得

		//ClassManage用　動的生成　削除対応
	private String createDBSQL;
	private String dropDBSQL;





	List<tempInfo> tempinfo = new ArrayList<tempInfo>();


	public tempDBManage() {
		super(DRIVER_NAME);

	}

	public tempDBManage(String tblName) {
		super(DRIVER_NAME);
		roomsSQL = String.format("SELECT divide.period, divide.week, GROUP_CONCAT(DISTINCT room.roomName separator '/') AS roomName "
	            +"FROM tbl_room room "
	            +"INNER JOIN tbl_timedivide divide on room.roomID = divide.roomID "
	            +"GROUP BY divide.classID, divide.period, divide.week "
	            +"HAVING divide.classID = ? && divide.period = ? "
	            +"ORDER BY CASE divide.week when '月' then 1 when '火' then 2 when '水' then 3 when '木' then 4 "
	            +"when '金' then 5 when '土' then 6 when '日' then 7 end");


		insertSQL = String.format("replace into %s(period, subjectID, date, classID, roomName, teacherName) values(?,?,?,?,?,?)",tblName);

		selectSQL =String.format("SELECT sub.subjectName,temp.teacherName,temp.date,temp.subjectID FROM %s temp "
				+ "INNER JOIN tbl_subject sub on sub.subjectID = temp.subjectID "
				+ "where period = ? ORDER BY date ASC",tblName);

		deleteSQL = String.format("DELETE FROM %s",tblName);

		checkDB = String.format("SELECT COUNT(*) FROM %s",tblName);
	}



	public List<roomInfo> roomsSelect(int periodNum,String classID) throws Exception{
		List<roomInfo> roomsList = new ArrayList<roomInfo>();
				//DB接続
				connect();

				//SQL実行
				createStstement(roomsSQL);
				getPstmt().setString(1, classID);
				getPstmt().setInt(2, periodNum);
				selectExe();
				ResultSet rs = getRsResult();
				roomInfo roominfo = null;
					while(rs.next()) {
								 roominfo =new roomInfo(
										 rs.getInt("period"),
										 rs.getString("week"),
										 rs.getString("roomName")
										 );
								 roomsList.add(roominfo);
					}
					disConnection();
					return roomsList;
	} //コマ割り部屋情報　取得

	public void tempDBInsert(List<tempInfo> tiList){

		try {
			//DB接続
			connect();

			for (tempInfo ti : tiList) {
				createStstement(insertSQL);

				getPstmt().setString(1,ti.getPeriod());

				getPstmt().setInt(2, ti.getSubjectID());

				getPstmt().setString(3, ti.getDate());

				getPstmt().setString(4, ti.getClassID());

				getPstmt().setString(5, ti.getRoomName());

				getPstmt().setString(6, ti.getTeacherName());

				updateExe();

			}//for
			disConnection();
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
	}//Post Data登録

	public List<tempInfo> regSelect(String period) throws Exception{
		 List <tempInfo> regtiList = new ArrayList<>();
		 connect();
		createStstement(selectSQL);
		getPstmt().setString(1, period);
		selectExe();
		ResultSet rs = getRsResult();
		tempInfo tempinfo;

		while (rs.next()) {
			tempinfo = new tempInfo("", rs.getString("subjectName"), rs.getString("date"), "", "",rs.getString("teacherName"),rs.getInt("subjectID"));
			regtiList.add(tempinfo);
		}
		disConnection();
		return regtiList;
	} //regist Data取得

	public void tempDelete() throws Exception {
		connect();
		createStstement();
		updateExe(deleteSQL);
		disConnection();
	}//tempDB Delete

	public int existCheck() throws Exception{
		connect();
		createStstement();
		selectExe(checkDB);
		ResultSet rs = getRsResult();
		rs.next();
		int count = rs.getInt(1);
		return count;
	}
	//ClassTBL動的対応用
	public void tblCreate(String classID) throws Exception{
		String tblName = "tbl_temp_"+ classID +"timetable";
		createDBSQL = String.format("CREATE TABLE IF NOT EXISTS %s( "
				+ "period CHAR(1) NOT NULL, "
				+ "subjectID int NOT NULL auto_increment, "
				+ "date DATE NOT NULL, "
				+ "classID CHAR(4) NOT NULL, "
				+ "roomName VARCHAR(20) NOT NULL, "
				+ "teacherName VARCHAR(20) NOT NULL, "
				+ "PRIMARY KEY (period,date,classID,subjectID), "
				+ "FOREIGN KEY (classID) "
				+ "REFERENCES tbl_class(classID), "
				+ "FOREIGN KEY (subjectID) "
				+ "REFERENCES tbl_subject(subjectID) "
				+ ")ENGINE=InnoDB DEFAULT CHARSET=utf8",tblName);
		connect();
		createStstement();
		updateExe(createDBSQL);
		disConnection();
	}
	//ClassTBL動的対応用
	public void tblDrop(String classID) throws Exception {
		String tblName = "tbl_temp_"+ classID +"timetable";
		dropDBSQL =String.format("DROP TABLE if exists %s", tblName);
		connect();
		createStstement();
		updateExe(dropDBSQL);
		disConnection();
	}//tempDB Drop
}
