package org.big.p569;

public class IntteruptEx {

	public static void main(String[] args) {
		Thread th = new PrintThread2();
		th.start();
		
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			
		}
		th.interrupt();

	}

}
