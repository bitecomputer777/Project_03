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
      member vo = new member();
      vo.setId(id);
      vo.setPass(pw);
      vo.setName(name);
      vo.setPhone(phone);
      vo.setEmail(email);
      vo.setBirthday(birthday);
      
      
      
      md.member_insert(vo);
      System.out.println( "join :::" + birthday);
   }
   
   
   public boolean login(HttpServletRequest request) {
      String id=request.getParameter("id");
      String pw = request.getParameter("pw");
      System.out.println("id :: pw " + id +":"+ pw);
      memberDAO md = new memberDAO();
      if(md.member_login(id,pw)) {
         request.getSession().setAttribute("user", id);
         System.out.println("로그인 동작 성공");
         return true;
      }
      
      request.setAttribute("login_fail", "fail");
      return false;
   }
   public void logout(HttpServletRequest request) {
      request.getSession().removeAttribute("user");
   }
}
