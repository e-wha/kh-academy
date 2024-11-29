package org.big.p537;

import java.util.Calendar;

public class CalendarEx {
	public static void main(String[] args) {
		Calendar now = Calendar.getInstance();
		
		int year = now.get(Calendar.YEAR);
		System.out.println("년도 : " + year);
		
		int month = now.get(Calendar.MONTH);
		System.out.println("월 : " + month);
		
		int day = now.get(Calendar.DAY_OF_MONTH);
		System.out.println("일 : " + day);
		
		int week = now.get(Calendar.DAY_OF_WEEK);
		System.out.println("요일 : " + week);
		
		int amPm = now.get(Calendar.AM);
		System.out.println("오전오후 : " + amPm);
		
//		int hour = now.get(Calendar.HOUR);
//		System.out.println("시간 : " + hour);
		
		String calPrint = (day < 10) ? ("0" + day) : ("" + day);
//		System.out.println(calPrint);
		String[] dayArray = {"일", "월", "화", "수", "목", "금", "토"};
		String strDayofWeek = dayArray[week-1] + "요일";
//		System.out.println(strDayofWeek);
		
		int hour = now.get(Calendar.HOUR_OF_DAY);
//		System.out.println(hour);
		
		int minute = now.get(Calendar.MINUTE);
//		System.out.println(minute);
		
		System.out.printf(year + "년 " + month + "월 " + calPrint + "일 " + strDayofWeek + " " + hour + "시 " + minute + "분");
		
	}
}
