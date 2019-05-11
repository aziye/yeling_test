package com.yang.util;

import java.util.HashMap;
import java.util.Map;

import com.google.gson.Gson;

public class UrlToJson {

	public static String urlToJson(String URL) throws Exception{
		String strs[] = URL.split("&");
		Map<String, String> map = new HashMap<String, String>();
		for(String str: strs){
			String key = str.substring(0, str.indexOf("="));
			String value = str.substring(str.indexOf("=")+1);
			map.put(key, value);
		}
		Gson gson = new Gson();
		return gson.toJson(map);
	}
}
