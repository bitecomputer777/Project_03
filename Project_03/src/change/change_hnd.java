package change;

import java.io.IOException;

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
		
	case "changewr.it":
		System.out.println("가나다");
		String no= is.changewr(req);
		view=null;
	try {
		res.sendRedirect("change.it?num="+no);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}	
	
	}
	return view;	
}

}
