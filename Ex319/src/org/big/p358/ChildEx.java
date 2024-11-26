package org.big.p358;

public class ChildEx {

	public static void main(String[] args) {
		Child child = new Child();
		
		Parent parent = child;
		parent.method1();
		parent.method2();

	}

}
