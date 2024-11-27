package org.big.p422;

public class InterfaceEx {

	public static void main(String[] args) {
		
		InterfaceClass imp1 = new InterfaceClass();
		
		InterfaceA ia = imp1;
		ia.methodA();

		InterfaceC ic = imp1;
		ic.methodA();
		ic.methodB();
		ic.methodC();
	}

}
