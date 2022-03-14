<%-- 
    Document   : traiteValidation.jsp
    Created on : 24 janv. 2017, 13:21:31
    Author     : Jo Max
--%>

<%@page import="paie.Conge"%>
<%
   Conge con =new Conge();
  
   con.insertValidation(Integer.parseInt(request.getParameter("idconge").trim()));
   
   String path = "validationConge.jsp";
   response.sendRedirect(path);

%>
