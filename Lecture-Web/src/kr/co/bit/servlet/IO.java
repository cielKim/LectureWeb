package kr.co.bit.servlet;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

public class IO {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		
		InputStream is = System.in;
		InputStreamReader isr = new InputStreamReader(is, "utf-8");
		BufferedInputStream bis = new BufferedInputStream(is);
		BufferedReader br = new BufferedReader(isr);
		System.out.println("문자열을 입력하세요 종료는 quit");
		while(true) {
			String str = br.readLine();
			if(str==null) break;
			System.out.println(str);
		}
	}

}
