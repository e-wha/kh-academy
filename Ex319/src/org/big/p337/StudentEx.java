package org.big.p337;

public class StudentEx {
	
	public static void main(String[] args) {
		Student st = new Student("홍길동", "123456-123456", 1);
		System.out.println("name: " + st.name);
		System.out.println("ssn: " + st.ssn);
		System.out.println("StudentNo: " + st.StudentNo);
	}
}
