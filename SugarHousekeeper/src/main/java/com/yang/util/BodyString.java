package com.yang.util;

import java.io.BufferedReader;
import java.io.IOException;

public class BodyString {
	
	// 获取请求数据
	public static String getBodyString(BufferedReader br) {
		String inputLine;
		String str = "";
		try {
			while ((inputLine = br.readLine()) != null) {
				str += inputLine;
			}
			br.close();
		} catch (IOException e) {
			System.out.println("IOException: " + e);
		}
		return str;
	}
}
