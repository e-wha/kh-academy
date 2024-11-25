package org.big.p302;

public class SingletonEx {

	public static void main(String[] args) {
		Singleton obj1 = Singleton.getInstance();
		System.out.println("obj1 = " + obj1);
		
		Singleton obj2 = Singleton.getInstance();
		System.out.println("obj2 = " + obj2);

	}

}
