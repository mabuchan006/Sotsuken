package manage.db;

import java.io.Serializable;
import java.util.ArrayList;

public class InfoSubjectBean implements Serializable {

	private ArrayList<String> classList = new ArrayList<String>();
	private ArrayList<Integer> subjectList = new ArrayList<Integer>();

	public InfoSubjectBean(String classID,int subjectID) {
		super();
		this.setClassList(classID);
		this.setSubjectList(subjectID);
	}
	public InfoSubjectBean() {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}

	public ArrayList<String> getClassList() {
		return classList;
	}
	public void setClassList(String classID) {
		this.classList.add(classID);
	}
	public ArrayList<Integer> getSubjectList() {
		return subjectList;
	}
	public void setSubjectList(int subjectID) {
		this.subjectList.add(subjectID);
	}

}