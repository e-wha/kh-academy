package org.big;

import java.util.Scanner;

public class P218_3 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String[][] strScore = new String[3][5];
		int[][] score = new int[3][5];
		double[] average = new double[3];
		for (int i = 0; i < strScore.length; i++) {
			System.out.printf("%d번 학생의 4과목 성적을 차례대로 입력하세요 : ", i+1);
			strScore[i] = sc.nextLine().split(" ");
		}
		
		for (int i = 0; i < score.length; i++) {
//			System.out.printf("%d 학생의 4과목 성적 : ", i+1);
			for (int j = 0; j < score[i].length - 1; j++) {
				score[i][j] = Integer.parseInt(strScore[i][j]);
//				System.out.print(score[i][j] + ", ");
			}
//			System.out.println();
		}
		
		for (int i = 0; i < 3; i++) {
			score[i][4] = score[i][0] + score[i][1] + score[i][2] + score[i][3];
			average[i] = (double)score[i][4] / 4;
		}
		
		for (int i = 0; i < score.length; i++) {
			System.out.printf("%d번 학생의 4과목 성적 총합 및 평균 : %d, %.3f\n", i+1, score[i][4], average[i]);
		}
	}

}
