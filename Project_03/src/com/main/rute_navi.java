package com.main;

import java.io.FileReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
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

/**
 * Servlet implementation class rute_navi
 */
@WebServlet("/rute_navi")
public class rute_navi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Map<String,main_hnd>map = new HashMap<>();
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public rute_navi() {
        super();
        // TODO Auto-generated constructor stub
    }

    public void init(ServletConfig config) throws ServletException{
    	System.out.println(" init ");
    	
    	String Iparam = config.getInitParameter("config");
    	Properties prop = new Properties();
    	try(FileReader fs = new FileReader(Iparam)){
    		prop.load(fs);
    		System.out.println("properties ");
    		
    	}catch(IOException ioe) {
    		ioe.printStackTrace();
    		System.out.println("properties ");
    		
    	}
    	Iterator<?> key = prop.keySet().iterator();
    	if(key == null) {
    		System.out.println("Iterator<?> key ");
    	}else {
    		System.out.println("Iterator<?> key ");
    	}
    	
    	while(key.hasNext()) {
    		String cmd=(String)key.next();
    		String value = prop.getProperty(cmd);
    		System.out.println("cmd+ value"+cmd+""+value+"");
    		
    		try {
    			Class<?> hcl = Class.forName(value);
    			
    			main_hnd hinst =(main_hnd)hcl.newInstance();
    			map.put(cmd, hinst);
    			System.out.println(" : "+hinst);
    			
    			
    		}catch (ClassNotFoundException | InstantiationException | IllegalAccessException cii) {
    			cii.printStackTrace();
				System.out.println("map ");
    			
    		}
    		
    	}
    	
    	
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request,response);
	}
	protected void process(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException  {
		String uri = request.getRequestURI();
		String cont = request.getContextPath();
		String ind[] = uri.substring(cont.length()+1 ).split("/");
		request.setCharacterEncoding("utf-8");
		//System.out.println("ind변수 part 이름0" + ind[0]);
	//	System.out.println("ind변수 part 이름1" + ind[1]);
		String kind =null;
		for(int i=0 ; i<ind.length ; i++ ) {
			
			if(i == 0 ) {
				
				kind=uri.substring(cont.length()+1 );
				
			}else if(i ==1) {
				
				kind=ind[1];
			}
			
		}
		
		System.out.println("kind = " +kind);
		String view ="index.jsp";
		
		main_hnd hd = map.get(kind);
		
		
		System.out.println(hd+"");
		
		System.out.println(""+uri);
		System.out.println(cont);
		System.out.println(kind);
		
		if(hd != null) {
			
			view= hd.action(request ,response, kind);
			
			System.out.println(""+view);
			
		}
		
		/*
		 * sub= sub.substring(0, sub.indexOf(".")) ;
		 * 
		 * 
		 * String cmd = request.getParameter("cmd"); request.setAttribute("part",
		 * "member"); request.setAttribute("sub", sub );
		 * 
		 * if(sub.equals("logout")) { new member_service().logout(request);
		 * request.removeAttribute("part"); request.removeAttribute("sub");
		 * 
		 * }
		 * 
		 * if(cmd != null) {
		 * 
		 * 
		 * 
		 * if(cmd.equals("login")){ if(new member_service().login(request)) {
		 * request.removeAttribute("part"); request.removeAttribute("sub"); }
		 * 
		 * }
		 * 
		 * }
		 */
		
		
		/* String temp[]= sub.split(""); */
		
	
		/*
		 * System.out.println(uri); System.out.println(cont); System.out.println(sub);
		 * for(int i=0 ; i < temp.length;i++) {
		 * 
		 * System.out.println("temp= :"+temp[i]);
		 * 
		 * }
		 */
		
		/*
		 * try { response.sendRedirect("index.jsp?part=member&sub=login");
		 * 
		 * }catch (IOException e) { e.printStackTrace(); }
		 */
		//RequestDispatcher
	try {	
		
		request.setCharacterEncoding("utf-8");
		RequestDispatcher rd= request.getRequestDispatcher(view);
		
			rd.include(request, response);
			
	}catch(Exception e) {
		System.out.println("");
		e.printStackTrace();
	}
	}
	
}

