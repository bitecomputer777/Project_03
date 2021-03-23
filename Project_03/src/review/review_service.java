package review;

import javax.servlet.http.HttpServletRequest;

public interface review_service {
	
	public void service(HttpServletRequest req);
}


//public class review_service {
	//	public void service(HttpServletRequest req) {
		//String num = req.getParameter("num");
		//if(num!=null) {
		//	review_dao od = new review_dao();
		//	review data = od.view_select(Integer.parseInt(num));
		//	req.setAttribute("review_data", data);
	//	}
	
		//req.setAttribute("sub", "reviewwrite");
		
		
		
//	}

//}
