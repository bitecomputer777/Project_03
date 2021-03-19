package admin_member;

import java.io.IOException;
import java.util.Set;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import com.main.main_hnd;
import com.sun.mail.iap.ResponseInputStream;

public class member_hnd implements main_hnd {

	
	
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
				
				if(kind.equals("ninja")) {
					System.out.println("cmd ninja");
					req.setAttribute("part","member");
					req.setAttribute("sub", kind);
					
					try {
						
					 res.sendRedirect(cPath+"/admin_member/ninja.jsp");
					
					} catch (IOException e) {
						
						e.printStackTrace();
					}
					
				
				
				}
				if (kind.equals("list_message")) {
					System.out.println("cmd list_message");

					req.setAttribute("part", "member");
					req.setAttribute("sub", kind);

					try {
						 res.sendRedirect(cPath+"/admin_member/list_message.jsp");
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

				}
				if (kind.equals("member_admin")) {
					
					System.out.println("cmd member_admin");
					req.setAttribute("part", "member");
					req.setAttribute("sub", kind);

					try {
						res.sendRedirect(cPath+"/admin_member/member_admin.jsp");
					
						
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					

				}
				
				
				
			}
			
		return view;
	}

	

}
