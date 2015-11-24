package manage.db;

import java.io.Serializable;

public class divideInfo implements Serializable {
	private int period;
	private String roomID;
	private String week;
	private String classID;

	public divideInfo() {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}

	public divideInfo(int period, String roomID, String week, String classID) {
		super();
		this.period = period;
		this.roomID = roomID;
		this.week = week;
		this.classID = classID;
	}

	public int getPeriod() {
		return period;
	}

	public void setPeriod(int period) {
		this.period = period;
	}

	public String getRoomID() {
		return roomID;
	}

	public void setRoomID(String roomID) {
		this.roomID = roomID;
	}

	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	public String getClassID() {
		return classID;
	}

	public void setClassID(String classID) {
		this.classID = classID;
	}

}
