package org.big;

import java.util.Scanner;

public class P121_3 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("[필수 정보 입력]");
		
		System.out.print("1. 이름: ");
		String name = sc.nextLine();
		
		System.out.print("2. 주민번호 앞 6자리: ");
		String birth = sc.nextLine();
		
		System.out.print("3. 전화번호: ");
		String tel = sc.nextLine();
		
		System.out.println();
		System.out.println("[입력된 내용]");
		System.out.println("1. 이름: " + name);
		System.out.println("2. 주민번호 앞 6자리: " + birth);
		System.out.println("3. 전화번호: " + tel);
	}

}
