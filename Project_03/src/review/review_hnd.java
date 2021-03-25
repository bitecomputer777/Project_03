package review;

import java.io.IOException;
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
		
		String view="main.jsp";
System.out.println("12345");
		
		
		review_service is = new review_service();
		switch(kind){
			case "review.it":
				is.review(req);
					break;
			case "write.it":
				System.out.println("가나다");
				String no= is.write(req);
				view=null;
			try {
				res.sendRedirect("review.it?num="+no);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				
		}
		
	
		
		return view;
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
