package admin_order;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import com.main.main_hnd;
import com.sun.mail.iap.ResponseInputStream;

import admin_member.member_admin;
import admin_member.member_service;
import admin_member.message;
import admin_member.ninja;

public class order_hnd implements main_hnd {

	
	
	@Override
	public String action(HttpServletRequest req, HttpServletResponse res, String kind) {
		

	
		System.out.println(" ");
			String view = "test_admin_index.jsp";
			
			kind = kind.substring(0,kind.indexOf("."));
			
			System.out.println(" kind::"+kind);
			Map<String,order_service> obs = createMap();
			obs.get(kind).service(req);
			System.out.println("part == "+req.getAttribute("part"));
			System.out.println("sub == "+req.getAttribute("sub"));
			
			return view;
	}
		private Map<String,order_service>createMap(){
		
		Map<String ,order_service>temp = new HashMap<>();
		temp.put("money_admin",new money_admin());
		temp.put("money_search", new money_serch());
		temp.put("order_list",new order_list());
		temp.put("money_view",new money_view());
		temp.put("delivery_ad",new delivery_ad());
		temp.put("delivery_search",new delivery_search());
		
		return temp;
	}

	

}
