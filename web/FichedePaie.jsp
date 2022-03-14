<%-- 
    Document   : FichedePaie
    Created on : 16 déc. 2016, 23:13:18
    Author     : Jo Max
--%>


<%@page import="modele.ElementPaie"%>
<%@page import="dao.ElementPaieDAO"%>
<%@page import="utilitaire.Fonction"%>
<%@page import="java.util.ArrayList"%>




<!DOCTYPE html>
<html lang="en">
  <head>
   

    <title>Pointage</title>

    <%@ include file="import.jsp"%>

  </head>
  <body>
      <%
         Fonction f= new Fonction();
         String [] allMois= f.AfficheMois();
%>
      
      
      
      <%@ include file="header.jsp"%>
    

   <section id="main-content">
          <section class="wrapper">
		  
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Edition de Paie
                          </header>
                          <div class="panel-body">
                             
                                  
                                 <form class="form-horizontal " method="get" action=""> 
                                     
                                <div class="form-group">
                               <label class="col-sm-2 control-label" >Mois</label>
                                <div class="col-sm-10">
                                <select class="form-control"  name="mois">
                                      <%for(int i=0; i<allMois.length;i++) {%>
                                                          
				         <option value="<%out.println(allMois[i]);%>" ><%out.println(allMois[i]);%></option>
                          
                                       <%}%>   
                                                             
                                  
                                </select>
                                 </div>
                             </div>
                                     
                           
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label" >Annee</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="annee" value="" required>
                                      </div>
                                  </div>
           
                                       <input type="submit" class="btn btn-primary" name="OK">
                              </form>
                          </div>
                      </section>
                  
                 
                 
                  </div>
                                       
                                       
                                       
                                       
                                    
                                       
                                       
                    <%if (request.getParameter("OK")!= null){
                   

                              String volana =request.getParameter("mois").trim();          
                              int annee = Integer.parseInt(request.getParameter("annee").trim()); 
                              ElementPaieDAO epdao= new ElementPaieDAO();
                              ArrayList<ElementPaie> listel= epdao.getAllElementPaie(f.getIdByMois(volana),annee);

                    
                    %>
                         
                    <div class="col-sm-12">
                      <section class="panel">
                          <header class="panel-heading no-border">
                              Fiche de paie des employés
                          </header>
                          <table class="table table-bordered">
                              <thead>
                              <tr>
                                  <th>Employe</th>
                                  <th>Salaire de Base</th>
                                  <th>Gain</th>
                                  <th>Retenu</th>
                                  <th>Reste à payer</th>
                                  <th>Mois</th>
                                  <th>Annee</th>
                              </tr>
                              </thead>
                              <tbody>
                                <%
                                     
                                 
                                    for (ElementPaie elpaie : listel){
                                       
                                   
                                
                                
                                %>
                              <tr>
                                  <td><a href="FichePaieIndividuel.jsp?info=<%out.print(elpaie.getIdEmploye()+";"+volana+";"+annee+";"+elpaie.getNetApayer());%>"><%out.println(elpaie.getIdEmploye());%></a></td>
                                  <td>salaire de base ??</td>
                                  <td><%out.println(elpaie.getGain());%></td>          
                                  <td><%out.println(elpaie.getRetenu());%></td>
                                  <td><%out.println(elpaie.getNetApayer());%></td>  
                                  <td><%out.println(volana);%></td>  
                                  <td><%out.println(annee);%></td> 
                              </tr>
                             
                              
                            
                                                    <%}%>
                   
                              </tbody>
                          </table>
                      </section>
                  </div>
                  <% }                   
                       %>                
              </div>
              
       

          </section>
      </section>
      <!--main content end-->
  </section>
  <!-- container section end -->
    <!-- javascripts -->
<%@ include file="footer.jsp"%>
       


