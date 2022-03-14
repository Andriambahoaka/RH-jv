<%-- 
    Document   : AjoutEmploye
    Created on : 13 janv. 2017, 09:12:11
    Author     : Jo Max
--%>

<%@page import="modele.Categorie"%>
<%@page import="dao.CategorieDAO"%>
<%@page import="dao.EmployeDAO"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="import.jsp"%>
        <title>Ajout Employe</title>
    </head>
    <body>
        <%@ include file="header.jsp"%>
        <%
            CategorieDAO cdao = new CategorieDAO();
            ArrayList<Categorie> categories = cdao.findAll();

        %>
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <section class="panel">
                            <header class="panel-heading">
                                Ajouter un Employe
                            </header>
                            <div class="panel-body">
                                <form class="form-horizontal " method="post" action="addEmploye"> 
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Nom</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="nom" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" >Prenom</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="prenom" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Cin</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="cin" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Contact</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="contact" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Poste</label>
                                        <div class="col-sm-10">
                                            <select class="form-control" name="idcategorie" required> 
                                                <%for (int i = 0; i < categories.size(); i++) {%>
                                                <option  value="<%out.print(categories.get(i).getIdCategorie());%>"><%out.print(categories.get(i).getPoste());%></option>
                                                <%}%>    
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Date de Naissance</label>
                                        <div class="col-sm-10">
                                            <input type="date" class="form-control" name="datenaissance" required>
                                        </div>
                                    </div>
                                    <input type="submit" class="btn btn-primary" value="Ajouter" >
                                </form>
                            </div>
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



