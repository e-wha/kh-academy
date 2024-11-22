package org.big.P261;

public class Car {
	String company = "현대자동차";
	String model;
	String color;
	int maxspeed;
	
	public Car() { }
	
	Car(String model) {
		this.model = model;
	}
	
	Car(String model, String color) {
		this.model = model;
		this.color = color;
	}
	
	Car(String model, String color, int maxspeed) {
		this.model = model;
		this.color = color;
		this.maxspeed = maxspeed;
	}
}
