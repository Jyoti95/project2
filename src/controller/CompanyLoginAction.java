package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import bean.Company;
import dao.CompLogin;

public class CompanyLoginAction implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = arg0.getSession(true);
		String email=arg0.getParameter("email");
		String password=arg0.getParameter("password");
		System.out.println("in login of comp");
		System.out.println("email"+email);
		CompLogin log=new CompLogin();
		Company cmp=new Company(email,password);
		
		boolean result=log.CheckLogin(cmp);
		System.out.println(""+result);
		if(result==true){
			
			if(null != (session.getAttribute("error")))
	            session.removeAttribute("error");
			System.out.println("true");
		return new ModelAndView("companyprofile");
		}
		else
		{
			System.out.println("false");
			  session.setAttribute( "error", "Invalid username or password");
			return new ModelAndView("companylogin");
		}
		

	}

}
