package org.big.p449;

public class AnonymousEx {
	
	public static void main(String[] args) {
		Anonymous anony = new Anonymous();
		
		anony.pt.wake();
		anony.method1();
		anony.method2(
			new Parent() {
				void study() {
					System.out.println("공부합니다.");
				}
				void wake() {
					System.out.println("8시에 일어납니다.");
					study();
				};
			}
		);
				
	}
}
