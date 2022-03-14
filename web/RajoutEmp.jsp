<%-- 
    Document   : RajoutEmp
    Created on : 13 janv. 2017, 10:48:39
    Author     : Jo Max
--%>

<%@page import="service.EmployeService"%>
<%@page import="dao.EmployeDAO"%>
<%@page import="modele.Employe"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="css.jsp"%>
        <title>Ajout Employe</title
    </head>
    <body>
        <%@ include file="header.jsp"%>
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <%
                            EmployeService eservice = new EmployeService();
                            try {
                                eservice.save(request.getParameter("idcategorie"), request.getParameter("nom"), request.getParameter("prenom"), request.getParameter("cin"), request.getParameter("contact"),request.getParameter("datenaissance"));
                        %>
                        <div class="col-lg-4">
                            <div class="alert alert-success fade in">
                                <strong>Ajout</strong>         Effectué.
                            </div>   
                        </div>  
                        <%
                        } catch (Exception e) {%>
                        <div class="col-lg-4">
                            <div class="alert alert-block alert-danger fade in">
                                <% out.print(e.getMessage());%>
                            </div> 
                        </div>
                        <%}%>
                        <div class="col-lg-12">
                            <a type="submit" href="AjoutEmploye.jsp" class="btn btn-primary"  > OK </a>
                        </div>
                    </div>
                </div>
            </section>
        </section>
        <!--main content end-->
    </section>
    <!-- container section end -->
    <!-- javascripts -->
    <%@ include file="footer.jsp"%>


