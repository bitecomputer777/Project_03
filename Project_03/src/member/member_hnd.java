package member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.main_hnd;

public class member_hnd implements main_hnd{

   @Override
   public String action(HttpServletRequest req, 
         HttpServletResponse res, String kind) {
      member_service ms = new member_service();
      String view="index.jsp";
      
      kind = kind.substring(0,kind.indexOf("."));
      
      String cmd = req.getParameter("cmd");
      if(cmd!=null) {
         if(cmd.equals("chk")) {
            ms.id_check(req);
            view="idcheck.jsp";
         }
         if(cmd.equals("login")) {
            if(ms.login(req))
               return view;
         }else if(cmd.equals("join")) {
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