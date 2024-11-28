package org.big.p522;

public class BoxingUnBoxingEx {

	public static void main(String[] args) {
		Integer obj1 = new Integer(100);
		int num1 = obj1;
		System.out.println("num1 = " + num1);
		
		Integer obj2 = Integer.valueOf("200");
		System.out.println("obj2 = " + obj2);
		
		int value1 = obj1.intValue();
		System.out.println("value1 = " + value1);
	}

}
