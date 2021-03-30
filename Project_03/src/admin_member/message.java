package admin_member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class message implements member_service {
	
	@Override
	public void service(HttpServletRequest req) {
		
		message_DAO dao = new message_DAO();
		message_VO vo = new message_VO();
		ArrayList<message_VO> list = new ArrayList<message_VO>();
		list= dao.message_list(vo);
		
		
		
		if(list.size() == 0) {
			list = null;
			System.out.println("message 리스트가 존재하지 않는다");
		}else {
			System.out.println("test-list start");
			System.out.println(list.get(1).getId());
			System.out.println(list.get(2).getId());
			
			
			System.out.println("test-list end");
		}
		
		
		req.setAttribute("message_list",list);
		req.setAttribute("part","admin_member");
		req.setAttribute("sub", "list_message");
	}

}
