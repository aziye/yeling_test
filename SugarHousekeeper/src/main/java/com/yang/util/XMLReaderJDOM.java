package com.yang.util;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.input.SAXBuilder;

public class XMLReaderJDOM {

	public static List<String> getPrefixList(HttpServletRequest request, String field) {
		List<String> list = new ArrayList<String>();
		long lasting = System.currentTimeMillis();
		try {
			SAXBuilder builder = new SAXBuilder();
			Document doc = builder
					.build(request.getSession().getServletContext().getRealPath("WEB-INF/filter/FilterField.xml"));
			Element foo = doc.getRootElement();
			List<Element> allChildren = foo.getChildren();

			for (int i = 0; i < allChildren.size(); i++) {
				// System.out.println("field:" + ((Element)
				// allChildren.get(i)).getText());
				// System.out.println(allChildren.get(i).getName());
				if (allChildren.get(i).getName().equals(field)) {
					list.add(allChildren.get(i).getText());
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}