package org.big;

public class P179 {

	public static void main(String[] args) {
		while (true) {
			int num = (int)(Math.random() * 6) + 1;
			if (num == 3) {
				continue;
			}
			System.out.println("num = " + num);
			if (num == 6) {
				break;
			}
		}
		System.out.println("프로그램 종료");

	}

}
