package org.big.p468;

public class ArrayIndexOutOfBoundEx {

	public static void main(String[] args) {
			
		try {
			String data1 = args[0];
		} catch (ArrayIndexOutOfBoundsException e) {
			System.out.println("두 개의 실행 매개값이 필요합니다.");
		} catch (NumberFormatException e) {
			System.out.println("");
		}

	}

}
