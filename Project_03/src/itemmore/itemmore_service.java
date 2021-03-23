package itemmore;

import javax.servlet.http.HttpServletRequest;

public class itemmore_service {
	public void view_item(HttpServletRequest req) {
		String itemno = req.getParameter("num");
		itemmore_dao itdao = new itemmore_dao();
		
		item data = itdao.view_select(itemno);
		req.setAttribute("item", data);
		req.setAttribute("part", "item.jsp");
	}

}
