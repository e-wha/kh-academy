package org.big.p582;

import java.util.ArrayList;
import java.util.List;

public class ArrayListEx {
	
	public static void main(String[] args) {
		List<String> list = new ArrayList<String>();
		
		list.add("Java");
		list.add("JDBC");
		list.add("Servlet/JSP");
		list.add(2, "Database");
		list.add("iBATIS");
		
		int size = list.size();
		System.out.println("size = " + size);
		System.out.println();
		
		String listStr = list.get(3);
		System.out.println("list[3] = " + listStr);
		System.out.println();
		
		for (int i = 0; i < list.size(); i++) {
			String listStr1 = list.get(i);
			System.out.println(i + ":" + listStr1);
		}
	}
}
