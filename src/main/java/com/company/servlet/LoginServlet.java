package com.company.servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.company.dao.UserAbtry;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static UserAbtry userDao = new UserAbtry();

    public LoginServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        String Username = request.getParameter("Username");
        String Password = request.getParameter("Password");

        
        if (userDao.isValidUser(Username, Password)) {
        	HttpSession session = request.getSession();
        	session.setAttribute("Username", Username);
            
            response.sendRedirect("melcow.jsp");
        } else {
          
            response.sendRedirect("loginnew.jsp?error=1");
        }
    }
}
