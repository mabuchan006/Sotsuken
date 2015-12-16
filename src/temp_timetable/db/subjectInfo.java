package temp_timetable.db;

public class subjectInfo {

	private String subjectID;
	private String subjectName;
	private String classID;
	private String className;

	public subjectInfo() {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}

	public subjectInfo(String subjectID, String subjectName, String classID, String className) {
		super();
		this.subjectID = subjectID;
		this.subjectName = subjectName;
		this.classID = classID;
		this.className = className;
	}

	public String getSubjectID() {
		return subjectID;
	}

	public void setSubjectID(String subjectID) {
		this.subjectID = subjectID;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getClassID() {
		return classID;
	}

	public void setClassID(String classID) {
		this.classID = classID;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}
}
