package manage.db;
import java.io.Serializable;

//科目情報クラス
public class subjectInfo implements Serializable {

	private int subjectID;
	private String subjectName;
	private String bringThings;
	private int showFlag;
	private InfoSubjectBean infosubject=new InfoSubjectBean();

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

	public subjectInfo( String subjectName, String bringThings, int showFlag) {
		super();
		this.subjectName = subjectName;
		this.bringThings = bringThings;
		this.showFlag = showFlag;
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

	public InfoSubjectBean getInfosubject() {
		return infosubject;
	}

	public void setInfosubject(String classID,int SubjectID) {
		this.infosubject.setClassList(classID);
		this.infosubject.setSubjectList(SubjectID);
	}


}

