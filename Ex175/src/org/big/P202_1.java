package org.big;

import java.util.Scanner;

public class P202_1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("국어, 영어, 수학 점수를 차례대로 입력하세요 : ");
		int[] score = new int[3];
		int sum = 0;
		double average = 0;
//		for (int i = 0; i < score.length; i++) {
//			score[i] = Integer.parseInt(sc.next());
//			sum += score[i];
//		}
		String[] grade = sc.nextLine().split(", ");
		for (int i = 0; i < score.length; i++) {
			score[i] = Integer.parseInt(grade[i]);
			sum += score[i];
		}
		System.out.printf("국어 : %d, 영어 : %d, 수학 : %d\n", score[0], score[1], score[2]);
		average = (double)sum / score.length;
		System.out.printf("세 과목의 합계는 %d점이고 평균은 %.3f점입니다.", sum, average);

	}

}
