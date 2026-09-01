package com.company.servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import com.company.dao.UserDao1;
import com.company.dao.UserDaoImp1;

@WebServlet("/loginandsignup")
public class LoginServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDao1 userDao1 = new UserDaoImp1();
       
    
    public LoginServlet2() {
        super();
        
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Username = request.getParameter("Username");
        String Password = request.getParameter("Password");
        if (userDao1.isValidUser(Username,Password)) {
        	HttpSession session = request.getSession();
        	session.setAttribute("Username",Username);
            
            response.sendRedirect("publichomepage.jsp");
        } else {
          
            response.sendRedirect("loginandsignup.jsp?error=1");
        }
	}

}
