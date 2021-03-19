package itemmore;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import itemmore.mainitem_hnd;

/**
 * Servlet implementation class control
 */
@WebServlet("/control")
public class control extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Map<String,mainitem_hnd> map = new HashMap<>();      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public control() {
        super();
        // TODO Auto-generated constructor stub
    }

    public void init(ServletConfig config) throws ServletException {
		String Iparam=config.getInitParameter("config");
		Properties prop = new Properties();
		try(FileReader fs = new FileReader(Iparam)){
			prop.load(fs);
		}catch(IOException e) {
			System.out.println("item properties 파일 읽기 실패");
		}
		
		
		Iterator key = prop.keySet().iterator();
		while(key.hasNext()) {
			String cmd = (String)key.next();
			String value=prop.getProperty(cmd);
			try {
				Class<?> hcl = Class.forName(value);
				mainitem_hnd hinst = (mainitem_hnd)hcl.newInstance();
				map.put(cmd,hinst);
			}catch(ClassNotFoundException | InstantiationException | IllegalAccessException e) {
				System.out.println(" map 저장 실패");
				e.printStackTrace();
			}
		}
	}
    
 /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    
    
    
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		String cont = request.getContextPath();
		String kind = uri.substring(cont.length()+1);
		System.out.println(kind);
		mainitem_hnd hd = map.get(kind);
		
		String view="main.jsp";
		if(hd!=null) {
			view = hd.action(request, response, kind);
		}
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	

	}
}

