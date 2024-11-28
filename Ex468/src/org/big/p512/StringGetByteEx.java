package org.big.p512;

public class StringGetByteEx {

	public static void main(String[] args) {
		String str = "안녕하세요";
		String str1 = "hello";
		
		byte[] bytes1 = str.getBytes();
		System.out.println("bytes1.length: " + bytes1.length);
		
		byte[] bytes2 = str1.getBytes();
		System.out.println("bytes2.length: " + bytes2.length);
		
		try {
			byte[] bytes3 = str.getBytes("EUC-KR");
			System.out.println("bytes3.length: " + bytes3.length);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
