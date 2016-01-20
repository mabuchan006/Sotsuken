package temp_timetable.db;

import java.io.Serializable;


public class tempInfo implements Serializable {

	private String period;
	private int subjectID;
	private String date;
	private String classID;
	private String roomName;
	private String teacherName;
	private String subjectName;



	public tempInfo() {
		// TODO 自動生成されたコンストラクター・スタブ
	}



	public tempInfo(String period, int subjectID, String date, String classID, String roomName, String teacherName) {
		super();
		this.period = period;
		this.subjectID = subjectID;
		this.date = date;
		this.classID = classID;
		this.roomName = roomName;
		this.teacherName = teacherName;
	}



	public tempInfo(String period, String subjectName,String date, String classID, String roomName, String teacherName,int subjectID	) {
		super();
		this.period = period;
		this.subjectName = subjectName;
		this.date = date;
		this.classID = classID;
		this.roomName = roomName;
		this.teacherName = teacherName;
		this.subjectID = subjectID;

	}



	public String getPeriod() {
		return period;
	}



	public void setPeriod(String period) {
		this.period = period;
	}



	public int getSubjectID() {
		return subjectID;
	}



	public void setSubjectID(int subjectID) {
		this.subjectID = subjectID;
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



	public String getSubjectName() {
		return subjectName;
	}



	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

}
