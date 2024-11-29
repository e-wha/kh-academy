package org.big.p547;

public class TextPrintEx {

	public static void main(String[] args) {
		for (int i = 0; i < 5; i++) {
			System.out.println("메인");
			try {
				Thread.sleep(500);
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		
		for (int i = 0; i < 5; i++) {
			System.out.println("땅");
			try {
				Thread.sleep(500);
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		
		

	}

}
