package org.big.p394;

public class RemoteControlEx {

	public static void main(String[] args) {
		RemoteControl rc;
		rc = new Television();
		rc.turnOn();
		rc.setVolme(7);
		rc.turnOff();
		
		rc = new Audio();
		rc.turnOn();
		

	}

}
