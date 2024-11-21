package org.big;

public class P183_6 {
	public static void main(String[] args) {
		for (int i = 4; i > 0; i--) {
			for (int j = 1; j < i; j++) {
				System.out.printf(" ");
			}
			for (int j = 0; j < 5 - i; j++) {
				System.out.printf("*");
			}
			System.out.println();
		}
	}
}
