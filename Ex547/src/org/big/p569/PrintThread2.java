package org.big.p569;

public class PrintThread2 extends Thread{
	int num1 = 1;
	@Override
	public void run() {
		try {
			while(true) {
				System.out.println("실행 중 " + num1++);
//				Thread.sleep(1);
				if (Thread.interrupted()) {
					System.out.println("인터럽트 발생");
					break;
				}
			}
		} catch (Exception e) {
			System.out.println("sleep(1) 실행");
		}
		System.out.println("자원 정리");
		System.out.println("실행 종료");
	}
}
