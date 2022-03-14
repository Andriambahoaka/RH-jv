<%-- 
    Document   : vadlidationConge
    Created on : 23 janv. 2017, 11:41:27
    Author     : Jo Max
--%>


<%@page import="dao.EmployeDAO"%>
<%@page import="modele.Employe"%>
<%@page import="modele.Conge"%>
<%@page import="dao.CongeDAO"%>
<%@page import="java.util.ArrayList"%>




<!DOCTYPE html>
<html lang="en">
  <head>
   

    <title>Liste des Employes</title>

    <%@ include file="Include/import.jsp"%>

  </head>
  <body>
      <%
          CongeDAO cdao= new CongeDAO();
          ArrayList<Conge> listConge= new ArrayList<Conge>();
          listConge=cdao.getCongeAValide();
          EmployeDAO edao= new EmployeDAO();
      %>

      
      <%@ include file="Include/header.jsp"%>
    

   <section id="main-content">
          <section class="wrapper">
		  
              <div class="row">
         
                    <div class="col-sm-12">
                        <section class="panel">
                          <header class="panel-heading">
                             Validation d'un congé 
                             
                         </header>
                          <div class="panel-body">
                             
                                  
                     
                                   <div class="form-group">
                                     
                                      <div class ="col-sm-3">
                                          <a href="validationConge.jsp" class="btn btn-primary">Congés à Valider</a>
                                      </div>
                                      <div class ="col-sm-3" >
                                          <a href="listeCongeValide.jsp"class="btn btn-primary">Congés validés</a>
                                      </div>
                                       <div class ="col-sm-3">
                                          <a href="listeCongeRejete.jsp"class="btn btn-primary">Congés Réjétés</a>
                                       </div>

                                      
                                   </div>
                                 
                             
                          </div>
                      </section>
                        
            <section class="panel">
                          <header class="panel-heading no-border">
                             Listes des congés à valider
                          </header>
                          <table class="table table-bordered">
                              <thead>
                              <tr>
                                  <th>Employe</th>
                                  <th>Date de saisie</th>
                                  <th>Date de début</th>
                                  <th>Heure de début</th>
                                  <th>Date de fin</th>
                                  <th>Heure de fin</th>
                                  
                                
                              </tr>
                              </thead>
                              <tbody>
                         
                    <%
                             for(int i=0;i<listConge.size();i++){%>
                              <tr>
                         
                                  <td><%out.print(edao.getEmployeById(listConge.get(i).getIdEmploye()).getNom()
                                   +" "+edao.getEmployeById(listConge.get(i).getIdEmploye()).getPrenom());%></td>          
                                  <td><%out.print(listConge.get(i).getDateSaisie());%></td>
                                  <td><%out.print(listConge.get(i).getDatedebut());%></td>
                                  <td><%out.print(listConge.get(i).getHeureDebut());%></td>
                                  <td><%out.print(listConge.get(i).getDatefin());%></td>
                                  <td><%out.print(listConge.get(i).getHeurefin());%></td>
                                
                                  <td><a href="traiteValidation.jsp?idconge=<%out.print(listConge.get(i).getIdConge());%>" class="btn btn-success">VALIDER</a></td>
                                  <td><a href="traiteRejet.jsp?idconge=<%out.print(listConge.get(i).getIdConge());%>" class="btn btn-danger">REJETER</a></td>
                               
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
<%@ include file="Include/footer.jsp"%>
       




