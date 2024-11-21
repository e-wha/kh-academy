package org.big;

import java.util.Scanner;

public class P202_2 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);	
//		int[] solution = new int[10];
//		int[] inputSol = new int[10];
//		int count1 = 0, count2 = 0;
//		for (int i = 0; i < solution.length; i++) {
//			int answer = (int)(Math.random() * 4) + 1;
//			solution[i] = answer;
//		}
//		
//		for (int i = 0; i < 10; i++) {
//			System.out.print(solution[i] + ", ");
//		}
//		System.out.println();
//		
//		System.out.print("답안을 입력하세요(범위 : 1 ~ 4) : ");
//		for (int i = 0; i < inputSol.length; i++) {
//			inputSol[i] = sc.nextInt();
//			if (solution[i] == inputSol[i]) {
//				count1++;
//			} else {
//				count2++;
//			}
//		}
//		System.out.printf("채점결과 : (정답) %d개 (오답) %d개 / %d점", count1, count2, count1*10);
		
		System.out.print("답안을 입력하세요.(1 ~ 4) : ");
		String[] solution = sc.nextLine().split(" ");
		int[] inputSol = new int[10];
		int correct = 0, incorrect = 0;
		
		for (int i = 0; i < 10; i++) {
			inputSol[i] = (int)(Math.random() * 4) + 1;
			System.out.print(inputSol[i] + ", ");
		}
		System.out.println();
		
		for (int i = 0; i < 10; i++) {
			if (Integer.parseInt(solution[i]) == inputSol[i]) {
				correct++;
			} else {
				incorrect++;
			}
		}
		System.out.printf("채점결과 : (정답) %d개 (오답) %d개 / %d점", correct, incorrect, correct*10);

	}

}
