package itemmore;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class reviewlist  implements review_service{
	public void service (HttpServletRequest req) {
		review_dao od = new review_dao();
		ArrayList<review> list = od.list_select();
		if(list.size()==0)
			list=null;
		
		req.setAttribute("list", list);	
		req.setAttribute("sub", "reviewlist");
	}

}
