<%-- 
    Document   : AjoutEmploye
    Created on : 13 janv. 2017, 09:12:11
    Author     : Jo Max
--%>

<%@page import="modele.Employe"%>
<%@page import="service.EmployeService"%>
<%@page import="modele.Categorie"%>
<%@page import="dao.CategorieDAO"%>
<%@page import="dao.EmployeDAO"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="import.jsp"%>
        <title>Modifier Employe</title>
    </head>
    <body>
        <%@ include file="header.jsp"%>
        <%
            CategorieDAO cdao = new CategorieDAO();
            ArrayList<Categorie> categories = cdao.findAll();
            EmployeService eser= new EmployeService();
            Employe e=eser.findById(request.getParameter("idEmploye"));

        %>
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <section class="panel">
                            <header class="panel-heading">
                                Modifier l'information de l'employe
                            </header>
                            <div class="panel-body">
                                <form class="form-horizontal " method="get"> 
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Nom</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="nom" value="<%=e.getNom()%>" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" >Prenom</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="prenom" value="<%=e.getPrenom()%>" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Cin</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="cin" value="<%=e.getCIN()%>" required>
                                            <input type="hidden" name="idEmploye" value="<%=request.getParameter("idEmploye")%>" >
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Contact</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="contact" value="<%=e.getContact()%>" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Poste</label>
                                        <div class="col-sm-10">
                                            <select class="form-control" name="idcategorie" value="<%=e.getCategorie().getIdCategorie()%>" required> 
                                                <%for (int i = 0; i < categories.size(); i++) {%>
                                                <option  value="<%out.print(categories.get(i).getIdCategorie());%>"><%out.print(categories.get(i).getPoste());%></option>
                                                <%}%>    
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Date de Naissance</label>
                                        <div class="col-sm-10">
                                            <input type="date" class="form-control" name="datenaissance" value="<%=e.getDateNaissance()%>" required>
                                        </div>
                                    </div>
                                    <input type="submit" class="btn btn-primary" value="Modifier" name="modifier">
                                </form>
                            </div>
                        </section>
                    </div>
                </div>
            </section>
        </section>
        <!--main content end-->
        <%
             if(request.getParameter("modifier")!=null){
                 eser.update(request.getParameter("idEmploye"),request.getParameter("idcategorie"),request.getParameter("nom") , request.getParameter("prenom"), request.getParameter("cin"), request.getParameter("contact"), request.getParameter("datenaissance"));
                 response.sendRedirect("AllEmploye.jsp");
             }
        %>
    </section>
    <!-- container section end -->
    <!-- javascripts -->
    <%@ include file="footer.jsp"%>



