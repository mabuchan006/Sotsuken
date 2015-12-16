package event.db;
import java.io.Serializable;
import java.util.Date;

public class eventInfo implements Serializable{

		private String eventName;
		private int period;
		private Date date;
		private String classID;
		private String roomID;
		private String guestTeacher;
		private String notice;


		public eventInfo() {
			super();
			// TODO 自動生成されたコンストラクター・スタブ
		}
		public eventInfo(String eventName, int period, Date date, String classID, String roomID, String guestTeacher,
				String notice) {
			super();
			this.eventName = eventName;
			this.period = period;
			this.date = date;
			this.classID = classID;
			this.roomID = roomID;
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


		public Date getDate() {
			return date;
		}


		public void setDate(Date date) {
			this.date = date;
		}


		public String getClassID() {
			return classID;
		}


		public void setClassID(String classID) {
			this.classID = classID;
		}


		public String getRoomID() {
			return roomID;
		}


		public void setRoomID(String roomID) {
			this.roomID = roomID;
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

}
