package itemmore;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class review_hnd implements mainitem_hnd{
	
	
	@Override
       public String action(HttpServletRequest req, 
			HttpServletResponse res, String kind) {
		String view="main.jsp";
		
		req.setAttribute("part", "item.jsp");
		req.setAttribute("sub", "review.jsp");
		System.out.println("정상작동");
		return view;
			}
}	