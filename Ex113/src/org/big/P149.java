package org.big;

import java.util.Scanner;

public class P149 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		/*
		 * byte b =5; b = (byte)-b; int result = 10 / b; System.out.println(result);
		 * 
		 * int x =10; int y = 20; int z = (++x) + (y--); System.out.println("x = " + x +
		 * ", y = " + y); System.out.println("z = " + z);
		 * 
		 * boolean stop = false; while (stop != true) { stop = !stop;
		 * System.out.println("while문 실행!!"); } int pencils = 534; int students = 30;
		 * int pencilsPerStuendt = pencils / students;
		 * System.out.println("pencilsPerStudent = " + pencilsPerStuendt); int
		 * pencilsLeft = pencils % students; System.out.println("pencilsLeft = " +
		 * pencilsLeft);
		 * 
		 * int var1 = 5; int var2 = 2; double var3 = (double)var1 / var2; int var4 =
		 * (int)(var3 * var2); System.out.println("var4 = " + var4);
		 * 
		 * int value = 356; System.out.println("value가 300이 되려면 = " + (value - value %
		 * 100));
		 * 
		 * float var11 = 10f; float var22 = var11 / 100; if (var22 == 0.1f) {
		 * System.out.println("10%입니다."); } else { System.out.println("10%가 아닙니다."); }
		 * 
		 * int lengthTop = 5; int lengthBottom = 10; int height = 7; double area =
		 * ((lengthTop + lengthBottom) * height / 2.0); System.out.println("" + area);
		 * 
		 * Scanner sc = new Scanner(System.in);
		 * 
		 * System.out.print("첫 번째 수: "); double num1 = Double.parseDouble(sc.next());
		 * System.out.print("두 번째 수: "); double num2 = Double.parseDouble(sc.next());
		 * System.out.println("---------------"); if ((int)num2 == 0 || num2 == 0.0) {
		 * System.out.println("결과: 무한대"); } else { System.out.println("결과: " + (num1 /
		 * num2)); }
		 */
		
		int var111 = 10;
		int var222 = 3;
		int var333 = 14;
		double var444 = var111 * var111 * Double.parseDouble(String.valueOf(var222) + "." + String.valueOf(var333));
		System.out.println("원의 넓이: " + var444);
		
		System.out.print("아이디: ");
		String name = sc.nextLine();
		System.out.print("패스워드: ");
		String strPassword = sc.nextLine();
		int password = Integer.parseInt(strPassword);
		
		if (name.equals("java")) {
			if (password == 12345) {
				System.out.println("로그인 성공");
			} else {
				System.out.println("로그인 실패: 패스워드가 틀림");
			}
		} else {
			System.out.println("로그인 실패: 아이디 존재하지 않음");
		}
		
		int x = 10;
		int y = 5;
		System.out.println( (x>7) && (y<=5) );
		System.out.println( (x%3 == 2) || (y%2 != 1));
		
		int value = 0;
		
		value += 10;
		value -= 10;
		value *= 10;
		value /= 10;
		
		int score = 85;
		String result = (!(score>90)) ? "가" : "나";
		System.out.println(result);
	}

}
