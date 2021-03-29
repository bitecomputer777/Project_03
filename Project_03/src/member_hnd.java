package admin_member;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.main.main_hnd;



public class member_hnd implements main_hnd {

	
	
	@Override
	public String action(HttpServletRequest req, HttpServletResponse res, String kind) {
	

	
		System.out.println(" ");
			String view = "test_admin_index.jsp";
			
			kind = kind.substring(0,kind.indexOf("."));
			
			System.out.println(" kind::"+kind);
			Map<String,member_service> obs = createMap();
			obs.get(kind).service(req);
			System.out.println("part == "+req.getAttribute("part"));
			System.out.println("sub == "+req.getAttribute("sub"));
		return view;
	}
	private Map<String,member_service>createMap(){
		
		Map<String ,member_service>temp = new HashMap<>();
		temp.put("list_message",new message());
		
		temp.put("member_admin",new member_admin());
		
		temp.put("ninja", new ninja());
		
		temp.put("message_view", new message_view());
		
		return temp;
	}

	

}
