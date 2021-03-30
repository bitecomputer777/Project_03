package admin_member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class ninja implements member_service {
	
	@Override
	public void service(HttpServletRequest req) {
		
		ninja_DAO dao = new ninja_DAO();
		ninja_VO vo = new ninja_VO();
		ArrayList<ninja_VO> list = new ArrayList<ninja_VO>();
		list= dao.ninja_list(vo);
		for(int i=0 ;i <list.size();i++) {
			String test = list.get(i).getId();
			System.out.println(" list트의 id=::"+test);
		}
		
		
		
		if(list.size() == 0) {
			list = null;
			System.out.println("out member 리스트가 존재하지 않는다");
		}
		req.setAttribute("outlist", list);
		req.setAttribute("part","admin_member");
		req.setAttribute("sub", "ninja");
		
		
	}

}
