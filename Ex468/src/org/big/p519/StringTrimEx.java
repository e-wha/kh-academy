package org.big.p519;

public class StringTrimEx {

	public static void main(String[] args) {
		String tel1 = " 02";
		String tel2 = "123  ";
		String tel3 = "   1234   ";
		
		String strTel1 = tel1 + tel2 + tel3;
		System.out.println(strTel1);
		
		String strTel2 = tel1.trim() + tel2.trim() + tel3.trim();
		System.out.println(strTel2);

	}

}
