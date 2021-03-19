package admin_order;

import java.io.IOException;
import java.util.Set;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import com.main.main_hnd;
import com.sun.mail.iap.ResponseInputStream;

public class order_hnd implements main_hnd {

	
	
	@Override
	public String action(HttpServletRequest req, HttpServletResponse res, String kind) {
		String cPath=req.getContextPath();

	
		System.out.println(" ");
			String view = "index.jsp";
			
			kind = kind.substring(0,kind.indexOf("."));
			
			System.out.println(" kind::"+kind);
			String cmd = req.getParameter("cmd");
			
			
			
			if(kind != null) {
				System.out.println("cmd ");
				
				if(kind.equals("order_list")) {
					System.out.println("order_list 페이지 진입");
					req.setAttribute("part","member");
					req.setAttribute("sub", kind);
					
					try {
						
					 res.sendRedirect(cPath+"/order_admin/order_list.jsp");
					
					} catch (IOException e) {
						
						e.printStackTrace();
					}
					
				
				
				}
				if (kind.equals("money_admin")) {
					
					System.out.println("money_admin 페이지 진입");
					req.setAttribute("part", "member");
					req.setAttribute("sub", kind);

					try {
						 res.sendRedirect(cPath+"/order_admin/money_admin.jsp");
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

				}
			
				
				
				
			}
			
		return view;
	}

	

}
