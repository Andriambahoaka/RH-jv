<%-- 
    Document   : RetourConge
    Created on : 22 janv. 2017, 14:05:34
    Author     : Jo Max
--%>


<!DOCTYPE html>
<html lang="en">
  <head>
   

   <%@ include file="./Include/import.jsp"%>
   
    <title>Retour de Congé</title>

  </head>
  <body>
      
    <%@ include file="./Include/header.jsp"%>
    

   <section id="main-content">
          <section class="wrapper">
		  
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Retour de Congé
                          </header>
                          <div class="panel-body">
                             
                                  
                                 <form class="form-horizontal " method="get" action=".jsp"> 
                                     
                                    <div class="form-group">
                                      <label class="col-sm-2 control-label">Employe</label>
                                      <div class="col-sm-8">
                                          <input type="date" class="form-control" name="employe">
                                      </div>
                                      <div class="col-sm-2">
                                          <a href="" class="btn btn-default">...</a>
                                      </div>
                                  </div>
                                     
                                   <div class="form-group">
                                      <label class="col-sm-2 control-label">Congé</label>
                                      <div class="col-sm-8">
                                          <input type="date" class="form-control" name="employe">
                                      </div>
                                      <div class="col-sm-2">
                                          <a href="" class="btn btn-default">...</a>
                                      </div>
                                  </div>
                                     
                                   <div class="form-group">
                                      <label class="col-sm-2 control-label">Date de Retour</label>
                                      <div class="col-sm-4">
                                          <input type="date" class="form-control" name="dateretour">
                                      </div>
                                       <label class="col-sm-2 control-label">Heure de Retour</label>
                                      <div class="col-sm-4">
                                          <input type="time" class="form-control" name="heureretour">
                                      </div>
                                  </div>
         
 
                                  <input type="submit" class="btn btn-primary" value="Enregistrer" >
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
<%@ include file="./Include/footer.jsp"%>
       



