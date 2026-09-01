package com.company.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.company.dao.User1;
import com.company.dao.UserDao1;
import com.company.dao.UserDaoImp1;


public class SignupServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDao1 userDao1 = new UserDaoImp1();
       
    
    public SignupServlet2() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Name = request.getParameter("Name");
		String Age = request.getParameter("Age");
		String Email = request.getParameter("Email");		
		String Phone = request.getParameter("Phone");
		String Address = request.getParameter("Address");
		String Username = request.getParameter("Username");
        String Password = request.getParameter("Password");
        int age = Integer.parseInt(Age);
        long phone = Long.parseLong(Phone);
        
        User1 user = new User1();
        user.setName(Name);
        user.setAge(age);
        user.setEmail(Email);       
        user.setPhone(phone);
        user.setAddress(Address);
        user.setUsername(Username);
        user.setPassword(Password);
        
        if (userDao1.addUser(user)) {
            response.sendRedirect("loginandsignup.jsp?signup=success");
        } else {
            response.sendRedirect("loginandsignup.jsp?error=1");
        }
        
	}

}
