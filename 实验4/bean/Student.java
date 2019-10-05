package cn.cslg.bean;

public class Student {
	private String sno;
	private String sname;
	private String sex;
	private String classes;
	private double score;

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getClasses() {
		return classes;
	}

	public void setClasses(String classes) {
		this.classes = classes;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public Student(String sno, String sname, String sex, String classes, double score) {
		super();
		this.sno = sno;
		this.sname = sname;
		this.sex = sex;
		this.classes = classes;
		this.score = score;
	}

	public Student() {

	}

}
