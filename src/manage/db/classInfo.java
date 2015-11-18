package manage.db;

import java.io.Serializable;
//クラス情報
public class classInfo implements Serializable{
	//INSERT INTO tbl_class (classID, className) VALUES
	private String classID;

	private String className;

	public classInfo() {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}

	public classInfo(String classID, String className) {
		super();
		this.classID = classID;
		this.className = className;
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
