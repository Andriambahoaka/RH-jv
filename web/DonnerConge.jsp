<%-- 
    Document   : DonnerConge.jsp
    Created on : 22 janv. 2017, 14:05:12
    Author     : Jo Max
--%>

<!DOCTYPE html>
<html lang="en">
  <head>
   

   <%@ include file="/./Include/import.jsp"%>
   
    <title>Donner un Congé </title>

  </head>
  <body>
      
      <%@ include file="/./Include/header.jsp"%>
    

   <section id="main-content">
          <section class="wrapper">
		  
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Donner un Congé
                          </header>
                          <div class="panel-body">
                             
                                  
                                 <form class="form-horizontal " method="get" action="redirectDonneConge.jsp"> 
                                     
                                    <div class="form-group">
                                      <label class="col-sm-2 control-label">Employe</label>
                                      <div class="col-sm-3">
                                          <input type="text" class="form-control" name="matricule" value="<%
                                              
                                              if(request.getParameter("matricule")!= null){
                                              out.print(request.getParameter("matricule"));}%>">
                                      </div>
                                      <div class="col-sm-3">
                                          <a href="congeSelectEmp.jsp" class="btn btn-default">...</a>
                                      </div>
                                  </div>
                                     
                                   <div class="form-group">
                                      <label class="col-sm-2 control-label">Date de saisie</label>
                                      <div class="col-sm-3">
                                          <input type="date" class="form-control" name="datesaisie">
                                      </div>
                                  </div>
         
                           
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label" >Date Début</label>
                                      <div class="col-sm-3">
                                          <input type="date" class="form-control" name="datedebut">
                                      </div>
                                        <label class="col-sm-2 control-label" >Heure Début</label>
                                      <div class="col-sm-3">
                                          <input type="time" class="form-control" name="heuredebut">
                                      </div>
                                  </div>
                                     
                                       <div class="form-group">
                                      <label class="col-sm-2 control-label" >Date Fin</label>
                                      <div class="col-sm-3">
                                          <input type="date" class="form-control" name="datefin">
                                      </div>
                                        <label class="col-sm-2 control-label" >Heure Fin</label>
                                      <div class="col-sm-3">
                                          <input type="time" class="form-control" name="heurefin">
                                      </div>
                                  </div>
                  
                                   <div class="form-group">
                                      <label class="col-sm-2 control-label">Remarque</label>
                                      <div class="col-sm-10">
                                          <textarea class="form-control" name="remarque"></textarea>
                                      </div>
                                  </div>
 
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
<%@ include file="/./Include/footer.jsp"%>
       


