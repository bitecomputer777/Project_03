package member;

import javax.servlet.http.HttpServletRequest;

public class member_service {

   public void id_check(HttpServletRequest req) {
      String id = req.getParameter("idchk");
      memberDAO md = new memberDAO();
      if(md.id_check(id)) {
         req.setAttribute("result", "중복");
      }
      req.setAttribute("id", id);
   }
   
   public void join(HttpServletRequest req) {
      String id= req.getParameter("id");
      String pw=req.getParameter("pw");
      String name=req.getParameter("name");
      String phone=req.getParameter("phone");
      String email=req.getParameter("email");
      String birthyy=req.getParameter("birthyy");
      String birthmm=req.getParameter("birthmm");
      String birthdd=req.getParameter("birthdd");
      String birthday = birthyy+birthmm+birthdd ; 
      memberDAO md = new memberDAO();
      md.member_insert(id,pw,name,phone,email,birthday);
      System.out.println(birthday);
   }
   
   
   public boolean login(HttpServletRequest request) {
      String id=request.getParameter("id");
      String pw = request.getParameter("pw");
      memberDAO md = new memberDAO();
      if(md.member_login(id,pw)) {
         request.getSession().setAttribute("user", id);
         return true;
      }
      
      request.setAttribute("login_fail", "fail");
      return false;
   }
   public void logout(HttpServletRequest request) {
      request.getSession().removeAttribute("user");
   }
}
