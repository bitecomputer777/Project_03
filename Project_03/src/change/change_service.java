package change;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import javafx.scene.control.TextFormatter.Change;

public class change_service {
	public void change (HttpServletRequest req) {

		String itemno = req.getParameter("num");
		
		change_dao chdao = new change_dao();
		ArrayList<change> list = chdao.list_select(itemno);
		if(list.size()==0)
			list=null;
		System.out.println(list.get(0).getNum());
		req.setAttribute("list", list);
		req.setAttribute("part", "change.jsp");
	}
	

}
