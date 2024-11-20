package org.big;

import java.util.Scanner;

public class P117 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String inputData;
		
		while (true) {
			System.out.print("키보드에서 값 입력 : ");
			inputData = sc.nextLine();
			System.out.println("입력된 문자열 : " + inputData);
			
			if(inputData.equals("q") || inputData.equals("Q")) {
				break;
			}
		}
	}

}
