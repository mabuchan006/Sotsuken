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


	public masterInfo(int period, String subjectName, Date date, String classID, String roomName, String teacherName) {
		super();
		this.period = period;
		this.subjectName = subjectName;
		this.date = date;
		this.classID = classID;
		this.roomName = roomName;
		this.teacherName = teacherName;
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


}
