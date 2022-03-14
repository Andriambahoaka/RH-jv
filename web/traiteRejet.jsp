<%-- 
    Document   : traiteRejet.jsp
    Created on : 25 janv. 2017, 16:22:41
    Author     : Jo Max
--%>

<%@page import="paie.Conge"%>
<%
   Conge con =new Conge();
   con.insertRejet(Integer.parseInt(request.getParameter("idconge").trim()));
   String path = "validationConge.jsp";
   response.sendRedirect(path);
%>
