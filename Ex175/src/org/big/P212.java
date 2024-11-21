package org.big;

public class P212 {

	public static void main(String[] args) {
//		int[][] score = new int[2][3];
		int[][] score = new int[2][];
		score[0] = new int[2];
		score[1] = new int[3];
		System.out.println("score 길이 : " + score.length);
		System.out.println("score[0] 길이 : " + score[0].length);
		System.out.println("score[1] 길이 : " + score[1].length);
	
		int[][] score1 = {
				{95, 80},
				{90, 80, 90}
		};
		System.out.println("score1 길이 : " + score1.length);
		System.out.println("score1[0] 길이 : " + score1[0].length);
		System.out.println("score1[1] 길이 : " + score1[1].length);
		
		for (int i = 0; i < score1.length; i++) {
			for (int j = 0; j < score1[i].length; j++) {
				System.out.printf("score1 [%d][%d] = %d \t", i, j, score1[i][j]);
			}
			System.out.println();
		}
		
	}

}
