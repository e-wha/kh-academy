package org.big;

import java.util.Scanner;

public class P223_6 {

	public static void main(String[] args) {
		boolean run = true;
		int studentNum = 0;
		int[] scores = null;
		Scanner scanner = new Scanner(System.in);
		
		while(run) {
			System.out.println("----------------------------------------");
			System.out.println("1.학생수 | 2.점수입력 | 3.점수리스트 | 4.분석 | 5.종료");
			System.out.println("----------------------------------------");
			System.out.print("선택> ");
			
			int selectNo = Integer.parseInt(scanner.nextLine());
			
			switch (selectNo) {
			case 1:
				System.out.print("학생수> ");
				studentNum = Integer.parseInt(scanner.nextLine());
				scores = new int[studentNum];
				break;
			case 2:
				for (int i = 0; i < studentNum; i++) {
					System.out.printf("scores[%d]> ", i);
					scores[i] = Integer.parseInt(scanner.nextLine());
				}
				break;
			case 3:
				for (int i = 0; i < studentNum; i++) {
					System.out.printf("scores[%d]> %d\n", i, scores[i]);
				}
				break;
			case 4:
				int sum = 0, max = 0;
				double avg = 0.0;
				for (int i = 0; i < studentNum; i++) {
					max = (max < scores[i]) ? scores[i] : max;
					sum += scores[i];
				}
				avg = (double)sum / studentNum;
				System.out.println("최고 점수: " + max);
				System.out.println("평균 점수: " + avg);
				break;
			case 5:
				run = false;
				break;
			default:
				System.out.println("입력하신 번호는 해당 보기의 번호가 아닙니다.\n보기의 번호로 다시 입력해주세요.");
			}
			
//			if(selectNo == 1) {
//				System.out.print("학생수> ");
//				studentNum = Integer.parseInt(scanner.nextLine());
//				scores = new int[studentNum];
//			} else if(selectNo == 2) {
//				for (int i = 0; i < studentNum; i++) {
//					System.out.printf("scores[%d]> ", i);
//					scores[i] = Integer.parseInt(scanner.nextLine());
//				}
//			} else if(selectNo == 3) {
//				for (int i = 0; i < studentNum; i++) {
//					System.out.printf("scores[%d]> %d\n", i, scores[i]);
//				}
//			} else if(selectNo == 4) {
//				int sum = 0, count = 0, max = 0;
//				double avg = 0.0;
//				for (int i = 0; i < studentNum; i++) {
//					if (max < scores[i]) {
//						max = scores[i];
//					}
//					sum += scores[i];
//					count++;
//				}
//				avg = (double)sum / count;
//				System.out.println("최고 점수: " + max);
//				System.out.println("평균 점수: " + avg);
//			} else if(selectNo == 5) {
//				break;
//			} else {
//				System.out.println("입력하신 번호는 해당 보기의 번호가 아닙니다.\n보기의 번호로 다시 입력해주세요.");
//			}
		}
		System.out.println("프로그램 종료");
		
	}

}
