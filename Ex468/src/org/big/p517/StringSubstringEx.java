package org.big.p517;

public class StringSubstringEx {

	public static void main(String[] args) {
		String ssn = "123456-1234567";
		
		String firstNum = ssn.substring(0, 6);
		System.out.println("주민번호 앞6자리: " + firstNum);
		
		String secondNum = ssn.substring(7);
		System.out.println("주민번호 뒷7자리: " + secondNum);
		
		String gender = ssn.substring(7, 8);
		int genderNum = Integer.parseInt(gender);
		if (genderNum % 2 == 0) {
			System.out.println("여성입니다.");
		} else {
			System.out.println("남성입니다.");
		}

	}

}
