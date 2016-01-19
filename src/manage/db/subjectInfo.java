package manage.db;
import java.io.Serializable;

//科目情報クラス
public class subjectInfo implements Serializable {

	private int subjectID;
	private String subjectName;
	private String bringThings;
	private int showFlag;
	private String classID;

	public subjectInfo() {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}

	public subjectInfo(int subjectID, String subjectName, String bringThings, int showFlag) {
		super();
		this.subjectID = subjectID;
		this.subjectName = subjectName;
		this.bringThings = bringThings;
		this.showFlag = showFlag;
	}

	public subjectInfo(int subjectID, String subjectName, String bringThings, int showFlag,String classID) {
		super();
		this.subjectID = subjectID;
		this.subjectName = subjectName;
		this.bringThings = bringThings;
		this.showFlag = showFlag;
		this.classID = classID;
	}
	public int getSubjectID() {
		return subjectID;
	}

	public void setSubjectID(int subjectID) {
		this.subjectID = subjectID;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getBringThings() {
		return bringThings;
	}

	public void setBringThings(String bringThings) {
		this.bringThings = bringThings;
	}

	public int getShowFlag() {
		return showFlag;
	}

	public void setShowFlag(int showFlag) {
		this.showFlag = showFlag;
	}

	public String getClassID() {
		return classID;
	}

	public void setClassID(String classID) {
		this.classID = classID;
	}



}
