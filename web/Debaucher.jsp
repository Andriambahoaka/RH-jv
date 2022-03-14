<%-- 
    Document   : Debaucher
    Created on : 15 déc. 2016, 12:37:57
    Author     : Jo Max
--%>
<!DOCTYPE html>
<html lang="en">
  <head>
   

   <%@ include file="Inlcude/import.jsp"%>
   
    <title>Pointage</title>

  </head>
  <body>
      
      <%@ include file="Include/header.jsp"%>
    

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
                                      <label class="col-sm-2 control-label">Date de saisie</label>
                                      <div class="col-sm-10">
                                          <input type="date" class="form-control" name="matricule">
                                      </div>
                                  </div>
                                     
                           
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label" >Matricule de l'employe</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="matricule">
                                      </div>
                                  </div>
                                     
                                 
                             
                                    <div class="form-group">
                                      <label class="col-sm-2 control-label">Motif</label>
                                      <div class="col-sm-10">
                                          <input type="text" class="form-control" name="matricule">
                                      </div>
                                  </div>
                               
                         
                                  
                                   <div class="form-group">
                                      <label class="col-sm-2 control-label">Date d'application</label>
                                      <div class="col-sm-10">
                                          <input type="date" class="form-control" name="date">
                                      </div>
                                  </div>
                                     
                                   <div class="form-group">
                                      <label class="col-sm-2 control-label">Remarque</label>
                                      <div class="col-sm-10">
                                          <textarea type="text" class="form-control" name="date"></textarea>
                                      </div>
                                  </div>
                                     
                                     
                                     <a href="redirect.jsp">redirect</a>
                             
                                  <input type="submit" class="btn btn-primary" value="OK" >
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
       

