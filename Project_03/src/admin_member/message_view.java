package admin_member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class message_view implements member_service {
	
	@Override
	public void service(HttpServletRequest req) {
		
		message_DAO dao = new message_DAO();
		message_VO vo = new message_VO();
		ArrayList<message_VO> list = new ArrayList<message_VO>();
		
		String id = req.getParameter("id");
		vo.setId(id);
		
		System.out.println( "view �� �� id ::"+id);
		list= dao.message_search(vo);
		
		
		
		if(list.size() == 0) {
			
			list = null;
			
			System.out.println("message ����Ʈ�� �������� �ʴ´�");
			
		}else {
			System.out.println("test-list start");
			
			System.out.println("ss"+list.get(0).getId());
			
			
			System.out.println("test-list end");
		}
		
		
		req.setAttribute("message_view",list);
		req.setAttribute("part","admin_member");
		req.setAttribute("sub", "message_view");
	}

}
