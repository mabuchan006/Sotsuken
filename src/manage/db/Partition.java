package manage.db;

import java.io.Serializable;

public class Partition implements Serializable {


	private String par_grade;
	private String par_class;


	public Partition() {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}




	public Partition(String par_grade, String par_class) {
		super();
		this.par_grade = par_grade;
		this.par_class = par_class;
	}




	public String getPar_grade() {
		return par_grade;
	}

	public void setPar_grade(String par_grade) {
		this.par_grade = par_grade;
	}
	public String getPar_class() {
		return par_class;
	}
	public void setPar_class(String par_class) {
		this.par_class = par_class;
	}


}
