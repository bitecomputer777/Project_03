package itemmore;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface mainitem_hnd {
	public String action(HttpServletRequest req, HttpServletResponse res, String kind);

}
