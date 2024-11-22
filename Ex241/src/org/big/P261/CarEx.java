package org.big.P261;

public class CarEx {

	public static void main(String[] args) {
		Car car1 = new Car();
		System.out.printf("car1.company = %s\n\n",car1.company);
		
		Car car2 = new Car("자가용");
		System.out.printf("car2.company = %s\n",car2.company);
		System.out.printf("car2.model = %s\n\n",car2.model);

	}

}
