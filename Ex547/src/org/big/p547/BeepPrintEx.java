package org.big.p547;

import java.awt.Toolkit;

public class BeepPrintEx {

	public static void main(String[] args) {
		Toolkit toolkit = Toolkit.getDefaultToolkit();
		for (int i = 0; i < 5; i++) {
			toolkit.beep();
			try {
				Thread.sleep(500);
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		
		for (int i = 0; i <5; i++) {
			System.out.println("띵");
			try {
				Thread.sleep(500);
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		
//		Runnable tangTask = new BeepTask();
//		Thread th = new Thread(tangTask);
//		th.start();
//		
//		for (int i = 0; i < 5; i++) {
//			System.out.println("메인");
//			try {
//				Thread.sleep(500);
//			} catch (Exception e) {
//				// TODO: handle exception
//			}
//		}

	}

}
