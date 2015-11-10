package db;

import java.io.Serializable;
import java.sql.Date;

public class masterInfo implements Serializable {

	private String period;
	private String subjectID;
	private Date date;
	private String classID;
	private String roomID;
	private String teacherName;


	public masterInfo() {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}

	public masterInfo(String period, String subjectID, Date date, String classID, String roomID, String teacherName) {
		super();
		this.period = period;
		this.subjectID = subjectID;
		this.date = date;
		this.classID = classID;
		this.roomID = roomID;
		this.teacherName = teacherName;
	}

	public String getPeriod() {
		return period;
	}

	public void setPeriod(String period) {
		this.period = period;
	}

	public String getSubjectID() {
		return subjectID;
	}

	public void setSubjectID(String subjectID) {
		this.subjectID = subjectID;
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

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}


}
