package divide.db;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
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
		Map<String, List<String>> tempMap = new TreeMap<String, List<String>>();
		Map<String, List<String>> classIDMap = new LinkedHashMap<String, List<String>>();
		Map<String, List<String>> rMap = new LinkedHashMap<String, List<String>>();
		Map<String, List<String>> sMap = new LinkedHashMap<String, List<String>>();
		Map<String, List<String>> jMap = new LinkedHashMap<String, List<String>>();
		Map<String, List<String>> aMap = new LinkedHashMap<String, List<String>>();
		Map<String, Map<String, List<String>>> map = new TreeMap<String, Map<String, List<String>>>();

		String tempClass = classIDList.get(0).substring(0, 1);//R4A1 -> R
		temp = classIDList.get(0).substring(0, 2);//R4A1 -> R4
		for(String str : classIDList){
			if(tempClass.equals(str.substring(0,1))){//学科ごとに分ける
				if(temp.equals(str.substring(0,2))){//学科 + 学年ごとに分ける
					tempList.add(str);//学年が同じならリストに追加
				} else {//学科 + 学年が変わったら
					tempMap.put(temp, tempList);//学科 + 学年, 学年リストをマップに追加
					temp = str.substring(0,2);//次の学科 + 学年を入れる
					tempList = new ArrayList<String>();
					tempList.add(str);
				}
			} else {//学科が変わったら
				tempMap.put(temp, tempList);
				map.put(tempClass, tempMap);//学科,学科 + 学年,クラス
				tempClass = str.substring(0,1);
				temp = str.substring(0,2);
				tempList = new ArrayList<String>();
				tempMap = new TreeMap<String, List<String>>();
				tempList.add(str);
			}
		}
		tempMap.put(temp, tempList);
		map.put(tempClass, tempMap);

		tempList = new ArrayList<String>();
		temp = classIDList.get(0).substring(0, 2);
		for(String str : classIDList){
			if(temp.equals(str.substring(0,2)) && tempList.indexOf(temp) == -1){
				tempList.add(temp);
			} else {
				temp = str.substring(0,2);
			}
		}
		int n = 4;
		for(int i = 0; i < tempList.size() ; i++){
			if(Integer.parseInt(tempList.get(i).substring(1, 2)) == n){
				classIDMap.putAll(map.get(tempList.get(i).substring(0, 1)));
				temp = tempList.get(i).substring(0, 1);
				for(int j = 1; j <= n; j++){
					tempList.remove(temp + j);
				}
				n--;
				i = -1;
			}
		}

		rMap.putAll(map.get("R"));
		sMap.putAll(map.get("S"));
		jMap.putAll(map.get("J"));
		aMap.putAll(map.get("A"));

		request.setAttribute("classIDMapR", rMap);
		request.setAttribute("classIDMapS", sMap);
		request.setAttribute("classIDMapJ", jMap);
		request.setAttribute("classIDMapA", aMap);

		request.setAttribute("classIDMap", classIDMap);
	}//classIDDBSelect
}// divideDBManage
