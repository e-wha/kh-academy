package org.big.p298;

public class CalculatorEx {

	public static void main(String[] args) {
		Calculator calc = new Calculator();
		
		double result1 = Calculator.pi;
		
		int result2 = Calculator.plus(10, 20);
		
		int result3 = Calculator.minus(10, 20);
		
		System.out.printf("pi = %f, plus = %d, minus = %d", result1, result2, result3);

	}

}
