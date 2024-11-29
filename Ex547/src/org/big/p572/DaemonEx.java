package org.big.p572;

public class DaemonEx {

	public static void main(String[] args) {
		SaveThread sth = new SaveThread();
		sth.setDaemon(true);
		sth.start();
		
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			// TODO: handle exception
		}
		System.out.println("메인 스레드 종료");
	}

}
