package org.big;

public class Driver {
	
	Vehicle vehicle = new Vehicle() {
		
		@Override
		public void run() {
			System.out.println("Driver's Vehicle->run()");
		}
	};
	
	void drive(Vehicle vehicle) {
		if (vehicle instanceof Bus) {
			Bus bus = (Bus)vehicle;
			bus.checkFare();
		}
	}
}
