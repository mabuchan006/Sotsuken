package event.db;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import DB.DBAccess;
/*
 * @author syam
 * @see eventInfo
 */

public class eventDBManage extends DBAccess{
	private String selectSql;//クラス全検索用
	private String deleteSql;//クラス1件削除用
	private String insertSql;//クラス1件登録用
	private String updateSql;
	private String selectRoom;
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

	public eventDBManage() {
		super(DRIVER_NAME);//DBAccessに接続
		selectSql = String.format("select eventID,eventName,period,date,classID, r.roomName as roomName,"
				+ " endFlag,guestTeacher,notice"
				+ " from tbl_event e inner join tbl_room r "
				+ "ON e.roomID = r.roomID "
				+ " ORDER BY date,eventID,eventName,period,classID, r.roomName");
		//クラスIDから削除からsql
		deleteSql = String.format("delete from tbl_event where eventID = ?");
		//クラス情報登録sql
		//int eventID,String eventName, int period, Date date, String classID,
		//String roomName, String guestTeacher,String notice
		insertSql= String.format(" insert into tbl_event (eventName,period,date,classID, roomID,endFlag,guestTeacher,notice) values (?,?,?,?,"
				+ "(select roomID from tbl_room where roomName = ?)"//roomID検索
				+ ",?,?,?)");
		updateSql= String.format("update tbl_event set eventName = ? where eventID = ?");
		selectRoom= String.format("select * from tbl_room;");
	}

	public List<String> roomDBSelect() throws Exception{
		List<String> roomList = new ArrayList<String>();
		connect();
		createStstement();
		selectExe(selectRoom);
		ResultSet rs = getRsResult();
		while(rs.next()){
			roomList.add(
			rs.getString("roomName")
			);
		}

		return roomList;
	}
	/*
	 * @param eventinfo イベント情報
	 * @return eventList 全イベント情報
	 */
	public List<eventInfo> eventDBSelect() throws Exception{
			List<eventInfo> eventList = new ArrayList<eventInfo>();
			//DB接続
			connect();
			createStstement();
			selectExe(selectSql);
			//要素取得用準備
			ResultSet rs = getRsResult();
			eventInfo eventinfo;
			List<String> dateList = new ArrayList<String>();
			String date="";
			Calendar calendar;
			//全件取得
			while(rs.next()){
				date=rs.getString("date");
				if(date!=null){
					String inputStr[];

					inputStr=date.split("-");
					for (String date1 : inputStr) {
						System.out.println(date1);
						dateList.add(date1);
					}//for
					}else{
						dateList.add("date");
					}//for
				calendar = new GregorianCalendar(
						Integer.parseInt(dateList.get(0)),
						Integer.parseInt(dateList.get(1)),
						Integer.parseInt(dateList.get(2)));
				switch (calendar.get(Calendar.DAY_OF_WEEK)){
				// 取得した曜日フィールドの値。
				case Calendar.SUNDAY:dateList.add("日曜日");break;
				case Calendar.MONDAY:dateList.add("月曜日");break;
				case Calendar.TUESDAY:dateList.add("火曜日");break;
				case Calendar.WEDNESDAY:dateList.add("水曜日");break;
				case Calendar.THURSDAY:dateList.add("木曜日");break;
				case Calendar.FRIDAY:dateList.add("金曜日");break;
				case Calendar.SATURDAY:dateList.add("日曜日");break;
				}//switch
				eventinfo = new eventInfo(
						rs.getInt("eventID"),
						rs.getString("eventName"),
						rs.getInt("period"),
						dateList,
						rs.getString("classID"),
						rs.getString("roomName"),
						rs.getString("endFlag"),
						rs.getString("guestTeacher"),
						rs.getString("notice")
						);

				//クラス要素を1件ずつリストに追加
				eventList.add(eventinfo);

			}//while

			disConnection();//切断

		return eventList;

	}//select

	/*
	 * @param クラス情報 eventinfo
	 * @see eventControl
	 */
	public void eventDBUpdate(eventInfo ei,int state,String msg) throws Exception{
		connect();
		switch(state){
		case INSERT:


			createStstement(insertSql);

			getPstmt().setString(1,ei.getEventName());
			getPstmt().setInt(2,ei.getPeriod());
			getPstmt().setString(3,ei.getDate().get(0)+"-"+ei.getDate().get(1)
					+"-"+ei.getDate().get(2));
			getPstmt().setString(4,ei.getClassID());
			getPstmt().setString(5,ei.getRoomName());
			getPstmt().setString(6,ei.getEndFlag());
			getPstmt().setString(7,ei.getGuestTeacher());
			getPstmt().setString(8,ei.getNotice());
			updateExe();//実行



			break;
		case DELETE:
			createStstement(deleteSql);
			System.out.println("delete");

			getPstmt().setInt(1, ei.getEventID());// 削除するIDをセット
			updateExe();// 実行


			break;
		case UODATE:
			createStstement(updateSql);
			getPstmt().setString(1, ei.getEventName());
			getPstmt().setInt(2, ei.getEventID());

			updateExe();//実行


			break;
		}

		if(state!=UODATE){
		setMsg(resultMsg(ei,msg));//実行メッセージ取得
		}//if
		disConnection();//切断
	}//method
	public void masterUpdate(String masterTableName,String tempTableName) throws Exception{

		String masterUpDate = String.format("INSERT INTO "+ masterTableName +" (period, subjectName, date, classID, roomName, teacherName, bringThings) "
			+ "SELECT temp.period, sub.subjectName, temp.date, temp.classID, temp.roomName, temp.teacherName, sub.bringThings "
			+ "FROM "+ tempTableName +" temp "
			+ "INNER JOIN tbl_subject sub on sub.subjectID = temp.subjectID "
			+ "ORDER BY temp.date,temp.period");

		connect();
		createStstement();
		updateExe(masterUpDate);
		disConnection();
	}

private String resultMsg(eventInfo ei,String msg){


	if (getIntResult() != 0) {
		return String.format("%sを%sしました。", ei.getEventName()
		, msg);

	}
	return String.format("入力情報に誤りがあります");
}


}
