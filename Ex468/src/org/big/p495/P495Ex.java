package org.big.p495;

public class P495Ex {

	public static void main(String[] args) {
		P495 obj1 = new P495("blue");
		P495 obj2 = new P495("blue");
		P495 obj3 = new P495("red");
		
		if (obj1.equals(obj2)) {
			System.out.println("obj1과 obj2는 동등합니다.");
		} else {
			System.out.println("obj1과 obj2는 동등하지 않습니다.");
		}
		
		if(obj1.equals(obj3)) {
			System.out.println("obj1과 obj3는 동등합니다.");
		} else {
			System.out.println("obj1과 obj3는 동등하지 않습니다.");
		}

	}

}
