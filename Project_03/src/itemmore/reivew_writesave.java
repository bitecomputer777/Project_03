package itemmore;

import javax.servlet.http.HttpServletRequest;

import itemmore.review_dao;

public class reivew_writesave implements review_service {
	
	public void service(HttpServletRequest req) {
		String id =(String)req.getSession().getAttribute("user");
		String text = req.getParameter("text");
	
		review_dao od = new review_dao();
		od.review_select (text,id);
	
		req.setAttribute("sub", "reivewlist");
	}
	

}
