package org.big.p340;

public class ComputerEx {

	public static void main(String[] args) {
		int r = 10;
		
		Calculator calc = new Calculator();
		System.out.println("원의 면적: " + calc.areaCircle(r));
		
		Computer com = new Computer();
		System.out.println("원의 면적: " + com.areaCircle(r));

	}

}
