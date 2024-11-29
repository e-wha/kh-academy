package org.big.p552;

import java.awt.Toolkit;

public class BeepPrintEx {

	public static void main(String[] args) {
		Thread th = new Thread() {
			public void run() {
				Toolkit toolkit = Toolkit.getDefaultToolkit();
				for (int i = 0; i < 5; i++) {
					toolkit.beep();
					try {
						Thread.sleep(500);
					} catch (Exception e) {
						// TODO: handle exception
					}
				}
			};
		};
		th.start();
		for (int i = 0; i <5; i++) {
			System.out.println("띵");
			try {
				Thread.sleep(500);
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
	}

}
