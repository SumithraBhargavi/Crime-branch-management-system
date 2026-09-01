<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Criminal Records</title>
<style>
    body {
        background-image: url("https://image.shutterstock.com/image-photo/black-wall-surface-uses-bricks-260nw-759554386.jpg");
        background-repeat: no-repeat;
        background-size: cover; 
        color: white;
        padding: 20px; /* Added padding to body */
    }

    table {
        width: 100%; /* Changed width to 100% to fill the container */
        border: 1px solid white;
        border-collapse: collapse;
        margin: 20px 0;
    }

    th, td {
        border: 1px solid white;
        padding: 8px;
        text-align: left;
    }

    caption {
        font-size: 1.2em;
        font-weight: bold;
        margin-bottom: 10px;
    }
</style>
</head>
<body>

<%
    String[] columnNames = (String[]) request.getAttribute("columnNames");
    String resultData = (String) request.getAttribute("resultData");
%>

<table>
    <caption>The List of Criminals:</caption>
    <thead>
        <tr>
           <% if (columnNames != null) {
                for (String columnName : columnNames) {
            %>
                    <th><%= columnName %></th>
            <%      
                }
            } %>
        </tr>
    </thead>
    <tbody>
        <%= resultData %>
    </tbody>
</table>

</body>
</html>