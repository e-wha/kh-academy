package org.big;

public class Bus implements Vehicle{
	@Override
	public void run() {
		System.out.println("Bus's run()");
	}
	
	void checkFare() {
		System.out.println("Bus's checkFare()");
	}
}
