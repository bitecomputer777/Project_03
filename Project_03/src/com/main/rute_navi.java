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

import itemmore.mainitem_hnd;

/**
 * Servlet implementation class rute_navi
 */
@WebServlet("/rute_navi")
public class rute_navi extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Map<String,main_hnd> map = new HashMap<>();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public rute_navi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
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
		// TODO Auto-generated method stub
		process(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request,response);
	}
	protected void process(HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException  {
		String uri = request.getRequestURI();
		String cont = request.getContextPath();
		String kind = uri.substring(cont.length()+1);
		System.out.println(kind);
		
		String view ="index.jsp";
		
		main_hnd hd = map.get(kind);
	
		
		if(hd != null) {
			
			view= hd.action(request ,response, kind);
			
			System.out.println(""+view);
			
		}
	try {	
		
	//	request.setCharacterEncoding("utf-8");
		RequestDispatcher rd= request.getRequestDispatcher(view);
		
			rd.include(request, response);
			
	}catch(Exception e) {
		System.out.println("");
		e.printStackTrace();
	}
	}
}
