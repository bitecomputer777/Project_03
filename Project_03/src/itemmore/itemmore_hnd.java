package itemmore;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class itemmore_hnd  implements mainitem_hnd{
	
	
	@Override
       public String action(HttpServletRequest req, 
			HttpServletResponse res, String kind) {
		
		
String view="itemmore.jsp";
kind = kind.substring(0,kind.indexOf("."));
            req.setAttribute("part", "member");
			req.setAttribute("sub", kind);
return view;

			}
}	
	 
	

