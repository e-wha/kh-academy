package org.big.p435;

public class A {
	int field;
	void method1(int arg) {
		int localVar = 10;
		
		class D {
			public void method() {
				int result = localVar + arg;
			}
		}
	}
	
	static int field2;
	static void method2() { }
	
	class B {
		void method() {
			field = 10;
			
			field2 = 10;
			method2();
		}
	}
	
	static class C {
		void method() {
//			field1 = 10;
//			method();
			
			field2 = 10;
			method2();
		}
		
		
	}
}
