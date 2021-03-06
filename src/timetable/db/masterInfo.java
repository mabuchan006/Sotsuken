package timetable.db;

import java.io.Serializable;
import java.sql.Date;

public class masterInfo implements Serializable {

	private int period;
	private String subjectName;
	private Date date;
	private String classID;
	private String roomName;
	private String teacherName;
	private String bringThings;
	private String endFlag;
	private String eventName;


	public masterInfo(int period, String subjectName, Date date, String classID, String roomName, String teacherName,String bringThings) {
		super();
		this.period = period;
		this.subjectName = subjectName;
		this.date = date;
		this.classID = classID;
		this.roomName = roomName;
		this.teacherName = teacherName;
		this.setBringThings(bringThings);
	}

	public masterInfo(int period, Date date,String eventName, String endFlag) {
		super();
		this.period = period;
		this.date = date;
		this.eventName = eventName;
		this.endFlag = endFlag;
	}

	public masterInfo() {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}


	public int getPeriod() {
		return period;
	}


	public void setPeriod(int period) {
		this.period = period;
	}


	public String getSubjectName() {
		return subjectName;
	}


	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
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


	public String getRoomName() {
		return roomName;
	}


	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}


	public String getTeacherName() {
		return teacherName;
	}


	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}


	public String getBringThings() {
		return bringThings;
	}


	public void setBringThings(String bringThings) {
		this.bringThings = bringThings;
	}


	public String getEndFlag() {
		return endFlag;
	}


	public void setEndFlag(String endFlag) {
		this.endFlag = endFlag;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}


}
