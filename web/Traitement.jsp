<%-- 
    Document   : Traitement
    Created on : 5 janv. 2017, 07:30:21
    Author     : Jo Max
--%>

<%@page import="paie.Fonction"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Fonction f = new Fonction();
  if(request.getParameter("Remb")!= null)
  {
     
     response.sendRedirect("Echeance.jsp?info="+request.getParameter("matricule").trim()+"/"+request.getParameter("montantTotal").trim()); 
  
  }
  
                  
                  
  
 if(request.getParameter("OK")!= null)
 {
    
 
 }

%>
