<%-- 
    Document   : InfoEmploye
    Created on : 13 déc. 2016, 11:27:22
    Author     : Jo Max
--%>

<%@page import="service.EmployeService"%>
<%
       String matrcin= request.getParameter("MatrCin");
       EmployeService eser= new EmployeService();
       eser.checkEmp(matrcin);
       
       



%>
