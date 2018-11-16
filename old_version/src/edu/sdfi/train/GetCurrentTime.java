package edu.sdfi.train;

import java.util.Date;
import java.text.SimpleDateFormat;
public class GetCurrentTime {
	
	Date date = new Date();
	String current_date;
	String current_HMS;
	String current_Hour;
	String hello;
	
	public String getTime() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		current_date = sdf.format(date);
		return current_date;
	}
	
	public String getHou_Min_Sec() {
		SimpleDateFormat Hou_Min_Sec = new SimpleDateFormat("HH,mm,ss");
		current_HMS = Hou_Min_Sec.format(date);
		return current_HMS;
	}
	
	public String Judge() {
		int hour;
		SimpleDateFormat Hour = new SimpleDateFormat("HH");
		current_Hour = Hour.format(date);
		hour = Integer.parseInt(current_Hour);
		if(hour>=6&&hour<12) {
			hello = "早上好!";
		}
		else if(hour>=12&&hour<19) {
			hello = "下午好!";
		}
		else if(hour>=19&&hour<24) {
			hello = "晚上好!";
		}
		else if(hour>=24&&hour<6) {
			hello = "早上好!";
		}
		return hello;
	}
}