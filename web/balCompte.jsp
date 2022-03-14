<%-- 
    Document   : balCompte
    Created on : 15 déc. 2016, 01:02:22
    Author     : Jo Max
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
           <title>Balance des comptes</title>
           
           <%@ include file="css.jsp"%>
           
    </head>
<body>
      
      <%@ include file="header.jsp"%>
    

   <section id="main-content">
          <section class="wrapper">
              
              
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                           
                          <header class="panel-heading">
                             Afficher 
                          </header>
                          <div class="panel-body">
                             
                                  
                                 <form class="form-horizontal " method="get" action="redirectPointage.jsp"> 
                                
                                     
                                      <div class="form-group">
                                      <label class="col-sm-2 control-label">Compte</label>
                                      <div class="col-sm-10">
                                              <select class="form-control">
						  <option>General</option>
						  <option>Auxiliaire</option>
						 
				              </select>
                                          
                                      </div>
                                   </div>
                         
                              
                                   <div class="form-group">
                                      <label class="col-sm-2 control-label">Du</label>
                                      <div class="col-sm-10">
                                          <input type="date" class="form-control" name="date1">
                                      </div>
                                   </div>
                                   <div class="form-group">
                                      <label class="col-sm-2 control-label">Jusqu'à</label>
                                      <div class="col-sm-10">
                                          <input type="date" class="form-control" name="date2">
                                      </div>
                                   </div>
                             
                             
                                 
                             
                                  <input type="submit" class="btn btn-primary" value="Afficher" >
                              </form>
                          
                   
                              <hr>
                     
                          
                          <table class="table table-bordered">
                              <thead>
                              <tr>
                                  <td colspan="2">Compte</td>
                                  <td colspan="2">Initial</td>
                                  <td colspan="2">Mouvement</td>
                                  <td colspan="2">Solde</td>
                              </tr>
                              <tr>

                                  <td>Nom</td>
                                  <td>Numero</td>
                                  <td>Debit</td>
                                  <td>Credit</td>
                                  <td>Debit</td>
                                  <td>Credit</td>
                                  <td>Debit</td>
                                  <td>Credit</td>
                       
                              </tr>
                                  
                              </thead>
                              <tbody>
                                     <tr>
                                         <td>Achat</td>
                                         <td>60</td>
                                         <td>15000</td>
                                         <td>0</td>
                                         <td>17000</td>
                                         <td>12500</td>
                                         <td>0</td>
                                         <td>10000</td> 
                                    </tr>
                              </tbody>
                          </table>
                      </section>
                  </div>
                </div>
           </div>
              <!-- page end-->
          </section>
      </section>
      <!--main content end-->
  </section>
  <!-- container section end -->
    
<%@ include file="footer.jsp"%>
       


