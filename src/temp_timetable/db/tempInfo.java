package temp_timetable.db;

import java.io.Serializable;


public class tempInfo implements Serializable {

	private String period;
	private String subjectName;
	private String date;
	private String classID;
	private String roomName;
	private String teacherName;

	public tempInfo(String period, String subjectName, String date, String classID, String roomName,
			String teacherName) {
		super();
		this.period = period;
		this.subjectName = subjectName;
		this.date = date;
		this.classID = classID;
		this.roomName = roomName;
		this.teacherName = teacherName;
	}

	public tempInfo() {
		// TODO 自動生成されたコンストラクター・スタブ
	}

	public String getPeriod() {
		return period;
	}

	public void setPeriod(String period) {
		this.period = period;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
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
