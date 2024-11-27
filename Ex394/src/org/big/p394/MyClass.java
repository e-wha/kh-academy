package org.big.p394;

public class MyClass {
	
	RemoteControl rc = new Television();
	
	public MyClass(RemoteControl rc) {
		this.rc = rc;
		rc.turnOn();
		rc.setVolme(5);
	}
	
	public void methodA() {
		RemoteControl rc = new Audio();
		rc.turnOn();
		rc.setVolme(5);
	}
	
	public void methodB(RemoteControl rc) {
		rc.turnOn();
		rc.setVolme(5);
		
	}
}
