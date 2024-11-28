package org.big.p468;

public class NullPointerEx {
	public static void main(String[] args) {
		
		try {
			String data = null;
			System.out.println(data.toString());
		} catch (Exception e) {
			System.out.println("입력된 데이터를 확인해 주세요.");
		} finally {
			System.out.println("정상 실행, 예외 발생 유무와 관계없이 무조건 실행되는 구문입니다.");
		}
		
		
	}
}
