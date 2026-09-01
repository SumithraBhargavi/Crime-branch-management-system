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

public class CrimeRecordForm extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static UserDao1 crimeRec = new UserDaoImp1();

    public CrimeRecordForm() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String full_name = request.getParameter("full_name");
        String date_of_birth = request.getParameter("date_of_birth");
        String crime_committed = request.getParameter("crime_committed");
        String arrest_date = request.getParameter("arrest_date");
        String charges = request.getParameter("charges");
        int court_appearances = Integer.parseInt(request.getParameter("court_appearances"));
        int convictions = Integer.parseInt(request.getParameter("convictions"));
        String sentence = request.getParameter("sentence");

        CrimeRec crimerec = new CrimeRec();
        crimerec.setfull_name(full_name);
        crimerec.setdate_of_birth(date_of_birth);
        crimerec.setcrime_committed(crime_committed);
        crimerec.setarrest_date(arrest_date);
        crimerec.setcharges(charges);
        crimerec.setcourt_appearances(court_appearances);
        crimerec.setconvictions(convictions);
        crimerec.setsentence(sentence);

        if (crimeRec.addcriminal(crimerec)) {
            response.sendRedirect("melcow.jsp?signup=success");
        } else {
            response.sendRedirect("homepage.html?error=1");
        }
    }
}
