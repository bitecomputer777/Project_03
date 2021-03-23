package admin_product;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.main.main_hnd;

public class product_hnd implements main_hnd{
	
	public String action(HttpServletRequest req, HttpServletResponse res , String kind) {
		
		String view = "index.jsp";
		kind = kind.substring(0,kind.indexOf("."));
		System.out.println("product_hnd의 action 클래스 안의 변수 kind의 값 " + kind);
		
		Map<String,product_service> obs = createMap();
		view=obs.get(kind).service(req);
		
		if(view==null) view="../index.jsp";

		
		
		return view;
	}
	
	private Map<String ,product_service> createMap(){
		
		Map<String,product_service> temp = new HashMap<>();
		temp.put("product_insert",new product_insert());
		
		temp.put("product_insertsave",new product_insertsave());
		
		temp.put("product_view", new product_view());
		
		temp.put("product",new product_list());
		
			
			
		return temp;
		
	}

	

	
	

}
