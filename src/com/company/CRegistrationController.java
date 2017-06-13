package com.company;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class CRegistrationController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		
		String email=arg0.getParameter("email");
		String password=arg0.getParameter("password");
		 String name=arg0.getParameter("name");
		 String type=arg0.getParameter("type");
		 String location=arg0.getParameter("location");
		 String con=arg0.getParameter("contact");
		 int contact=Integer.parseInt(con);
	   
		 CRegister register=new CRegister();
		 boolean flag=register.connect(email, password, name, type, location, contact);
	    
	    
		return new ModelAndView("companylogin");
	}

}
