package org.big.p561;

public class MediaThreadEx {

	public static void main(String[] args) {
		Thread th1 = new MovieThread();
		th1.start();
		
		Thread th2 = new Thread(new MusicRunnable());
		th2.start();

	}

}
