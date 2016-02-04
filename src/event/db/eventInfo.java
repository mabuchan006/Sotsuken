package event.db;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;



public class eventInfo implements Serializable{

		private int eventID;
		private String eventName;
		private String period;
		private List<String> periodList=new ArrayList<String>();
		private List<String> date=new ArrayList<String>();
		private String classID;
		private String guestTeacher;
		private String notice;
		private String endFlag;
		private String roomName;


		public eventInfo() {
			super();
			// TODO 自動生成されたコンストラクター・スタブ
		}
		public eventInfo(int eventID,String eventName, String period, List<String> date, String classID, String roomName, String endFlag,String guestTeacher,
				String notice) {
			super();

			this.eventID = eventID;
			this.eventName = eventName;
			this.period = period;
			this.setDate(date);
			this.classID = classID;
			this.roomName = roomName;
			this.endFlag = endFlag;
			this.guestTeacher = guestTeacher;
			this.notice = notice;
		}

		public eventInfo(int eventID,String eventName, List<String> periodList, List<String> date, String classID, String roomName, String endFlag,String guestTeacher,
				String notice) {
			super();
			this.eventID = eventID;
			this.eventName = eventName;
			this.periodList = periodList;
			this.date = date;
			this.classID = classID;
			this.guestTeacher = guestTeacher;
			this.notice = notice;
			this.endFlag = endFlag;
			this.roomName = roomName;
		}

		public String getEventName() {
			return eventName;
		}


		public void setEventName(String eventName) {
			this.eventName = eventName;
		}


		public String getPeriod() {
			return period;
		}


		public void setPeriod(String period) {
			this.period = period;
		}





		public String getClassID() {
			return classID;
		}


		public void setClassID(String classID) {
			this.classID = classID;
		}


		public String getRoomName() {
			return roomName;
		}


		public void setRoomName(String roomName) {
			this.roomName = roomName;
		}


		public String getGuestTeacher() {
			return guestTeacher;
		}


		public void setGuestTeacher(String guestTeacher) {
			this.guestTeacher = guestTeacher;
		}


		public String getNotice() {
			return notice;
		}


		public void setNotice(String notice) {
			this.notice = notice;
		}
		public int getEventID() {
			return eventID;
		}
		public void setEventID(int eventID) {
			this.eventID = eventID;
		}
		public String getEndFlag() {
			return endFlag;
		}
		public void setEndFlag(String endFlag) {
			this.endFlag = endFlag;
		}
		public List<String> getDate() {
			return date;
		}
		public void setDate(List<String> date) {
			this.date = date;
		}
		public List<String> getPeriodList() {
			return periodList;
		}

		public void setPeriodList(List<String> periodList) {
			this.periodList = periodList;
		}




}
