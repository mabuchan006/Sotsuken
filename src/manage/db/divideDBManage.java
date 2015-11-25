package manage.db;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import DB.DBAccess;

public class divideDBManage extends DBAccess{

	private String selectSql;
	private String insertSql;
	private String deleteSql;

	private final static String DRIVER_NAME = "java:comp/env/jdbc/MySqlCon";

	public divideDBManage() {
		super(DRIVER_NAME);

		selectSql = String.format("select * from tbl_timedivide");
		insertSql = String.format("insert into tbl_timedivide ( period, roomID, week, classID ) values ( ?, ?, ?, ?)");
		deleteSql = String.format("delete from tbl_timedivide");

	}

	public List<divideInfo> divideDBSelect() throws Exception {

		List<divideInfo> divideList = new ArrayList<divideInfo>();
		connect();
		createStstement();
		selectExe(selectSql);
		ResultSet rs = getRsResult();
		divideInfo divideInfo;

		while( rs.next() ){

			divideInfo = new divideInfo(
					rs.getInt("period"),
					rs.getString("roomID"),
					rs.getString("week"),
					rs.getString("classID"));
			divideList.add(divideInfo);
		}

		disConnection();

		return divideList;
	}

	public void divideDBInsert(List<divideInfo> diList) throws Exception {

		connect();
		for (divideInfo di : diList) {

			createStstement(insertSql);
			getPstmt().setInt( 1, di.getPeriod() );
			getPstmt().setString( 2, di.getRoomID());
			getPstmt().setString( 3, di.getWeek());
			getPstmt().setString( 4, di.getClassID());

			updateExe();

		}

		disConnection();
	}//divideDBUpdate

	public void divideDBDelete(divideInfo di) throws Exception {
		connect();
		createStstement(deleteSql);
		updateExe();
		disConnection();
	}

}//divideDBManage
