package com.company.servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.company.dao.User;
import com.company.dao.UserAbtry;


@WebServlet("/Signup")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static UserAbtry userDao = new UserAbtry();

    public SignupServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String Username = request.getParameter("Username");
        String Password = request.getParameter("Password");
        String AuthKey = request.getParameter("AuthKey");

        User user = new User();
        user.setUsername(Username);
        user.setPassword(Password);
        user.setAuthKey(AuthKey);

        if (userDao.addUser(user)) {
            response.sendRedirect("loginnew.jsp?signup=success");
        } else {
            response.sendRedirect("signupnew.jsp?error=1");
        }
    }
}
