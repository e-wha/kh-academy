package org.big;

public class P232 {

	public static void main(String[] args) {
		LoginResult result = LoginResult.FAIL_PASSWORD;
		
		if (result == LoginResult.SUCCESS) {
			System.out.println("로그인 성공");
		} else if (result == LoginResult.FAIL_ID) {
			System.out.println("ID가 일치하지 않습니다.");
		} else if (result == LoginResult.FAIL_PASSWORD) {
			System.out.println("PASSWORD가 일치하지 않습니다.");
		}
	}

}
