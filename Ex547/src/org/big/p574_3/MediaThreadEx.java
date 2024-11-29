package org.big.p574_3;


public class MediaThreadEx {

	public static void main(String[] args) {
		Thread th1 = new MovieThread();
		th1.start();
		
		try {
			Thread.sleep(1000);
			th1.interrupt();
		} catch (InterruptedException e) {
			// TODO: handle exception
		}
		

	}

}
