package itemmore;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.memberservice;

import itemmore.main_hnd;

public class itemmore_hnd implements itemmore_hnd{

	@Override
	public String action(HttpServletRequest req,
			HttpServletResponse res, String kind) {
		memberservice ms =new memberservice();
		String view="index.jsp";
		
		kind = kind.substring(0,kind.indexOf("."));
		
		String cmd = req.getParameter("cmd");
		if(cmd!=null){	
			if(cmd.equals("chk")) {
			   ms.idcheck (req);
			view ="idcheck.jsp";
			}
			if(cmd.equals("login")) {
				if(ms.login (req));
				return view;
		}else if(cmd.equals("join")) {
		ms.join(req);
		return view;
		}
		}
		if(kind.equals("login") || kind.equals("join")) {
			req.setAttribute("part","member");
			req.setAttribute("sub",kind);
		}else if (kind.contentEquals("logout")) {
			ms.logout(req);
					}
			return view;
		
	

	}	
	 
	
}