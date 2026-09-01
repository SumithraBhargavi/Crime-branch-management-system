package com.company.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.company.dao.CrimeRec;
import com.company.dao.UserDao1;
import com.company.dao.UserDaoImp1;
import com.company.dao.missingRec;


public class MissingReportForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private static UserDao1 MissingRec = new UserDaoImp1();
       
    
    public MissingReportForm() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
        String date_of_birth = request.getParameter("date_of_birth");
        String gender = request.getParameter("gender");
        int height = Integer.parseInt(request.getParameter("height"));
        int weight = Integer.parseInt(request.getParameter("weight"));
        String last_seen_date = request.getParameter("last_seen_date");
        String last_seen_location = request.getParameter("last_seen_location");
        String circumstances = request.getParameter("circumstances");

        missingRec record = new missingRec();
        record.setname(name);
        record.setdate_of_birth(date_of_birth);
        record.setgender(gender);
        record.setheight(height);
        record.setweight(weight);
        record.setlast_seen_date(last_seen_date);
        record.setlast_seen_location(last_seen_location);
        record.setcircumstances(circumstances);

        if (MissingRec.missingRec(record)) {
            response.sendRedirect("thankyou.jsp?signup=success");
        } else {
            response.sendRedirect("missingreport.jsp?error=1");
        }
	}

}
