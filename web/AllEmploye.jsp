<%-- 
    Document   : AllEmploye
    Created on : 20 déc. 2016, 20:39:31
    Author     : Jo Max
--%>

<%@page import="dao.EmployeDAO"%>
<%@page import="modele.Employe"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Liste des Employes</title>
        <%@ include file="import.jsp"%>
    </head>
    <body>
        <%
            EmployeDAO edao = new EmployeDAO();
            ArrayList<Employe> listEmp = edao.getAllEmploye();
        %>
        <%@ include file="header.jsp"%>
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="col-sm-12">
                        <section class="panel">
                            <header class="panel-heading no-border">
                                Liste des Employés
                            </header>
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Matricule</th>
                                        <th>Nom</th>
                                        <th>Prenom</th>
                                        <th>Cin</th>
                                        <th>Contact</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        for (Employe emp : listEmp) {
                                    %>
                                    <tr>
                                        <td><%out.println(emp.getIdEmploye());%></td>
                                        <td><%out.println(emp.getNom());%></td>          
                                        <td><%out.println(emp.getPrenom());%></td>
                                        <td><%out.println(emp.getCIN());%></td>   
                                        <td><%out.println(emp.getContact());%></td> 
                                        <td><a href="ModifEmploye.jsp?idEmploye=<%=emp.getIdEmploye()%>" class="btn btn-success" ><span class="fa fa-edit"></span></a><td>
                                    </tr>
                                    <%}%>
                                </tbody>
                            </table>
                        </section>
                    </div>              
                </div>
            </section>
        </section>
        <!--main content end-->
    </section>
    <!-- container section end -->
    <!-- javascripts -->
    <%@ include file="footer.jsp"%>