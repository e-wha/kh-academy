package org.big;

public class P183_3 {

	public static void main(String[] args) {
		while(true) {
			int num1 = (int)(Math.random() * 6) + 1;
			int num2 = (int)(Math.random() * 6) + 1;
			System.out.printf("눈1 = %d, 눈2 = %d\n", num1, num2);
			if (num1 + num2 == 5) {
				break;
			}
		}

	}

}
