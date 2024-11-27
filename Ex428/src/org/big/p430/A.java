package org.big.p430;

public class A {
	
	B field1 = new B();
	C field2 = new C();
	static C field3 = new C();
	
	public A() {
		System.out.println("A 객체가 생성됨.");
	}
	
	public class B {
		
		public B() {
			System.out.println("B 객체가 생성됨.");
		}
		int field1;
		public void method1() {
			
		}
	}
	
	public static class C {
		
		public C() {
			System.out.println("C 객체가 생성됨.");
		}
		int field2;
		public void method2() {
			
		}
	}
	
	public static void method1() {
		C var1 = new C();
	}
	
	public void method() {
		
		B var1 = new B();
		C var2 = new C();
		
		class D {
			public D() {
				System.out.println("D 객체가 생성됨.");
			}
			int field3;
			void method3() { 
				
			};
			
			
			
		}
		D d = new D();
		d.field3 = 3;
		d.method3();
	}
}
