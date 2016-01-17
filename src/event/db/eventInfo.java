package event.db;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;



public class eventInfo implements Serializable{

		private int eventID;
		private String eventName;
		private int period;
		private List<String> date=new ArrayList<String>();;
		private String classID;
		private String guestTeacher;
		private String notice;
		private String endFlag;
		private String roomName;


		public eventInfo() {
			super();
			// TODO 自動生成されたコンストラクター・スタブ
		}
		public eventInfo(int eventID,String eventName, int period, List<String> date, String classID, String roomName, String endFlag,String guestTeacher,
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



		public String getEventName() {
			return eventName;
		}


		public void setEventName(String eventName) {
			this.eventName = eventName;
		}


		public int getPeriod() {
			return period;
		}


		public void setPeriod(int period) {
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



}
