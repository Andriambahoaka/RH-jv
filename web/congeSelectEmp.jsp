<%-- 
    Document   : congeSelectEmp
    Created on : 22 janv. 2017, 14:56:45
    Author     : Jo Max
--%>

<%@page import="modele.Employe"%>
<%@page import="dao.EmployeDAO"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="en">
  <head>
   

    <title>Liste des Employes</title>

    <%@ include file="css.jsp"%>

  </head>
  <body>
      <%
          EmployeDAO edao = new EmployeDAO();
          ArrayList<Employe> listEmp= edao.getAllEmploye();
          
  
      %>
      
      
      
      <%@ include file="header.jsp"%>
    

   <section id="main-content">
          <section class="wrapper">
               <form   action="DonnerConge.jsp"   method="get" >
		  
              <div class="row">
         
                    <div class="col-sm-6">
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
                                  <th>Check</th>
                               
                                
                              </tr>
                              </thead>
                              <tbody>
                                <%
                                    for (Employe emp : listEmp){

                                %>
                              <tr>
                                  <td><%out.println(emp.getMatricule());%></td> 
                                  <td><%out.println(emp.getNom());%></td>          
                                  <td><%out.println(emp.getPrenom());%></td>
                                  <td><input type="checkbox" name="matricule" class="form-control" value="<%out.println(emp.getMatricule());%>"></td>  
                              </tr>
                             
                              
                            
                                                    <%}%>
                   
                              </tbody>
                          </table>
                         
                      </section>
                  </div>
                                 
              </div>
              
       
                   <input type="submit" class="btn btn-default" value="OK">
                           </form>
          </section>
      </section>
      <!--main content end-->
  </section>
  <!-- container section end -->
    <!-- javascripts -->
<%@ include file="footer.jsp"%>
       



