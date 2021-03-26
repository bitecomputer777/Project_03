package text;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;



public class text_service {
	public void text (HttpServletRequest req) {

		String itemno = req.getParameter("num");
		
		text_dao txdao = new text_dao();
		ArrayList<text> list = txdao.list_select(itemno);
		if(list.size()==0)
			list=null;
		//System.out.println(list.get(0).getNum());
		req.setAttribute("list", list);
		req.setAttribute("part", "itemtext.jsp");
	}
	
	 public  String textwr (HttpServletRequest req) {	
		 String condition = req.getParameter("condition");	
		 String from = req.getParameter("from");
		 String brand = req.getParameter("brand");
		 String keep = req.getParameter("keep");
		 String kg = req.getParameter("kg");
		 String detaimg = req.getParameter("detaimg");
		 String itemno = req.getParameter("itemno");
	
text_dao od = new text_dao();
          od.text_insert(condition,from,brand,keep,kg,detaimg,itemno);

		return itemno;
	  }
		
	

	
	
	

}
