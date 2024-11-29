package org.big.p554;

public class ThreadB extends Thread{
	public ThreadB() {
		setName("ThreadB");
	}
	@Override
	public void run() {
		for (int i = 0; i < 2; i++) {
			System.out.println(getName() + "과 출력한 내용");
		}
	}
}
