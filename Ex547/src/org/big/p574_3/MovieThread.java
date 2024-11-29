package org.big.p574_3;

public class MovieThread extends Thread{
	@Override
	public void run() {
		for (int i = 0; i < 3000; i++) {
			System.out.println("동영상을 재생합니다.");
			if (this.isInterrupted()) {
				break;
			}
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				System.out.println("media_sleep(1000)실행");
			}
		}
	}
}