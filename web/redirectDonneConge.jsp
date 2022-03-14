<%-- 
    Document   : redirectDonneConge
    Created on : 22 janv. 2017, 19:20:41
    Author     : Jo Max
--%>


<%@page import="paie.Fonction"%>
<%@page import="paie.Conge"%>
<%@page import="java.util.ArrayList"%>
<%@page import="paie.Employe"%>
<!DOCTYPE html>
<html lang="en">
  <head>
   

   <%@ include file="css.jsp"%>
   
    <title>Donner un Congé</title>

  </head>
  <body>
      
      <%@ include file="header.jsp"%>
    

   <section id="main-content">
          <section class="wrapper">
		  
              <div class="row">
                  <div class="col-lg-12">
                     
                 
   


<%
     Conge em= new Conge();
     Employe emp=new Employe();
     Fonction f= new Fonction();
          
     try{

          em.insertConge(emp.getIdBy(request.getParameter("matricule")), request.getParameter("datesaisie"),request.getParameter("datedebut"),request.getParameter("heuredebut"),request.getParameter("datefin"),request.getParameter("heurefin"),request.getParameter("remarque"));

%>
                            <div class="col-lg-4">
                               <div class="alert alert-success fade in">
                                  <strong>Congé</strong>         Enregistré.
                              </div>   
                             </div>  
                      
                      <a class="btn btn-primary" href="validationConge.jsp">Voir listes des congés</a>
                      
                      <%
       }
     
     catch(Exception e){%>

                           <div class="col-lg-4">
                                    <div class="alert alert-block alert-danger fade in">

                                        <% out.print(e.getMessage());%>
                                        
                                    </div> 
                                   
                           </div>
          

<%}%>


                         <div class="col-lg-12">
                              <a type="submit" href="DonnerConge.jsp" class="btn btn-primary"  > OK </a>
                         </div
                         
  
                  </div>
              </div>
              
       

          </section>
      </section>
      <!--main content end-->
  </section>
  <!-- container section end -->
    <!-- javascripts -->
<%@ include file="footer.jsp"%>
       



