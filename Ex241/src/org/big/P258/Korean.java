package org.big.P258;

public class Korean {
	private String nation;
	private String name;
	private String ssn;
	
	public Korean() { }
	public Korean(String n) { }
	
	public Korean(String n, String n1) {
		this.name = n;
		this.ssn = n1;
	}
	
	String getName() {
		return this.name;
	}
}
