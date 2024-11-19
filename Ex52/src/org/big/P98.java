package org.big;

public class P98 {

	public static void main(String[] args) {
		byte x = 10, y = 20;
		byte result;
		
		result = (byte)(x + y);
		result += x;
		System.out.println("result = " + result);
		
		int intValue = 10;
		double doubleValue = 5.5;
		int result1 = (int)(intValue + doubleValue);
		System.out.println("result1 = " + result1);
		
		double doubleValue1 = 10.0;
		float floatValue = 20.0f;
		double result2 = doubleValue1 + floatValue;
		
		int x1 = 1;
		int y1 = 2;
		
		double result3 = (double)x1 / (double)y1;
		System.out.println("result3 = " + result3);
		
		char charValue = 'A';
		char charValue1 = 1;
		
		char result4 = (char)(charValue + charValue1);
		System.out.println("result4 = " + result4);
	}

}
