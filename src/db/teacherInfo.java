package db;

import java.io.Serializable;

public class teacherInfo implements Serializable {

	private int teacherID;
	private String teacherName;
	private String password;

	public teacherInfo() {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}
	public teacherInfo(int teacherID, String teacherName, String password) {
		super();
		this.teacherID = teacherID;
		this.teacherName = teacherName;
		this.password = password;
	}

	public int getTeacherID() {
		return teacherID;
	}

	public void setTeacherID(int teacherID) {
		this.teacherID = teacherID;
	}

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


}
