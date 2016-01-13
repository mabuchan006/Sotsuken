package temp_timetable.db;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DB.DBAccess;

public class tempDBManage extends DBAccess {
	private final static String DRIVER_NAME = "java:comp/env/jdbc/MySqlCon";
	private String insertSQL;
	private String deleteSQL;
	private String rooms1_SQL; //コマ割りから部屋情報取得
	private String rooms2_SQL; //コマ割りから部屋情報取得
	private String rooms3_SQL; //コマ割りから部屋情報取得
	private String rooms4_SQL; //コマ割りから部屋情報取得



	public tempDBManage() {
		super(DRIVER_NAME);
		rooms1_SQL = String.format("SELECT divide.period, divide.week, GROUP_CONCAT(DISTINCT room.roomName separator '/') AS roomName "
	            +"FROM tbl_room room "
	            +"INNER JOIN tbl_timedivide divide on room.roomID = divide.roomID "
	            +"GROUP BY divide.classID, divide.period, divide.week "
	            +"HAVING divide.classID = ? && divide.period = ? "
	            +"ORDER BY CASE divide.week when '月' then 1 when '火' then 2 when '水' then 3 when '木' then 4 "
	            +"when '金' then 5 when '土' then 6 when '日' then 7 end");

		rooms2_SQL = String.format("SELECT divide.period, divide.week, GROUP_CONCAT(DISTINCT room.roomName separator '/') AS roomName "
	            +"FROM tbl_room room "
	            +"INNER JOIN tbl_timedivide divide on room.roomID = divide.roomID "
	            +"where divide.period = 2 && divide.classID = ? && divide.week = ? "
	            +"order by case divide.week when '月' then 1 when '火' then 2 when '水' then 3 when '木' then 4 "
	            +"when '金' then 5 when '土' then 6 when '日' then 7 end");

		rooms3_SQL = String.format("SELECT divide.period, divide.week, GROUP_CONCAT(DISTINCT room.roomName separator '/') AS roomName "
	            +"FROM tbl_room room "
	            +"INNER JOIN tbl_timedivide divide on room.roomID = divide.roomID "
	            +"where divide.period = 3 && divide.classID = ? && divide.week = ? "
	            +"order by case divide.week when '月' then 1 when '火' then 2 when '水' then 3 when '木' then 4 "
	            +"when '金' then 5 when '土' then 6 when '日' then 7 end");

		rooms4_SQL = String.format("SELECT divide.period, divide.week, GROUP_CONCAT(DISTINCT room.roomName separator '/') AS roomName "
	            +"FROM tbl_room room "
	            +"INNER JOIN tbl_timedivide divide on room.roomID = divide.roomID "
	            +"where divide.period = 4 && divide.classID = ? && divide.week = ? "
	            +"order by case divide.week when '月' then 1 when '火' then 2 when '水' then 3 when '木' then 4 "
	            +"when '金' then 5 when '土' then 6 when '日' then 7 end");

		insertSQL = String.format("replace into tbl_temp_timetable(period, subjectName, date, classID,roomName,teacherName ) values(?,?,?,?,?,?)");
	}


	public List<roomInfo> roomsSelect(int periodNum,String classID) throws Exception{
		List<roomInfo> roomsList = new ArrayList<roomInfo>();
				//DB接続
				connect();

				//SQL実行 switch(時限選択)
				switch (periodNum) {
				case 1:
					createStstement(rooms1_SQL);
					getPstmt().setString(1, classID);
					getPstmt().setInt(2, periodNum);
					break;
				case 2:
					createStstement(rooms2_SQL);
					getPstmt().setString(1, classID);
					getPstmt().setInt(2, periodNum);


					break;
				case 3:
					createStstement(rooms3_SQL);
					getPstmt().setString(1, classID);
					getPstmt().setInt(2, periodNum);

					break;
				case 4:
					createStstement(rooms4_SQL);
					getPstmt().setString(1, classID);
					getPstmt().setInt(2, periodNum);

					break;
				}
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
	}

	public void tempDBInsert(List<tempInfo> tiList){

		try {
			//DB接続
			connect();

			for (tempInfo ti : tiList) {
			System.out.println(ti.getPeriod()+"_in1");
			System.out.println(ti.getSubjectName()+"_in2");
			System.out.println(ti.getDate()+"_in3");
			System.out.println(ti.getClassID()+"_in4");
			System.out.println(ti.getRoomName()+"_in5");
			System.out.println(ti.getTeacherName()+"_in6");
			}//test用システムアウト

			for (tempInfo ti : tiList) {
				createStstement(insertSQL);
				System.out.println(ti.getPeriod());
				getPstmt().setString(1, ti.getPeriod());
				System.out.println("どこで落ちてる２");
				getPstmt().setString(2, ti.getSubjectName());
				System.out.println("どこで落ちてる３");
				getPstmt().setString(3, ti.getDate());

				getPstmt().setString(4, ti.getClassID());

				getPstmt().setString(5, ti.getRoomName());

				getPstmt().setString(6, ti.getTeacherName());

				updateExe();
				disConnection();
			}//for
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}


	}

}
