package manage.db;

import DB.DBAccess;

public class divideDBManage extends DBAccess{

	private String selectSql;
	private String insertSql;
	private String deleteSql;

	private final static String DRIVER_NAME = "java:comp/env/jdbc/MySqlCon";

	public divideDBManage() {
		super(DRIVER_NAME);

		selectSql = String.format("select * from tbl_timedivide");
		insertSql = String.format("insert into tbl_timedivide ( period, roomID, week, classID ) values ()");
		deleteSql = String.format("delete from tbl_timedivide");

	}

}
