package timetable.db;

public class masterDBSwitch {

		public masterDBSwitch() {
			super();
		}

		public class masterDBSwitchInfo {
			public String content_page ="";
			public String page_title = "";
			public String chooseTableName="";
			}

/**
 *
 * @param page_title
 * @param chooseTableName
 * @param content_page
 * @return DB切り替え用メソッド
 */
	public masterDBSwitchInfo switchDB(String page){
		masterDBSwitchInfo value = new masterDBSwitchInfo();
		switch (page) {

		//●R4
		case "R":
			 value.page_title = "R4A1";
			 value. chooseTableName = "tbl_master_R4A1timetable";
			 value.content_page = "/timeTable/R_master.jsp";
			break;

		case "R4A1":
			 value.page_title = "R4A1";
			 value. chooseTableName = "tbl_master_R4A1timetable";
			 value.content_page = "/timeTable/R_master.jsp";
			break;

		case "R4A2":
			 value.page_title = "R4A2";
			 value.chooseTableName = "tbl_master_R4A2timetable";
			 value.content_page = "/timeTable/R_master.jsp";
			break;
		case "R4A3":
			value.page_title = "R4A3";
			value.chooseTableName = "tbl_master_R4A3timetable";
			value.content_page = "/timeTable/R_master.jsp";
			break;
		case "R4A4":
			value.page_title = "R4A4";
			value.chooseTableName = "tbl_master_R4A4timetable";
			value.content_page = "/timeTable/R_master.jsp";
			break;
		case "R4A5":
			value.page_title = "R4A5";
			value.chooseTableName = "tbl_master_R4A5timetable";
			value.content_page = "/timeTable/R_master.jsp";
			break;

		//●R３
		case "R3A1":
			value.page_title = "R3A1";
			value.chooseTableName = "tbl_master_R3A1timetable";
			value.content_page = "/timeTable/R_master.jsp";
			break;

		case "R3A2":
			value.page_title = "R3A2";
			value.chooseTableName = "tbl_master_R3A2timetable";
			value.content_page = "/timeTable/R_master.jsp";
			break;
		case "R3A3":
			value.page_title = "R3A3";
			value.chooseTableName = "tbl_master_R3A3timetable";
			value.content_page = "/timeTable/R_master.jsp";
			break;
		case "R3A4":
			value.page_title = "R3A4";
			value.chooseTableName = "tbl_master_R4A3timetable";
			value.content_page = "/timeTable/R_master.jsp";
			break;
		case "R3A5":
			value.page_title = "R4A5";
			value.chooseTableName = "tbl_master_R3A5timetable";
			value.content_page = "/timeTable/R_master.jsp";
			break;

		//●R2
		case "R2A1":
			value.page_title = "R2A1";
			value.chooseTableName = "tbl_master_R2A1timetable";
			value.content_page = "/timeTable/R_master.jsp";
			break;

		case "R2A2":
			value.page_title = "R2A2";
			value.chooseTableName = "tbl_master_R2A2timetable";
			value.content_page = "/timeTable/R_master.jsp";
			break;
		case "R2A3":
			value.page_title = "R2A3";
			value.chooseTableName = "tbl_master_R2A3timetable";
			value.content_page = "/timeTable/R_master.jsp";
			break;
		case "R2A4":
			value.page_title = "R2A4";
			value.chooseTableName = "tbl_master_R2A3timetable";
			value.content_page = "/timeTable/R_master.jsp";
			break;
		case "R2A5":
			value.page_title = "R2A5";
			value.chooseTableName = "tbl_master_R2A5timetable";
			value.content_page = "/timeTable/R_master.jsp";
			break;

			//●R1
		case "R1A1":
			value.page_title = "R1A1";
			value.chooseTableName = "tbl_master_R1A1timetable";
			value.content_page = "/timeTable/R_master.jsp";
			break;

		case "R1A2":
			value.page_title = "R1A2";
			value.chooseTableName = "tbl_master_R1A2timetable";
			value.content_page = "/timeTable/R_master.jsp";
			break;
		case "R1A3":
			value.page_title = "R1A3";
			value.chooseTableName = "tbl_master_R1A3timetable";
			value.content_page = "/timeTable/R_master.jsp";
				break;
		case "R1A4":
			value.page_title = "R1A4";
			value.chooseTableName = "tbl_master_R1A3timetable";
			value.content_page = "/timeTable/R_master.jsp";
			break;
		case "R1A5":
			value.page_title = "R1A5";
			value.chooseTableName = "tbl_master_R1A5timetable";
			value.content_page = "/timeTable/R_master.jsp";
			break;

		}//switch end(tbl名切り替え)
		return value;
	}
}
