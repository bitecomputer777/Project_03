package review;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reivew.reviewlist;
import reivew.reivew_reply;
import reivew.reivew_service;
import reivew.reivew_view;
import reivew.reivew_write;
import reivew.reivew_writesave;

public class review_hnd implements mainitem_hnd{

	public String action(HttpServletRequest req, 
			HttpServletResponse res, String kind) {
		
		String view="index.jsp";
		kind = kind.substring(0,kind.indexOf("."));
	
		Map<String,obtain_service> obs = createMap();
		obs.get(kind).service(req);
		
		return view;
	}
	
	private Map<String,review_service> createMap(){
		Map<String,review_service> temp = new HashMap<>();
		temp.put("review_write", new review_write());
		temp.put("review_write_save", new review_writesave());
		temp.put("review_reply", new review_reply());
		temp.put("review", new review_list());
		return temp;
	}
}
	
	
	
	
	
	
//	@Override
  //     public String action(HttpServletRequest req, 
	//		HttpServletResponse res, String kind) {
		//String view="main.jsp";
		
//		req.setAttribute("part", "item.jsp");
//		req.setAttribute("sub", "review.jsp");
	//	System.out.println("정상작동");
	//	return view;
	//		}
}	