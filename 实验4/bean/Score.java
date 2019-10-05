package cn.cslg.bean;

public class Score {
	private int chinese;
	private int english;
	private int math;
	private int computer;
	private int pe;
	public int getChinese() {
		return chinese;
	}
	public void setChinese(int chinese) {
		this.chinese = chinese;
	}
	public int getEnglish() {
		return english;
	}
	public void setEnglish(int english) {
		this.english = english;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public int getComputer() {
		return computer;
	}
	public void setComputer(int computer) {
		this.computer = computer;
	}
	public int getPe() {
		return pe;
	}
	public void setPe(int pe) {
		this.pe = pe;
	}
	public Score(int chinese, int english, int math, int computer, int pe) {
		super();
		this.chinese = chinese;
		this.english = english;
		this.math = math;
		this.computer = computer;
		this.pe = pe;
	}
	public Score(){
		
	}

}
