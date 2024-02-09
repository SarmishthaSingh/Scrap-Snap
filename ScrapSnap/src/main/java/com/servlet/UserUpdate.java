package com.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.User;
import com.helper.factoryprovider;

public class UserUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UserUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			String name=request.getParameter("name");
			String number=request.getParameter("number");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String metal=request.getParameter("metal");
			String paper=request.getParameter("paper");
			String plastic=request.getParameter("plastic");

			int noteId=Integer.parseInt(request.getParameter("noteId".trim()));
			
			Session s=factoryprovider.getFactory().openSession();
			Transaction tx= s.beginTransaction();
			
			User note=s.get(User.class,noteId);
			note.setName(name);
			note.setNumber(number);
			note.setEmail(email);
			note.setPassword(password);
			note.setMetal(metal);
			note.setPaper(paper);
			note.setPlastic(plastic);
			note.setAddDate(new Date(noteId));
			tx.commit();
			s.close();
			response.sendRedirect("all_Userdata.jsp");
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
