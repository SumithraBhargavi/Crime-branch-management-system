package com.company.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.company.dao.FirD;
import com.company.dao.User1;
import com.company.dao.UserDao1;
import com.company.dao.UserDaoImp1;

public class FIR extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDao1 userDao2 = new UserDaoImp1();
       
   
    public FIR() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String incidentDate = request.getParameter("incidentDate");
		String incidentTime = request.getParameter("incidentTime");
        String occurrenceArea = request.getParameter("occurrenceArea");
        String Offence = request.getParameter("Offence");
        String incident = request.getParameter("incident");
        
        FirD fir = new FirD();
        fir.setname(name);
        fir.setemail(email);
        fir.setincidentDate(incidentDate);
        fir.setincidentTime(incidentTime);
        fir.setoccurrenceArea(occurrenceArea);
        fir.setOffence(Offence);
        fir.setincident(incident);
        
        if (userDao2.addfir(fir)) {
            response.sendRedirect("thankyou.jsp?signup=success");
        } else {
            response.sendRedirect("loginandsignup.jsp?error=1");
        }
	}

}
