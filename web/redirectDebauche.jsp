<%-- 
    Document   : redirectDebauche
    Created on : 15 déc. 2016, 12:42:36
    Author     : Jo Max
--%>
<%@page import="paie.Pointage"%>
<%@page import="paie.Fonction"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Pointage</title>

    
    <link href="css/bootstrap.min.css" rel="stylesheet">
  
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />

    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />



  </head>
  <body>
      
      <%@ include file="header.jsp"%>
      <section id="main-content">
          <section class="wrapper">
       
                                
                        
                             <% 
                               Fonction ray = new Fonction();
                               Pointage p = new Pointage();
          
                                
                                   try{
                                       
                                       ray.CheckEmploye(request.getParameter("matricule"));
                                 
                                   }catch(Exception exc){
                                       
                                   
                             %>
                                    <div class="alert alert-block alert-danger fade in">
                                        <button data-dismiss="alert" class="close close-sm" type="button">
                                            <i class="icon-remove"></i>
                                        </button>

                                        <% out.print(exc.getMessage());%>
                                    </div> 
                                <%}%>  
                           <a type="submit" href="Debaucher.jsp" class="btn btn-primary"  > OK </a>
      
                   </section>
          </section>
      </section> 
                            
    </body>
</html>

