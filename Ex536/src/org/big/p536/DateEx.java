package org.big.p536;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateEx {

	public static void main(String[] args) {
		Date now = new Date();
		String strNow = now.toString();
		System.out.println("현재 시간 : " + strNow);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yy년 M월 d일");
		String strSdf = sdf.format(now);
		System.out.println("현재 시간 : " + strSdf);
		
		SimpleDateFormat datePrint = new SimpleDateFormat("yyyy년 MM월 dd일 E요일 hh시 mm분");
		String dateFormat = datePrint.format(now);
		System.out.println("현재 시간 : " + dateFormat);
 
	}

}
