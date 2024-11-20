package org.big;

public class P172 {

	public static void main(String[] args) {
//		for(int i = 1; i <= 10; i++) {
//			System.out.print(i + ", ");
//		}
		
		int sum = 0;
		for (int i = 1; i <= 100; i++) {
			sum += i;
			System.out.print(sum + ", ");
		}
		System.out.println("1~100 합 : " + sum);
	}

}
