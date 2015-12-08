package temp_timetable.db;

import java.sql.ResultSet;

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
		rooms1_SQL = String.format("SELECT GROUP_CONCAT(DISTINCT room.roomName separator '/') AS roomName "
	            +"FROM tbl_room room "
	            +"INNER JOIN tbl_timedivide divide on room.roomID = divide.roomID "
	            +"GROUP BY divide.classID, divide.period, divide.week "
	            +"HAVING divide.period = 1 && divide.classID = ? && divide.week = ? "
	            +"ORDER BY case divide.week when '月' then 1 when '火' then 2 when '水' then 3 when '木' then 4 "
	            +"when '金' then 5 when '土' then 6 when '日' then 7 end");

		rooms2_SQL = String.format("SELECT GROUP_CONCAT(room.roomName separator '/') roomName "
	            +"FROM tbl_room room "
	            +"INNER JOIN tbl_timedivide divide on room.roomID = divide.roomID "
	            +"where divide.period = 2 && divide.classID = ? && divide.week = ? "
	            +"order by case divide.week when '月' then 1 when '火' then 2 when '水' then 3 when '木' then 4 "
	            +"when '金' then 5 when '土' then 6 when '日' then 7 end");

		rooms3_SQL = String.format("SELECT GROUP_CONCAT(room.roomName separator '/') roomName "
	            +"FROM tbl_room room "
	            +"INNER JOIN tbl_timedivide divide on room.roomID = divide.roomID "
	            +"where divide.period = 3 && divide.classID = ? && divide.week = ? "
	            +"order by case divide.week when '月' then 1 when '火' then 2 when '水' then 3 when '木' then 4 "
	            +"when '金' then 5 when '土' then 6 when '日' then 7 end");

		rooms4_SQL = String.format("SELECT GROUP_CONCAT(room.roomName separator '/') roomName "
	            +"FROM tbl_room room "
	            +"INNER JOIN tbl_timedivide divide on room.roomID = divide.roomID "
	            +"where divide.period = 4 && divide.classID = ? && divide.week = ? "
	            +"order by case divide.week when '月' then 1 when '火' then 2 when '水' then 3 when '木' then 4 "
	            +"when '金' then 5 when '土' then 6 when '日' then 7 end");
	}


	public String roomsSelect(int periodNum,String classID, int week) throws Exception{
		String  roomName = "";
				//DB接続
				connect();

				//SQL実行 switch(時限選択)
				switch (periodNum) {
				case 1:
					createStstement(rooms1_SQL);
					getPstmt().setString(1, classID);
						switch(week){
						case 1:
							getPstmt().setString(2, "月");
							break;
						case 2:
							getPstmt().setString(2, "火");
							break;
						case 3:
							getPstmt().setString(2, "水");
							break;
						case 4:
							getPstmt().setString(2, "木");
							break;
						case 5:
							getPstmt().setString(2, "金");
							break;
						case 6:
							getPstmt().setString(2, "土");
								break;
						case 7:
							getPstmt().setString(2, "日");
							break;
						}
					break;
				case 2:
					createStstement(rooms2_SQL);
					getPstmt().setString(1, classID);
					switch(week){
					case 1:
						getPstmt().setString(2, "月");
						break;
					case 2:
						getPstmt().setString(2, "火");
						break;
					case 3:
						getPstmt().setString(2, "水");
						break;
					case 4:
						getPstmt().setString(2, "木");
						break;
					case 5:
						getPstmt().setString(2, "金");
						break;
					case 6:
						getPstmt().setString(2, "土");
							break;
					case 7:
						getPstmt().setString(2, "日");
						break;
					}
					break;
				case 3:
					createStstement(rooms3_SQL);
					getPstmt().setString(1, classID);
					switch(week){
					case 1:
						getPstmt().setString(2, "月");
						break;
					case 2:
						getPstmt().setString(2, "火");
						break;
					case 3:
						getPstmt().setString(2, "水");
						break;
					case 4:
						getPstmt().setString(2, "木");
						break;
					case 5:
						getPstmt().setString(2, "金");
						break;
					case 6:
						getPstmt().setString(2, "土");
							break;
					case 7:
						getPstmt().setString(2, "日");
						break;
					}
					break;
				case 4:
					createStstement(rooms4_SQL);
					getPstmt().setString(1, classID);
					switch(week){
					case 1:
						getPstmt().setString(2, "月");
						break;
					case 2:
						getPstmt().setString(2, "火");
						break;
					case 3:
						getPstmt().setString(2, "水");
						break;
					case 4:
						getPstmt().setString(2, "木");
						break;
					case 5:
						getPstmt().setString(2, "金");
						break;
					case 6:
						getPstmt().setString(2, "土");
							break;
					case 7:
						getPstmt().setString(2, "日");
						break;
					}
					break;
				}
				selectExe();
				ResultSet rs = getRsResult();
					while(rs.next()) {
							 if(rs.getString("roomName").equals(null)){
								 System.out.print("ぬるだよ");
								 break;
							 }else{
								 roomName =rs.getString("roomName");
								 break;
							 }
						}
					System.out.println("1:"+ roomName);
					disConnection();
					return roomName;
					//TODO: null に対して空白挿入
	}

}
