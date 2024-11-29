package org.big.p572;

public class SaveThread extends Thread{
	
	public void save() {
		System.out.println("작업 내용을 저장함.");
	}
	
	@Override
	public void run() {
//		while (true) {
//			try {
//				Thread.sleep(1000);
//			} catch (InterruptedException e) {
//				System.out.println("sleep(1000) 실행됨.");
//				break;
//			}
//			save();
//		}
		
		for (int i = 0; i < 100000; i++) {
			System.out.println("i = " + i);
			try {
				Thread.sleep(100);
			} catch (InterruptedException e) {
				System.out.println("sleep(100) 실행됨.");
				break;
			}
		}
	}

}
