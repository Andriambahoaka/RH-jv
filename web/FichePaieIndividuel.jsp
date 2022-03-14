<%-- 
    Document   : FichePaieIndividuel
    Created on : 18 déc. 2016, 23:12:51
    Author     : Jo Max
--%>


<%@page import="paie.Employe"%>
<%@page import="java.util.ArrayList"%>
<%@page import="paie.ElementPaie"%>
<%@page import="paie.Fonction"%>



--%><!DOCTYPE html>
<html lang="en">
  <head>

<%@ include file="css.jsp"%>
   
    <title>Pointage</title>

    




  </head>
  <body>
      <%
          
         Fonction f= new Fonction();
         String [] information= request.getParameter("info").split(";");
         int id =Integer.parseInt(information[0].trim());
         String Mois = information[1];
         int volana =f.getIdByMois(Mois);
         int annee =Integer.parseInt(information[2].trim());
         Employe nv = new Employe();
         Employe ray = nv.getEmployeById(id);
         String net= information[3];
         
         

     %>
      
      
      
      <%@ include file="header.jsp"%>
    

   <section id="main-content">
          <section class="wrapper">
		  
           
              <div class="row">
                  <div class="col-lg-4">
                      <section class="panel">
                          <header class="panel-heading">
                              Fiche de Paie Individuelle
                          </header>
                          <ul class="list-group">
                              <li class="list-group-item">Nom : <%out.println(ray.getNom());%> </li>
                              <li class="list-group-item">Prenom : <%out.println(ray.getPrenom());%></li>
                              <li class="list-group-item">Matricule : <%out.println(ray.getMatricule());%></li>
                              <li class="list-group-item">CIN : <%out.println(ray.getCIN());%> </li>
                              <li class="list-group-item">Mois: <%out.println(Mois);%>  </li>
                              <li class="list-group-item">Annee : <%out.println(annee);%> </li>
                          </ul>
                      </section>
                  </div>
              </div>
               <div class="">   
                    <div class="col-sm-12">
                      <section class="panel">
                          <header class="panel-heading no-border">
                            
                          </header>
                          <table class="table table-bordered">
                              <thead>
                              <tr>
                                  
                                  <th>Libelle </th>
                                  <th>Gain</th>
                                  <th>Retenu</th>
                                  
                               
                              </tr>
                              </thead>
                              <tbody>
                                <%
                                     ElementPaie u = new ElementPaie();
                                     ArrayList<ElementPaie> listel= u.getElementPaieByidEmploye(id,volana,annee);
                                     for (ElementPaie elpaie : listel){
                           
                                %>
                              <tr>
                                  <td><%out.println(elpaie.getLibelle());%></td>
                                  <td><%out.println(elpaie.getGain());%></td>          
                                  <td><%out.println(elpaie.getRetenu());%></td>
                                  
                              </tr>
                             
                              
                            
                                                    <%}%>
                                                    
                                             
                                                   <td></td>
                                                   <td><h3>Net à payer</h3></td>
                                                   <td><h3><%out.println(net);%></h3></td>
                                              
                   
                              </tbody>
                          </table>
                            
                      </section>
                                               
                            <br>
                            <br>
                            <hr>
                  </div>
                         
              </div>
              
       

          </section>
      </section>
      <!--main content end-->
  </section>
  <!-- container section end -->
    <!-- javascripts -->
<%@ include file="footer.jsp"%>
       


l>
