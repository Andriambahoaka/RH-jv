<%-- 
    Document   : redirectPointage
    Created on : 13 déc. 2016, 11:27:22
    Author     : Jo Max
--%>



<%@page import="modele.Employe"%>
<%@page import="modele.Pointage"%>
<%@page import="utilitaire.Fonction"%>
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
                        Employe e = new Employe();

                        try {
                            ray.CheckEmploye(request.getParameter("matrCin"));
                            p.insertPointage(e.getIdBy(request.getParameter("matrCin")), request.getParameter("date"), request.getParameter("heure"), request.getParameter("type"));

                    %>
                    <div class="col-lg-4">   
                        <div class="alert alert-success fade in">
                            <strong>Pointage</strong>Effectué.
                        </div> 
                    </div>                  
                    <%} catch (Exception exc) {
                        exc.printStackTrace();

                    %>
                    <div class="col-lg-4">
                        <div class="alert alert-block alert-danger fade in">
                            <% out.print(exc.getMessage());%>
                            <%}%>
                        </div> 
                    </div>
                    <div class="col-lg-12">
                        <a type="submit" href="index.jsp" class="btn btn-primary"  > OK </a>
                    </div>
                </section>
            </section>
        </section> 
    </body>
</html>