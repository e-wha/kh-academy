package org.big.P261;

public class Car1 {
	String company = "현대자동차";
	String model;
	String color;
	int maxspeed;
	
	public Car1() { }
	
	Car1(String model) {
		this(model, "은색", 250);
	}
	
	Car1(String model, String color) {
		this(model, color, 250);
	}
	
	Car1(String model, String color, int maxspeed) {
		this.model = model;
		this.color = color;
		this.maxspeed = maxspeed;
	}
}
