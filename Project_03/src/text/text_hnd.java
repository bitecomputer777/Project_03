package text;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import change.change_service;
import itemmore.mainitem_hnd;

public class text_hnd implements mainitem_hnd{
	
	public String action(HttpServletRequest req,
			HttpServletResponse res, String kind) {
		String view="main.jsp";
		
		text_service is = new text_service();
		switch(kind) {
		case"text.it":
			is.text(req);
			break;
			
		case "textwr.it":
			System.out.println("가나다");
			String no= is.textwr(req);
			view=null;
		try {
			res.sendRedirect("text.it?num="+no);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		}
		return view;	
	}		
}
