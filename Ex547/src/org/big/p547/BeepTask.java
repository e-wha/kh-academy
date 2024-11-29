package org.big.p547;

public class BeepTask extends Thread{
	

	public void run() {
		for (int i = 0; i < 5; i++) {
			System.out.println("땅");
			try {
				Thread.sleep(500);
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
	}
	
}
