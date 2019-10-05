package cn.cslg.bean;

public class Car {
	private String color;
	private boolean airConditioner;

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public boolean isAirConditioner() {
		return airConditioner;
	}

	public void setAirConditioner(boolean airConditioner) {
		this.airConditioner = airConditioner;
	}

	public Car(String color, boolean airConditioner) {
		super();
		this.color = color;
		this.airConditioner = airConditioner;
	}

	public Car() {

	}

}
