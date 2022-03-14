<%-- 
    Document   : DemandeAvance
    Created on : 6 déc. 2016, 06:56:30
    Author     : Jo Max
--%>

<%@page import="utilitaire.Fonction"%>
<%@page import="java.util.ArrayList"%>
<% 
    
        Fonction f= new Fonction();
        String [] allMois= f.AfficheMois();
        
     
      
    %>

<!DOCTYPE html>
<html lang="en">
  <head>

<%@ include file="Include/Import.jsp"%>
   
    <title>Demande d'Avance</title>
    

    




  </head>
  <body>
      
      <%@ include file="header.jsp"%>
   

 <section id="main-content">
          <section class="wrapper">
		  
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             
                          </header>
                          <div class="panel-body">
                             
                       
                            <form class="form-horizontal " method="get" action="Traitement.jsp"> 
                                
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">Matricule de L'employe<%out.print(request.getParameter("donnee"));%></label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="matricule" value="">
                                                 
                                                 <%
                                                     if(request.getParameter("matrEch1")!= null){
                                            
                                                         out.print(request.getParameter("matrEch1"));
                                                      }
                                      
                                                 %>">
                                      </div>
                                  </div>
                               
                   
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">Montant</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="montantTotal" value="<%
                                                 
                                                 if(request.getParameter("montEch1")!= null)
                                                 {
                                                 out.print(request.getParameter("montEch1"));
                                                 }
                                                 
                                                 
                                                 
                                                 %>">   
                                      </div>
                                  </div>
                             
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">Echeance</label>
                                      <div class="col-sm-4">
                                          <input type="text" class="form-control" name="" value="<%
                                              
                                          if(request.getParameter("montEch1")!=null)
                                          {    
                                              
                                             // out.print(ens);
                                          
                                          }
                                          %>">
                                              
                                      </div>
                                      <div class="col-sm-4">
                                          <input type="submit" class="btn btn-default" type="button" value="Remboursement" name="Remb" >
                                                                             
                            
                                      </div>
                                  </div>
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">Date de demande</label>
                                      <div class="col-sm-10">
                                          <input type="date" class="form-control" name="dateDemande" value="">
                                      </div>
                                  </div>
     
                                          <input type="submit" class="btn btn-primary" value="OK" href="">
                                         
                                        
                            
                                     
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
       

