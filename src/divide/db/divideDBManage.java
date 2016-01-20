package divide.db;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;

import DB.DBAccess;

public class divideDBManage extends DBAccess {

	private String selectSql;
	private String insertSql;
	private String deleteSql;
	private String viewSelect;
	private String classIDSelect;
	private String msg;


	private final static String DRIVER_NAME = "java:comp/env/jdbc/MySqlCon";

	public divideDBManage() {
		super(DRIVER_NAME);

		selectSql = String.format("select * from tbl_timedivide");
		viewSelect = String
				.format("select r.roomName, d.period, c.classID from tbl_timedivide d, tbl_room r, tbl_class c "
						+ "where d.roomID = r.roomID and d.classID = c.classID and week = ?");
		insertSql = String.format("replace into tbl_timedivide ( period, roomID, week, classID ) values"
				+ " ( ?, (select tbl_room.roomID from tbl_room where tbl_room.roomID = ?), ?, (select tbl_class.classID from tbl_class where tbl_class.classID = ?))");
		deleteSql = String.format("delete from tbl_timedivide where week = ?");
		classIDSelect = String.format("select classID from tbl_class order by classID");

	}

	public String getMsg() {
		return msg;
	}

	public String setMsg(String msg) {
		this.msg = msg;
		return msg;
	}

	public List<divideInfo> divideDBSelect() throws Exception {

		List<divideInfo> divideList = new ArrayList<divideInfo>();
		connect();
		createStstement();
		selectExe(selectSql);
		ResultSet rs = getRsResult();
		divideInfo divideInfo;

		while (rs.next()) {

			divideInfo = new divideInfo(rs.getInt("period"), rs.getString("roomID"), rs.getString("week"),
					rs.getString("classID"));
			divideList.add(divideInfo);
		}

		disConnection();

		return divideList;
	}

	public HashMap<String, String[]> editDivideDBSelect(String week) throws Exception {

		HashMap<String, String[]> divideMap = new HashMap<String, String[]>();

		connect();
		createStstement(viewSelect);
		getPstmt().setString(1, week);
		selectExe();
		ResultSet rs = getRsResult();

		// roomID取得用
		HashMap<String, String> map = new HashMap<String, String>();
		//
		String classIDList[] = new String[4];

		// roomID取得
		while (rs.next()) {
			map.put(rs.getString("roomName"), null);
		}

		// 各roomIDごとに処理していく
		for (String key : map.keySet()) {
			rs.beforeFirst();
			while (rs.next()) {
				if (key.equals(rs.getString("roomName"))) {
					if (classIDList[rs.getInt("period") - 1] != null) {
						classIDList[rs.getInt("period") - 1] += "," + rs.getString("classID");
					} else {
						classIDList[rs.getInt("period") - 1] = rs.getString("classID");
					} // if
				} // if
			} // while
			divideMap.put(key, classIDList);
			classIDList = new String[4];
		} // for

		disConnection();

		return divideMap;
	}

	public String divideDBInsert(List<divideInfo> diList) throws Exception {
		try {
			connect();
			for (divideInfo di : diList) {

				createStstement(insertSql);
				getPstmt().setInt(1, di.getPeriod());
				getPstmt().setString(2, di.getRoomID());
				getPstmt().setString(3, di.getWeek());
				getPstmt().setString(4, di.getClassID());

				if (!(di.getClassID().equals(null) || di.getClassID().equals(""))) {
					updateExe();
				}
			}
			disConnection();
		} catch (SQLException e) {
			return setMsg("登録できませんでした");
		}
		return setMsg("登録できました");
	}// divideDBUpdate

	public void divideDBDelete(String week) throws Exception {
		connect();
		createStstement(deleteSql);
		getPstmt().setString(1, week);
		updateExe();
		disConnection();
	}//divideDBDelete

	public void classIDDBSelect(HttpServletRequest request) throws Exception {
		List<String> classIDList = new ArrayList<String>();
		connect();
		createStstement();
		selectExe(classIDSelect);
		ResultSet rs = getRsResult();
		while (rs.next()) {
			classIDList.add(rs.getString("classID"));
		}
		disConnection();
		String temp = classIDList.get(0).substring(0,2);
		List<String> tempList = new ArrayList<String>();
		TreeMap<String, List<String>> classIDMap = new TreeMap<String, List<String>>();
		for(String str : classIDList){
			if(temp.equals(str.substring(0,2))){
				tempList.add(str);
			} else {
				classIDMap.put(temp, tempList);
				temp = str.substring(0,2);
				tempList = new ArrayList<String>();
				tempList.add(str);
			}
		}
		request.setAttribute("classIDMap", classIDMap);
	}//classIDDBSelect

}// divideDBManage
