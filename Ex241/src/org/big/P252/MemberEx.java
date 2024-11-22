package org.big.P252;

public class MemberEx {

	public static void main(String[] args) {
		Member member = new Member("이름", "아이디", "패스워드", 20);
		
		System.out.printf("이름 = %s, 아이디 = %s, 패스워드 = %s, 나이 = %d\n", member.name, member.id, member.password, member.age);
		
		member.name = "최하얀";
		member.age = 23;
		
		System.out.printf("이름 = %s, 아이디 = %s, 패스워드 = %s, 나이 = %d\n", member.name, member.id, member.password, member.age);

	}

}
