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
import manage.db.classDBManage;
import manage.db.classInfo;

public class eventDBManage extends DBAccess{
	private String selectSql;//クラス全検索用
	private String deleteSql;//クラス1件削除用
	private String insertSql;//クラス1件登録用
	private String updateSql;
	private String selectRoom;
	private String eventSelectAll;
	private String eventSelectClass;
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
		selectSql = String.format("select eventID,eventName,period,date,classID, roomName,"
				+ " endFlag,guestTeacher,notice"
				+ " from tbl_event"
				+ " ORDER BY date,eventID,eventName,period,classID,roomName");
		//クラスIDから削除からsql
		deleteSql = String.format("delete from tbl_event where eventID = ?");
		//クラス情報登録sql
		//int eventID,String eventName, int period, Date date, String classID,
		//String roomName, String guestTeacher,String notice
		insertSql= String.format(" insert into tbl_event (eventName,period,date,classID, roomName,endFlag,guestTeacher,notice) values (?,?,?,?,"
				+ "?"//roomID検索
				+ ",?,?,?)");
		updateSql= String.format("update tbl_event set eventName = ? where eventID = ?");
		selectRoom= String.format("select * from tbl_room;");

		/**
		 * eventSelectSQL
		 * creator: Mabuchi
		 */
		//ALL
		eventSelectAll = String.format("SELECT eventID,date, eventName,roomName,classID, "
				+ "GROUP_CONCAT(DISTINCT period ORDER BY FIELD(period, 1,2,3,4) separator ' ') as doperiod "
				+ "FROM tbl_event "
				+ "GROUP BY date, eventName HAVING classID = 'AAAA'  ORDER BY date ASC");
		//選択クラスとALL
		eventSelectClass = String.format("SELECT eventID,date, eventName,roomName,classID,notice ,"
				+ "GROUP_CONCAT(DISTINCT period ORDER BY FIELD(period, 1,2,3,4) separator ' ') as doperiod "
				+ "FROM tbl_event "
				+ "GROUP BY date, eventName HAVING classID LIKE ? || classID = 'AAAA'  ORDER BY date ASC");

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

						dateList.add(date1);
					}//for
					}else{
						dateList.add("date");
					}//for
				calendar = new GregorianCalendar(
						Integer.parseInt(dateList.get(0)),
						Integer.parseInt(dateList.get(1))-1,
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
						rs.getString("period"),
						dateList,
						rs.getString("classID"),
						rs.getString("roomName"),
						rs.getString("endFlag"),
						rs.getString("guestTeacher"),
						rs.getString("notice")
						);
				dateList = new ArrayList<String>();
				//クラス要素を1件ずつリストに追加
				eventList.add(eventinfo);

				System.out.println("aaaa");
			}//while

			disConnection();//切断

		return eventList;

	}//select

	public List<eventInfo> eventPageSelect(String page) throws Exception{
		List<eventInfo> eventList = new ArrayList<eventInfo>();
		//DB接続
		connect();
		createStstement(eventSelectClass);
		getPstmt().setString(1, page + "%");
		selectExe();
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

					dateList.add(date1);
				}//for
				}else{
					dateList.add("date");
				}//for
			calendar = new GregorianCalendar(
					Integer.parseInt(dateList.get(0)),//年
					Integer.parseInt(dateList.get(1))-1,//月
					Integer.parseInt(dateList.get(2)));//日
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
					0,
					rs.getString("eventName"),
					rs.getString("doperiod"),
					dateList,
					rs.getString("classID"),
					rs.getString("roomName"),
					"0",
					"",
					rs.getString("notice")
					);
			//クラス要素を1件ずつリストに追加
			System.out.println(eventinfo.getEventName());
			eventList.add(eventinfo);
			dateList = new ArrayList<String>();

		}//while

		disConnection();//切断

	return eventList;

}//select

	public List<eventInfo> eventALLSelect() throws Exception{
		List<eventInfo> eventList = new ArrayList<eventInfo>();
		//DB接続
		connect();
		createStstement();
		selectExe(eventSelectAll);
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

					dateList.add(date1);
				}//for
				}else{
					dateList.add("date");
				}//for
			//カレンダー
			calendar = new GregorianCalendar(
					Integer.parseInt(dateList.get(0)),//年　16
					Integer.parseInt(dateList.get(1))-1,//月－１　2
					Integer.parseInt(dateList.get(2)));//日　10


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
					0,
					rs.getString("eventName"),
					rs.getString("doperiod"),
					dateList,
					rs.getString("classID"),
					rs.getString("roomName"),
					rs.getString("endFlag"),
					"",
					rs.getString("notice")
					);
			//クラス要素を1件ずつリストに追加
			eventList.add(eventinfo);
			dateList = new ArrayList<String>();

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
			//結合した日付情報
			System.out.println(ei.getDate());
			String eventDate=ei.getDate().get(0)+"-"+ei.getDate().get(1)
					+"-"+ei.getDate().get(2);
			String classID=ei.getClassID();



			createStstement(insertSql);

			getPstmt().setString(1,ei.getEventName());
			getPstmt().setString(2,ei.getPeriod());
			getPstmt().setString(3,eventDate);
			getPstmt().setString(4,classID);
			getPstmt().setString(5,ei.getRoomName());
			getPstmt().setString(6,ei.getEndFlag());
			getPstmt().setString(7,ei.getGuestTeacher());
			getPstmt().setString(8,ei.getNotice());
			updateExe();//実行

			System.out.println(classID);
			if(!(classID.equals("AAAA"))){
			//マスタ更新
				masterUpdate("tbl_master_"+classID+"timetable", ei,classID,eventDate);
			}else{
				classDBManage cdm = new classDBManage();
				List<classInfo> classList = cdm.classDBSelect();
				for (classInfo classIDs: classList) {

					masterUpdate("tbl_master_"+classIDs.getClassID()
					+"timetable", ei,classIDs.getClassID(),eventDate);
				}//for
			}
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
	public void masterUpdate(String masterTableName,eventInfo ei,String classID,String eventDate) throws Exception{


		String masterUpDate = String.format("update "+ masterTableName +
				"  set  subjectName = ?, roomName=?, teacherName=?, bringThings=? "
				+ " where classID = ? AND date=?  AND period = ?");

		connect();

		createStstement(masterUpDate);
		getPstmt().setString(1, ei.getEventName());
		getPstmt().setString(2,ei.getRoomName());
		getPstmt().setString(3,ei.getGuestTeacher());
		getPstmt().setString(4,ei.getNotice());
		getPstmt().setString(5,classID);
		getPstmt().setString(6,eventDate);
		getPstmt().setString(7, ei.getPeriod());
		updateExe();
		System.out.println("update");
		//masterに上書きデータが存在しなければ新規作成
		if(getIntResult() == 0){
			String masterInsert = String.format("insert INTO "+ masterTableName +
					" (period, subjectName, date, classID, roomName, teacherName, bringThings) "
					+ "values(?,?,?,?,?,?,?)");
		createStstement(masterInsert);
		getPstmt().setString(1, ei.getPeriod());
		getPstmt().setString(2, ei.getEventName());
		getPstmt().setString(3,eventDate);
		getPstmt().setString(4,classID);
		getPstmt().setString(5,ei.getRoomName());
		getPstmt().setString(6,ei.getGuestTeacher());
		getPstmt().setString(7,ei.getNotice());
		updateExe();
		System.out.println("create");
		}//if

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
