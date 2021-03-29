package admin_product;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class product_insertsave implements product_service {

	@Override
	public String service(HttpServletRequest req) {
		String save_path="C:\\Users\\USER506-TEACH\\git\\Project_03\\Project_03\\WebContent\\img";
		int size=1024*1024*10;
		try {
			MultipartRequest mr = new MultipartRequest(req,save_path,size,"UTF-8",new DefaultFileRenamePolicy());
			String itemtit = mr.getParameter("itemtit");
			String pricereal = mr.getParameter("pricereal");
			String among = mr.getParameter("among");
			String[] opt = mr.getParameterValues("opt");
			String[] opt_money = mr.getParameterValues("opt_money");
			String kind = mr.getParameter("kind");
			Enumeration file = mr.getFileNames();
			String tmp = (String)file.nextElement();
			String bigimg = mr.getFilesystemName(tmp);
			product_DAO pd=new product_DAO();
			pd.insert(itemtit,Integer.parseInt(pricereal),Integer.parseInt(among),
					opt,opt_money,kind,bigimg);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
