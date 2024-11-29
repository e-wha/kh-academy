package org.big.p554;

public class ThreadA extends Thread{
	public ThreadA() {
		setName("ThreadA");
	}
	
	@Override
	public void run() {
		for (int i = 0; i < 2; i++) {
			System.out.println(getName() + "과 출력한 내용");
		}
	}
}
