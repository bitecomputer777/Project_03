package member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.main.main_hnd;

public class member_hnd2 implements com.main.main_hnd{

   @Override
   public String action(HttpServletRequest req, 
         HttpServletResponse res, String kind) {
      member_service ms = new member_service();
      String view="member/login.jsp";
      System.out.println("member_hnd 실행중");
      kind = kind.substring(0,kind.indexOf("."));
      System.out.println("kind:::"+kind);
      String cmd = req.getParameter("cmd");
      	System.out.println(" cmd :::" + cmd);
      if(cmd != null) {
    	  
         if(cmd.equals("chk")) {
            ms.id_check(req);
            view="member/idcheck.jsp";
         }
         
         if(kind.equals("login")) {
            if(ms.login(req))
               return view;
            
         }else if(kind.equals("join")) {
        	 System.out.println("join 실행");
        	view = "member/join.jsp";
            ms.join(req);
            return view;
         }
      }
      if(kind.equals("login") || kind.equals("join")) {         
         req.setAttribute("part", "member");
         req.setAttribute("sub", kind);
         
      } else if(kind.equals("logout")) {
         ms.logout(req);
      }
      return view;
   }
}