<%-- 
    Document   : logout
    Created on : 21-Nov-2022, 6:31:17 PM
    Author     : user1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <!-- For not creating new session -->
 <%@ page session="false" %>

 <body>
     <%
     // for checking the session is available or not, if not available it will throw exception, "Session already invalidated."
      if (request.getSession()!=null) {
        session.invalidate();
        response.sendRedirect("allproducts.jsp");
      }
     %>
 </body>