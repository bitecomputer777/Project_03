package admin_product;

import javax.servlet.http.HttpServletRequest;

public class product_insert implements product_service {

	@Override
	public String service(HttpServletRequest req) {
		
		return "product_admin/product_insert.jsp";
	}

}
