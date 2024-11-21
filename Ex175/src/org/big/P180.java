package org.big;

public class P180 {

	public static void main(String[] args) {
		Name: for (char i = 'A'; i <= 'Z'; i++) {
			for (char j = 'a'; j <= 'z'; j++) {
				System.out.println(i + "-" + j);
				if (j == 'g') {
					break Name;
				}
			}
		}
		System.out.println("프로그램 실행 종료");

	}

}
