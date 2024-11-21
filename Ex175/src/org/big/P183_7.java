package org.big;

import java.util.Scanner;

public class P183_7 {

	public static void main(String[] args) {
		boolean run = true;
		int balance = 0;
		Scanner scanner = new Scanner(System.in);
		
		while(run) {
			System.out.println("-------------------------------------");
			System.out.println("1. 예금 | 2. 출금 | 3. 잔고 | 4. 종료");
			System.out.println("-------------------------------------");
			System.out.print("선택> ");
			int sel = Integer.parseInt(scanner.nextLine());
			if (sel == 1) {
				System.out.print("예금액> ");
				System.out.println();
				balance += Integer.parseInt(scanner.nextLine());
			} else if (sel == 2) {
				System.out.print("출금액> ");
				int money = Integer.parseInt(scanner.nextLine());
				if (balance < money) {
					System.out.println("잔고가 부족합니다.\n");
				} else {
					System.out.println();
					balance -= money;
				}
			} else if (sel == 3) {
				System.out.printf("잔고> %d\n\n", balance);
			} else if (sel == 4){
				System.out.println("\n프로그램 종료");
				break;
			} else {
				System.out.println("화면에 표기되어 있는 번호를 선택해주세요.\n");
			}
		}
	}

}
