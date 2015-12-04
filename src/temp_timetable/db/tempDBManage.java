package temp_timetable.db;

import DB.DBAccess;

public class tempDBManage extends DBAccess {
	private final static String DRIVER_NAME = "java:comp/env/jdbc/MySqlCon";
	private String insertSQL;
	private String deleteSQL;

	public tempDBManage() {
		super(DRIVER_NAME);
	}

}
