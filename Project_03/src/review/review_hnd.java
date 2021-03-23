package review;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import itemmore.mainitem_hnd;
import review.reviewlist;
import review.review_reply;
import review.review_service;
import review.review_write;
import review.review_writesave;

public class review_hnd implements mainitem_hnd{

	public String action(HttpServletRequest req, 
			HttpServletResponse res, String kind) {
		
		String view="index.jsp";
		kind = kind.substring(0,kind.indexOf("."));
	
		Map<String,review_service> obs = createMap();
		obs.get(kind).service(req);
		
		return view;
	}
	
	private Map<String,review_service> createMap(){
		Map<String,review_service> temp = new HashMap<>();
		temp.put("review_write", new review_write());
		temp.put("review_write_save", new review_writesave());
		temp.put("review_reply", new review_reply());
		temp.put("reviewliset", new reviewlist());
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
