package cn.cslg.exp7.model;

public class Triangle {
	private double num1;
	private double num2;
	private double num3;
	public Triangle(double num1, double num2, double num3) {
		this.num1 = num1;
		this.num2 = num2;
		this.num3 = num3;
	}
	public Triangle(){
	}
	public double getNum1() {
		return num1;
	}
	public void setNum1(double num1) {
		this.num1 = num1;
	}
	public double getNum2() {
		return num2;
	}
	public void setNum2(double num2) {
		this.num2 = num2;
	}
	public double getNum3() {
		return num3;
	}
	public void setNum3(double num3) {
		this.num3 = num3;
	}
	
//	判断能否构成三角形
	public boolean isTriangle(){
		if(num1 > 0 && num2>0 && num3>0){
			if( (num1 >= (num2 + num3))||(num2 >= (num1 + num3))||(num3 >= (num1 + num2))){
			return false;
		}
		else{
			return true;
		}
		}else{
			return false;
		}	
	}
//	求三角形的面积
	public double area(Triangle t){
		if(t.isTriangle()){
			double p = (num1+num2+num3)/2;
			double s = Math.sqrt(p * (p - num1) * (p - num2) * (p - num3));
			return s;
		}
		return 0;
	}
	
	
	

}
