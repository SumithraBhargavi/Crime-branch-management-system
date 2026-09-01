package com.company.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

public class MissingTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MissingTable() {
        super();
        
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        
        String gender = request.getParameter("gender");
        
        try {
		 Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/private", "root", "root");
         PreparedStatement ps= con.prepareStatement("select * from missing_records where gender = ?");
         
         
         ps.setString(1, gender);
         

         ResultSet rs = ps.executeQuery();
         ResultSetMetaData rsmd = rs.getMetaData();
         int totalColumn = rsmd.getColumnCount();
         String[] columnNames = new String[totalColumn];
         for (int i = 1; i <= totalColumn; i++) {
        	 
             columnNames[i - 1] = rsmd.getColumnName(i);
         }
         
         request.setAttribute("columnNames", columnNames);

         StringBuilder resultData = new StringBuilder();
         while (rs.next()) {
             for (int i = 1; i <= totalColumn; i++) {
                 
                     resultData.append("<td>").append(rs.getString(i)).append("</td>");
                 
             }
         }
         request.setAttribute("resultData", resultData.toString());
         request.getRequestDispatcher("Firdetails.jsp").forward(request, response);

        } catch(Exception e) {
            out.print(e); 
        }
    }
	}
