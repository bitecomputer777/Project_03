package admin_member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class member_admin implements member_service {
	
	@Override
	public void service(HttpServletRequest req) {
		
		
		member_adminDAO dao = new member_adminDAO();
		member_adminVO vo = new member_adminVO();
		ArrayList<member_adminVO> list = new ArrayList<member_adminVO>();
		list= dao.test_list(vo);
		
		
		
		if(list.size() == 0) {
			list = null;
			System.out.println("member_admin 리스트가 존재하지 않는다");
		}
		
		
		req.setAttribute("test_list", list);
		req.setAttribute("part", "admin_member");
		req.setAttribute("sub", "member_admin");
	}
	
	
	

}
