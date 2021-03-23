package review;

import javax.servlet.http.HttpServletRequest;

import review.review_dao;

public class review_writesave implements review_service {
	
	public void service(HttpServletRequest req) {
		String id =(String)req.getSession().getAttribute("user");
		String text = req.getParameter("text");
	
		review_dao od = new review_dao();
		od.review_select (text,id);
	
		req.setAttribute("sub", "reivewlist");
	}
	

}
