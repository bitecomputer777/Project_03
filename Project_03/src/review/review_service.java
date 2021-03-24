package review;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class review_service {

	public void review (HttpServletRequest req) {

	review_dao redao = new review_dao();
	ArrayList<review> list = redao.list_select();
	if(list.size()==0)
		 list=null;
	
	req.setAttribute("list",list);
	req.setAttribute("part","review.jsp");
		}


  public void write (HttpServletRequest req) {	
	 String text= req.getParameter("text");
     String user = req.getParameter("user"); 
	 String itemno = req.getParameter("num");
     
     
	 review_dao od = new review_dao();
	 od.review_insert(text,user,itemno);
	 req.setAttribute("part","review.jsp");
	 
	  
	  
  }
	
}
