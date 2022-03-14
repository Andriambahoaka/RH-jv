<%-- 
    Document   : Echeance
    Created on : 6 déc. 2016, 13:18:35
    Author     : Jo Max
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
  Fonction f= new Fonction();
  String [] allMois= f.AfficheMois();

%>



<%@page import="paie.Fonction"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        
        <title>Pointage</title>
      
        <%@ include file="import.jsp"%>
   
    </head>
    
<body>
      
        <%@ include file="header.jsp"%>
   

<section id="main-content">
    <section class="wrapper">	  
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">Echeance</header>
                        <div class="panel-body">
                            <form class="form-horizontal " method="get" action="">  
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Remboursement</label>
                                    
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" name="nombre" value="" placeholder="Nombre">
                                        </div>
                                      
                                        <div class="col-sm-4">
                                            <button class="form-control" name="OK" value=""> OK</button>
                                        </div>
                                </div>
                                   
                                            <input type="hidden" class="form-control" name="inform" value="<%out.print(request.getParameter("info"));%>"> 
                                            
                                    
                            </form>
                           
                            <hr>
                              
                             <%if(request.getParameter("OK")!=null){
                             
                               int nb = Integer.parseInt(request.getParameter("nombre"));
                               String infor= request.getParameter("inform");
                             
                               
                               for(int k = 0 ;k<nb; k++){ 
                             %>
                                
                            <form class="form-horizontal " method="get" action="TraitementEch.jsp"> 
                                <div class="form-group">
                                    <label class="control-label col-lg-2" for="inputSuccess">Mois</label>
                                        <div class="col-lg-2">
                                            <select class="form-control"  name="mois<%out.print(k);%>">

                                                  <% for(int i=0; i<allMois.length;i++){%>

                                                            <option value="<%out.println(allMois[i]);%>" ><%out.println(allMois[i]);%></option>

                                                  <%}%>   

                                            </select>
                                        </div> 
                                    <label class="control-label col-lg-1" for="inputSuccess">Montant</label>
                                      
                                        <div class="col-lg-2">
                                           <input type="text" class="form-control" name="montant<%out.print(k);%>" >
                                        </div>
                                           
                                        
                               
                                        
                                      <div class="form-group">
                                            <label class="control-label col-lg-1">Annee</label>
                                            <div class="col-sm-2">
                                                <input type="text" class="form-control" name="annee<%out.print(k);%>">
                                            </div>
                                    </div>
                         </div>
                                   <%}%>
                                    
                        
                                     <input type="hidden" class="form-control" name="nb" value="<%out.print(nb);%>"> 
                                     <input type="hidden" class="form-control" name="kemp" value="<%out.print(infor);%>"> 
                                     
                                  
                                     <input type="submit" class="btn btn-primary" value="OK" name="Oli">
                            </form>
                                 <%}%>
                        </div>
                      </section>
                  
                 
                  </div>
              </div>
              
              
           
         

              <!-- page end-->
          </section>
</section>
      <!--main content end-->
  </section>
  <!-- container section end -->
    <!-- javascripts -->
<%@ include file="footer.jsp"%>
       

