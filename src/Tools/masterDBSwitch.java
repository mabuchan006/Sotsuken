package Tools;

public class masterDBSwitch {

		public masterDBSwitch() {
			super();
		}

		public class masterDBSwitchInfo {
			public String content_page ="";
			public String page_title = "";
			public String chooseTableName="";
			public String chooseClassID ="";
			}

/**
 *
 * @param page_title
 * @param chooseTableName
 * @param content_page
 * @return マスター時間割情報
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
			value.chooseTableName = "tbl_master_R2A4timetable";
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
			value.chooseTableName = "tbl_master_R1A4timetable";
			value.content_page = "/timeTable/R_master.jsp";
			break;
		case "R1A5":
			value.page_title = "R1A5";
			value.chooseTableName = "tbl_master_R1A5timetable";
			value.content_page = "/timeTable/R_master.jsp";
			break;

		//●S3
		case "S":
			 value.page_title = "S3A1";
			 value. chooseTableName = "tbl_master_S3A1timetable";
			 value.content_page = "/timeTable/S_master.jsp";
			break;

		case "S3A1":
			value.page_title = "S3A1";
			value.chooseTableName = "tbl_master_S3A1timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;
		case "S3A2":
			value.page_title = "S3A2";
			value.chooseTableName = "tbl_master_S3A2timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;
		case "S3G1":
			value.page_title = "S3G1";
			value.chooseTableName = "tbl_master_S3G1timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;
		case "S3M1":
			value.page_title = "S3M1";
			value.chooseTableName = "tbl_master_S3M1timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;
		case "S3M2":
			value.page_title = "S3M2";
			value.chooseTableName = "tbl_master_S3M2timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;

		//●S2
		case "S2A1":
			value.page_title = "S2A1";
			value.chooseTableName = "tbl_master_S2A1timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;
		case "S2A2":
			value.page_title = "S2A2";
			value.chooseTableName = "tbl_master_S2A2timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;
		case "S2A3":
			value.page_title = "S2A3";
			value.chooseTableName = "tbl_master_S2A3timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;
		case "S2A4":
			value.page_title = "S2A4";
			value.chooseTableName = "tbl_master_S2A4timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;
		case "S2G1":
			value.page_title = "S2G1";
			value.chooseTableName = "tbl_master_S2G1timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;
		case "S2G2":
			value.page_title = "S2G2";
			value.chooseTableName = "tbl_master_S2G2timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;
		case "S2G3":
			value.page_title = "S2G3";
			value.chooseTableName = "tbl_master_S2G3timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;
		case "S2M1":
			value.page_title = "S2M1";
			value.chooseTableName = "tbl_master_S2M1timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;
		case "S2M2":
			value.page_title = "S2M2";
			value.chooseTableName = "tbl_master_S2M2timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;

		//●S1
		case "S1A1":
			value.page_title = "S1A1";
			value.chooseTableName = "tbl_master_S1A1timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;
		case "S1A2":
			value.page_title = "S1A2";
			value.chooseTableName = "tbl_master_S1A2timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;
		case "S1A3":
			value.page_title = "S1A3";
			value.chooseTableName = "tbl_master_S1A3timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;
		case "S1A4":
			value.page_title = "S1A4";
			value.chooseTableName = "tbl_master_S1A4timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;
		case "S1G1":
			value.page_title = "S1G1";
			value.chooseTableName = "tbl_master_S1G1timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;
		case "S1G2":
			value.page_title = "S1G2";
			value.chooseTableName = "tbl_master_S1G2timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;
		case "S1G3":
			value.page_title = "S1G3";
			value.chooseTableName = "tbl_master_S1G3timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;
		case "S1M1":
			value.page_title = "S1M1";
			value.chooseTableName = "tbl_master_S1M1timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;
		case "S1M2":
			value.page_title = "S1M2";
			value.chooseTableName = "tbl_master_S1M2timetable";
			value.content_page = "/timeTable/S_master.jsp";
			break;

		//●J2
		case "J":
			 value.page_title = "J2A1";
			 value. chooseTableName = "tbl_master_J2A1timetable";
			 value.content_page = "/timeTable/J_master.jsp";
			break;

		case "J2A1":
			value.page_title = "J2A1";
			value.chooseTableName = "tbl_master_J2A1timetable";
			value.content_page = "/timeTable/J_master.jsp";
			break;
		case "J2A2":
			value.page_title = "J2A2";
			value.chooseTableName = "tbl_master_J2A2timetable";
			value.content_page = "/timeTable/J_master.jsp";
			break;
		case "J2M1":
			value.page_title = "J2M1";
			value.chooseTableName = "tbl_master_J2M1timetable";
			value.content_page = "/timeTable/J_master.jsp";
			break;
		case "J2M2":
			value.page_title = "J2M2";
			value.chooseTableName = "tbl_master_J2M2timetable";
			value.content_page = "/timeTable/J_master.jsp";
			break;

		//●J1
		case "J1A1":
			value.page_title = "J1A1";
			value.chooseTableName = "tbl_master_J1A1timetable";
			value.content_page = "/timeTable/J_master.jsp";
			break;
		case "J1A2":
			value.page_title = "J1A2";
			value.chooseTableName = "tbl_master_J1A2timetable";
			value.content_page = "/timeTable/J_master.jsp";
			break;
		case "J1M1":
			value.page_title = "J1M1";
			value.chooseTableName = "tbl_master_J1M1timetable";
			value.content_page = "/timeTable/J_master.jsp";
			break;
		case "J1M2":
			value.page_title = "J1M2";
			value.chooseTableName = "tbl_master_J1M2timetable";
			value.content_page = "/timeTable/J_master.jsp";
			break;

		//A1
		case "A":
			 value.page_title = "A1A1";
			 value. chooseTableName = "tbl_master_A1A1timetable";
			 value.content_page = "/timeTable/A_master.jsp";
			break;

		case "A1A1":
			value.page_title = "A1A1";
			value.chooseTableName = "tbl_master_A1A1timetable";
			value.content_page = "/timeTable/A_master.jsp";
			break;
		case "A1A2":
			value.page_title = "A1A2";
			value.chooseTableName = "tbl_master_A1A2timetable";
			value.content_page = "/timeTable/A_master.jsp";
			break;
		}//switch end(tbl名切り替え)

		return value;
	}
/**
 *  一時時間割情報
 * @param page
 * @return
 */
	public  masterDBSwitchInfo switchTempDB(String page){
		masterDBSwitchInfo value = new masterDBSwitchInfo();
		switch (page) {

		//●R4
		case "R":
			value.chooseClassID= "R4A1";
			value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			value.chooseTableName = "tbl_temp_R4A1timetable";
			break;

		case "R4A1":
			 value. chooseClassID = "R4A1";
			 value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			 value.chooseTableName = "tbl_temp_R4A1timetable";
			break;

		case "R4A2":
			 value.chooseClassID = "R4A2";
			 value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			 value.chooseTableName = "tbl_temp_R4A2timetable";
			break;
		case "R4A3":
			value.chooseClassID = "R4A3";
			value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			value.chooseTableName = "tbl_temp_R4A3timetable";
			break;
		case "R4A4":
			value.chooseClassID = "R4A4";
			value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			value.chooseTableName = "tbl_temp_R4A4timetable";
			break;
		case "R4A5":
			value.chooseClassID = "R4A5";
			value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			value.chooseTableName = "tbl_temp_R4A5timetable";
			break;

		//●R3
		case "R3A1":
			 value. chooseClassID = "R3A1";
			 value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			 value.chooseTableName = "tbl_temp_R3A1timetable";
			break;

		case "R3A2":
			 value.chooseClassID = "R3A2";
			 value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			 value.chooseTableName = "tbl_temp_R3A2timetable";
			break;
		case "R3A3":
			value.chooseClassID = "R3A3";
			value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			value.chooseTableName = "tbl_temp_R3A3timetable";
			break;
		case "R3A4":
			value.chooseClassID = "R3A4";
			value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			value.chooseTableName = "tbl_temp_R3A4timetable";
			break;
		case "R3A5":
			value.chooseClassID = "R3A5";
			value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			value.chooseTableName = "tbl_temp_R3A5timetable";
			break;

			//●R2
		case "R2A1":
			value. chooseClassID = "R2A1";
			value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			value.chooseTableName = "tbl_temp_R2A1timetable";
			break;
		case "R2A2":
			value.chooseClassID = "R2A2";
			value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			value.chooseTableName = "tbl_temp_R2A2timetable";
			break;
		case "R2A3":
			value.chooseClassID = "R2A3";
			value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			value.chooseTableName = "tbl_temp_R2A3timetable";
			break;
		case "R2A4":
			value.chooseClassID = "R2A4";
			value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			value.chooseTableName = "tbl_temp_R2A4timetable";
			break;
		case "R2A5":
			value.chooseClassID = "R2A5";
			value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			value.chooseTableName = "tbl_temp_R2A5timetable";
			break;

			//●R1
		case "R1A1":
			value. chooseClassID = "R1A1";
			value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			value.chooseTableName = "tbl_temp_R1A1timetable";
			break;
		case "R1A2":
			value.chooseClassID = "R1A2";
			value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			value.chooseTableName = "tbl_temp_R1A2timetable";
			break;
		case "R1A3":
			value.chooseClassID = "R1A3";
			value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			value.chooseTableName = "tbl_temp_R1A3timetable";
			break;
		case "R1A4":
			value.chooseClassID = "R1A4";
			value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			value.chooseTableName = "tbl_temp_R1A4timetable";
			break;
		case "R1A5":
			value.chooseClassID = "R1A5";
			value.content_page = "/temp_timetable/temp_Rtable_regist.jsp";
			value.chooseTableName = "tbl_temp_R1A5timetable";
			break;

		//S3
		case "S":
			value.chooseClassID= "S3A1";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S3A1timetable";
			break;

		case "S3A1":
			value.chooseClassID = "S3A1";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S3A1timetable";
			break;
		case "S3A2":
			value.chooseClassID = "S3A2";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S3A2timetable";
			break;
		case "S3G1":
			value.chooseClassID = "S3G1";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S3G1timetable";
			break;
		case "S3M1":
			value.chooseClassID = "S3M1";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S3M1timetable";
			break;
		case "S3M2":
			value.chooseClassID = "S3M2";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S3M2timetable";
			break;

		//●S2
		case "S2A1":
			value.chooseClassID = "S2A1";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S2A1timetable";
			break;
		case "S2A2":
			value.chooseClassID = "S2A2";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S2A2timetable";
			break;
		case "S2A3":
			value.chooseClassID = "S2A3";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S2A3timetable";
			break;
		case "S2A4":
			value.chooseClassID = "S2A4";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S2A4timetable";
			break;
		case "S2G1":
			value.chooseClassID = "S2G1";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S2G1timetable";
			break;
		case "S2G2":
			value.chooseClassID = "S2G2";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S2G2timetable";
			break;
		case "S2G3":
			value.chooseClassID = "S2G3";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S2G3timetable";
			break;
		case "S2M1":
			value.chooseClassID = "S2M1";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S2M1timetable";
			break;
		case "S2M2":
			value.chooseClassID = "S2M2";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S2M2timetable";
			break;

		//S1
		case "S1A1":
			value.chooseClassID = "S1A1";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S1A1timetable";
			break;
		case "S1A2":
			value.chooseClassID = "S1A2";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S1A2timetable";
			break;
		case "S1A3":
			value.chooseClassID = "S1A3";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S1A3timetable";
			break;
		case "S1A4":
			value.chooseClassID = "S1A4";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S1A4timetable";
			break;
		case "S1G1":
			value.chooseClassID = "S1G1";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S1G1timetable";
			break;
		case "S1G2":
			value.chooseClassID = "S1G2";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S1G2timetable";
			break;
		case "S1G3":
			value.chooseClassID = "S1G3";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S1G3timetable";
			break;
		case "S1M1":
			value.chooseClassID = "S1M1";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S1M1timetable";
			break;
		case "S1M2":
			value.chooseClassID = "S1M2";
			value.content_page = "/temp_timetable/temp_Stable_regist.jsp";
			value.chooseTableName = "tbl_temp_S1M2timetable";
			break;

		//J2
		case "J":
			value.chooseClassID= "J2A1";
			value.content_page = "/temp_timetable/temp_Jtable_regist.jsp";
			value.chooseTableName = "tbl_temp_J2A1timetable";
			break;

		case "J2A1":
			value.chooseClassID = "J2A1";
			value.content_page = "/temp_timetable/temp_Jtable_regist.jsp";
			value.chooseTableName = "tbl_temp_J2A1timetable";
			break;
		case "J2A2":
			value.chooseClassID = "J2A2";
			value.content_page = "/temp_timetable/temp_Jtable_regist.jsp";
			value.chooseTableName = "tbl_temp_J2A2timetable";
			break;
		case "J2M1":
			value.chooseClassID = "J2M1";
			value.content_page = "/temp_timetable/temp_Jtable_regist.jsp";
			value.chooseTableName = "tbl_temp_J2M1timetable";
			break;
		case "J2M2":
			value.chooseClassID = "J2M2";
			value.content_page = "/temp_timetable/temp_Jtable_regist.jsp";
			value.chooseTableName = "tbl_temp_J2M2timetable";
			break;

		//J1
		case "J1A1":
			value.chooseClassID = "J1A1";
			value.content_page = "/temp_timetable/temp_Jtable_regist.jsp";
			value.chooseTableName = "tbl_temp_J1A1timetable";
			break;
		case "J1A2":
			value.chooseClassID = "J1A2";
			value.content_page = "/temp_timetable/temp_Jtable_regist.jsp";
			value.chooseTableName = "tbl_temp_J1A2timetable";
			break;
		case "J1M1":
			value.chooseClassID = "J1M1";
			value.content_page = "/temp_timetable/temp_Jtable_regist.jsp";
			value.chooseTableName = "tbl_temp_J1M1timetable";
			break;
		case "J1M2":
			value.chooseClassID = "J1M2";
			value.content_page = "/temp_timetable/temp_Jtable_regist.jsp";
			value.chooseTableName = "tbl_temp_J1M2timetable";
			break;

		//A1
		case "A":
			value.chooseClassID= "A1A1";
			value.content_page = "/temp_timetable/temp_Atable_regist.jsp";
			value.chooseTableName = "tbl_temp_A1A1timetable";
			break;

		case "A1A1":
			value.chooseClassID = "A1A1";
			value.content_page = "/temp_timetable/temp_Atable_regist.jsp";
			value.chooseTableName = "tbl_temp_A1A1timetable";
			break;
		case "A1A2":
			value.chooseClassID = "A1A2";
			value.content_page = "/temp_timetable/temp_Atable_regist.jsp";
			value.chooseTableName = "tbl_temp_A1A2timetable";
			break;

		}
		return value;
	}
}
