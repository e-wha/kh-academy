package org.big.p299;

public class ClassName {
	
	public ClassName() {
		
	}
	
	int field1;
	void method1() { System.out.println("method1() 출력!!"); }
	
	static int field2;
	static void method2() { System.out.println("method2() 출력!!"); }
	
	static void method3() {
//		ClassName cn = new ClassName();
//		cn.field1 = 10;
		field2 = 10;
		System.out.println("method3()안의 field2 = " + field2);
		method2();
	}
}
