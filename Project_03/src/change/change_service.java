package change;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import javafx.scene.control.TextFormatter.Change;
import review.review_dao;

public class change_service {
	public void change (HttpServletRequest req) {

		String itemno = req.getParameter("num");
		
		change_dao chdao = new change_dao();
		ArrayList<change> list = chdao.list_select(itemno);
		if(list.size()==0)
			list=null;
		//System.out.println(list.get(0).getNum());
		req.setAttribute("list", list);
		req.setAttribute("part", "change.jsp");
	}
	
	 public  String changewr (HttpServletRequest req) {	
		 String name = req.getParameter("name");
	     String tel = req.getParameter("tel"); 
		 String teltime = req.getParameter("teltime");
		 String email = req.getParameter("email");
		 String  fax = req.getParameter("fax");
		 String codenum = req.getParameter("codenum");
		 String address1 = req.getParameter("address1");
		 String address2 = req.getParameter("address2");
		 String itemno = req.getParameter("itemno");
		
		 change_dao od = new change_dao();
          od.change_insert(name, tel, teltime, email, fax, codenum, address1, address2, itemno);

		return itemno;
	  }
		
	
	

}
