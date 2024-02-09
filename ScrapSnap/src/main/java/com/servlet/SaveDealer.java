package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Dealer;
import com.helper.factoryprovider;


public class SaveDealer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       public SaveDealer() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			
			//title ,content fatch

		String name=request.getParameter("name");
		String number=request.getParameter("number");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
        String metal=request.getParameter("metal");
		String paper=request.getParameter("paper");
		String plastic=request.getParameter("plastic");
		String gender=request.getParameter("gender");
			
		//Note note=new Note(title,content,new Date(0));			
		Dealer deal=new Dealer(0, name, number, email, password, metal, paper, plastic, gender, new Date(0));
	     Session s=	factoryprovider.getFactory().openSession();
	     Transaction tx=s.beginTransaction();
	
	s.save(deal);
	
	tx.commit();
	
	s.close();
	response.setContentType("text/html");
	PrintWriter out=response.getWriter();
	out.println("<h1 style='text-align:center;'> Data is added Succesfully</h1>");
    out.println("<h1 style='text-align:center;'><a href='all_Dealerdata.jsp'>View all Data</a> </h1>");
				
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		
	}

}
