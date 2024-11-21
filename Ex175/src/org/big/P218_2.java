package org.big;

import java.util.Scanner;

public class P218_2 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double[] array = new double[5];
		for (int i = 0; i < array.length; i++) {
			System.out.print("실수 5개를 차례대로 입력하세요 : ");
			array[i] = sc.nextDouble();
		}
		double min = array[0];
		System.out.println("입력된 5개 실수값");
		for (int i = 0; i < array.length; i++) {
			System.out.print(array[i] + ", ");
		}
		System.out.println();
		
		for (int i = 0; i < array.length; i++) {
			if (array[i] < min) {
				min = array[i];
			}
		}
		System.out.println("5개 실수 중 가장 작은 값은 " + min + "입니다.");

	}

}
