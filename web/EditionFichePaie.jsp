<%-- 
    Document   : EditionFichePaie
    Created on : 15 déc. 2016, 15:04:10
    Author     : Jo Max
--%>


--%><!DOCTYPE html>
<html lang="en">
  <head>
<%@ include file="css.jsp"%>
   

    <title>Pointage</title>

 



  </head>
  <body>
      
      <%@ include file="header.jsp"%>
    

   <section id="main-content">
          <section class="wrapper">
		  
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Debaucher
                          </header>
                          <div class="panel-body">
                             
                                  
                                 <form class="form-horizontal " method="get" action="redirectPointage.jsp"> 
                                     
                                    <div class="form-group">
                                      <label class="col-sm-2 control-label">Mois</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="matricule">
                                      </div>
                                  </div>
                                     
                           
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label" >Annee</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="matricule">
                                      </div>
                                  </div>
                                     
                                 
                             
                                    <div class="form-group">
                                      <label class="col-sm-2 control-label">Matricule de l'employe</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="matricule">
                                      </div>
                                  </div>
          
                                  <input type="submit" class="btn btn-primary" value="OK" >
                              </form>
                          </div>
                      </section>
                       <div class="row">
                  <div class="col-sm-6">
                      <section class="panel">
                         
                          <table class="table">
                              <thead>
                              <tr>
                                  <th>Libelle</th>
                                  <th>Gain</th>
                                  <th>Retenu</th>
                                  
                              </tr>
                              </thead>
                              <tbody>
                              <tr>
                                  <td></td>
                                  <td></td>
                                  <td></td>
                              </tr>
                     
                              </tbody>
                          </table>
                      </section>
                  </div>
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
       


