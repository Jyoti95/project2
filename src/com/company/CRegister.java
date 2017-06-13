package com.company;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import bean.Company;

public class CRegister {

public boolean connect(String email,String password,String name,String type,String location,int contact)
{
	Company comp=new Company(email,password,name,type,location,contact);
	
	Session session=null;
	SessionFactory factory;
	
	factory=new Configuration().configure().buildSessionFactory();
	session=factory.openSession();
	Transaction tr=session.beginTransaction();
	session.save(comp);
	System.out.println("success");
	tr.commit();
	return true;
}
	
	
}
