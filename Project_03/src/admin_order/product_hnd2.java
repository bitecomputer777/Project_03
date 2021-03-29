package admin_product;

import java.io.IOException;
import java.util.Set;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import com.main.main_hnd;
import com.sun.mail.iap.ResponseInputStream;

public class product_hnd2 implements main_hnd {

	
	
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
				
				if(kind.equals("product_insert")) {
					System.out.println("product_insert");
					req.setAttribute("part","product_admin");
					req.setAttribute("sub", kind);
					
					try {
						
					 res.sendRedirect(cPath+"/product_admin/product_insert.jsp");
					
					} catch (IOException e) {
						
						e.printStackTrace();
					}
					
				
				
				}
				if (kind.equals("product_list")) {
					System.out.println("product_list");

					req.setAttribute("part", "prouct_admin");
					req.setAttribute("sub", kind);

					try {
						 res.sendRedirect(cPath+"/product_admin/product_list.jsp");
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

				}
				if (kind.equals("product_show_input")) {
					
					System.out.println("product_show_input");
					req.setAttribute("part", "prouct_admin");
					req.setAttribute("sub", kind);

					try {
						res.sendRedirect(cPath+"/product_admin/product_show_input.jsp");
					
						
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					

				}
				
				
				
			}
			
		return view;
	}

	

}
