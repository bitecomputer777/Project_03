package itemmore;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class itemmore_hnd implements mainitem_hnd{
	 
	@Override
	public String action(HttpServletRequest req, HttpServletResponse res, String kind) {
	String view="main.jsp";
		
	itemmore_service is = new itemmore_service();
	switch(kind) {
	case "item.it":
	is.view_item(req);
	break;
	}
	
		System.out.println("정상작동");
		return view;	
	}
	

}
