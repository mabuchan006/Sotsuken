package db;

import DB.DBAccess;

public class masterDBManage extends DBAccess {
	private final static String DRIVER_NAME = "java:comp/env/jdbc/MySqlCon";
	private String selectSQL;  //マスタ時間割抽出用

	public masterDBManage() {
		super(DRIVER_NAME);
		StringBuilder sb = new StringBuilder();
		sb.append("SQL記述ポジション");
		selectSQL = sb.toString();
		sb.setLength(0);
	}

}
