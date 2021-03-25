package change;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import itemmore.mainitem_hnd;

public class change_hnd implements mainitem_hnd {

public String action(HttpServletRequest req,
		HttpServletResponse res, String kind) {
	String view="main.jsp";
	
	change_service is = new change_service();
	switch(kind) {
	case"change.it":
		is.change(req);
		break;
	
	}
	return view;	
}

}
