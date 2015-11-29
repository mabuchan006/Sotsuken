package divide.db;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import DB.DBAccess;

public class divideDBManage extends DBAccess {

	private String selectSql;
	private String insertSql;
	private String deleteSql;
	private String msg;
	private String viewSelect;

	private final static String DRIVER_NAME = "java:comp/env/jdbc/MySqlCon";

	public divideDBManage() {
		super(DRIVER_NAME);

		selectSql = String.format("select * from tbl_timedivide");
		viewSelect = String.format("select roomID, period, classID from tbl_timedivide where week = '月' order by roomID , period");
		insertSql = String.format("replace into tbl_timedivide ( period, roomID, week, classID ) values"
				+ " ( ?, (select tbl_room.roomID from tbl_room where tbl_room.roomID = ?), ?, (select tbl_class.classID from tbl_class where tbl_class.classID = ?))");
		deleteSql = String.format("delete from tbl_timedivide");

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

	public HashMap<String, String> viewDivideDBSelect() throws Exception {

		HashMap<String, String> divideMap = new HashMap<String, String>();

		connect();
		createStstement();
		selectExe(viewSelect);

		ResultSet rs = getRsResult();
		String roomID = null;
		int period = 0;
		String classID = null;

		// １件取得
		while (rs.next()) {
			roomID = rs.getString("roomID");
			period = rs.getInt("period");
			classID = rs.getString("classID");
			break;
		}

		// 取得した情報と比較しながら格納していく
		while (rs.next()) {
			if ((rs.getString("roomID").equals(roomID)) && (rs.getInt("period") == period)
					&& !(rs.getString("classID").equals(classID))) {
				classID += "," + rs.getString("classID");
			} else {
				divideMap.put(roomID + "-" + period, classID);
				roomID = rs.getString("roomID");
				period = rs.getInt("period");
				classID = rs.getString("classID");
			} // if
		} // while
		divideMap.put(roomID + "-" + period, classID);

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
			return msg = "登録できませんでした";
		}
		return msg = "登録できました";
	}// divideDBUpdate

	public void divideDBDelete(divideInfo di) throws Exception {
		connect();
		createStstement(deleteSql);
		updateExe();
		disConnection();
	}

}// divideDBManage
