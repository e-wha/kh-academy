package org.big;

import java.util.Scanner;

public class P218_1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int[] array = new int[5];
		int max = 0;
		
		for (int i = 0; i < array.length; i++) {
			System.out.print("정수 5개를 차례대로 입력하세요 : ");
			array[i] = sc.nextInt();
		}
		
		System.out.println("입력된 5개 정수값");
		for (int i = 0; i < array.length; i++) {
			System.out.print(array[i] + ", ");
		}
		System.out.println();
		
		for (int i = 0; i < array.length; i++) {
			if (array[i] > max) {
				max = array[i];
			}
		}
		System.out.println("5개 정수 중 가장 큰 값은 " + max + "입니다.");
	}

}
