package org.big.p303;

public class PersonEx {

	public static void main(String[] args) {
		Person p1 = new Person("12356-1234567", "홍길동");
		
		System.out.printf("국적: %s, 주민번호 %s, 이름: %s\n", p1.nation, p1.ssn, p1.name);
//		p1.nation = "호주";
//		p1.ssn = "";
		p1.name = "이순신";
		System.out.printf("국적: %s, 주민번호 %s, 이름: %s\n", p1.nation, p1.ssn, p1.name);
	}

}
