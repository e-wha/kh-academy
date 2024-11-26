package org.big.p362;

public class Tire {
	public Tire(String location, int maxRotation) {
		this.location = location;
		this.maxRotation = maxRotation;
	}
	
	public int maxRotation;
	public int accumulatedRotation;
	public String location;
	
	public boolean roll() {
		++accumulatedRotation;
		if(accumulatedRotation < maxRotation) {
			System.out.printf("%s Tire 수명: %d회\n", location, (maxRotation - accumulatedRotation));
			return true;
		} else {
			System.out.printf("*** %s Tire 펑크 ***\n", location);
			return false;
		}
	}
}
