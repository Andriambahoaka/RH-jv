<%-- 
    Document   : PointageMultiple
    Created on : 9 janv. 2017, 08:58:11
    Author     : Jo Max
--%>


<%@page import="paie.DetailModele"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="paie.Employe"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="paie.Fonction"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        
        <title>Pointage</title>
      
        <%@ include file="css.jsp"%>
   
    </head>
    
<body>
      
        <%@ include file="header.jsp"%>
        
        <%
            Employe em= new Employe();
            Fonction fo= new Fonction();
            ArrayList<String> nomPoste=em.getAllPoste();
            ArrayList<Employe> empFiltre= new ArrayList<Employe>();
           
              if(request.getParameter("Filtre")!= null || request.getParameter("poste")!= null){
                                      
                   empFiltre= em.getEmployeByPoste(request.getParameter("poste"));
                  
                  
              } 
      
               ArrayList<DetailModele> listDetMod = (ArrayList<DetailModele>)request.getSession().getAttribute("iray");
    
 
        %>
   

<section id="main-content">
          <section class="wrapper">
                <div class="row">
                  <div class="col-sm-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Pointage Multiple 
                             
                         </header>
                          <div class="panel-body">
                             
                                  
                                 <form class="form-horizontal " method="get" action=""> 
                                   <div class="form-group">
                                     
                                      <div class="col-sm-2">
                                      <select class="form-control m-bot15" name="poste">
                                          
                                          <option>Tous</option>
                                          <%for(int i=0;i<nomPoste.size();i++){%>
                                              <option  value="<%out.print(nomPoste.get(i));%>"><%out.print(nomPoste.get(i));%></option>
                                          <%}%>    
                                      </select>
                                      </div>
                                      
                                      <div class ="col-sm-3">
                                          
                                          <input type="submit" class="btn btn-primary" name="Filtre" value="OK">
                                      
                                      </div>
                                 
                     
                                      <label class="control-label col-sm-2" for="inputSuccess">Semaine du</label>
                                      <div class="col-sm-2">
                                        <input type="date"  class="form-control">
                                      </div>
                        
                                            <div class="col-sm-2">
                                      <select class="form-control m-bot15" name="type">
                                          
                                          <option value="Entree">Entree</option>  
                                           <option value="Sortie">Sortie</option>
                                      </select>
                                      </div>
                                      
                                      
                                   
                                      
                                   </div>
                                 
                              </form>
                          </div>
                      </section>
                  
                 
                 
                  </div>
              </div>
      
               <form method="get" action ="redirectMultiPointage.jsp">
                    <div class="row">
                  <div class="col-lg-10">
              
                      <section class="panel" style="width: 1600px">
                            <header class="panel-heading">
                             Pointage Multiple 
                          </header>
                     
                          <div  class=" table-responsive" >
                          <table class="table table-bordered">
                              
                                  <thead>
                             
                              <tr>
                                  <th>Matricule</th>
                                  <th>Nom</th>
                                  <th>Prenom</th>
                            
                                  
                                  <th colspan="2">Lundi</th>
                                  <th colspan="2">Mardi</th>
                                  <th colspan="2">Mercredi</th>
                                  <th colspan="2">Jeudi</th>
                                  <th colspan="2">Vendredi</th>
                                
                            </tr>
                              <tr>
                                  <th></th>
                                  <th></th>
                                  <th></th>
                                 <th>Heure</th>
                                 <th>Retard</th>
                                 <th>Heure</th>
                                 <th>Retard</th>
                                 <th>Heure</th>
                                 <th>Retard</th>
                                 <th>Heure</th>
                                 <th>Retard</th>
                                 <th>Heure</th>
                                 <th>Retard</th>

                              </tr>
                              </thead>
                              <tbody>
                                  
                               <%
                               if(listDetMod == null){    
                             for(int i =0;i<empFiltre.size();i++){%>
                              <tr>
                                  <td><input type="text" class="form-control" value="<%out.print(empFiltre.get(i).getMatricule());%>" name="Employe<%out.print(i);%>" style="width: 115px" ></td>
                                  <td><input type="text" class="form-control"  value="<%out.print(empFiltre.get(i).getNom());%>" name="nom<%out.print(i);%>" style="width: 150px"></td>
                                  <td><input type="text" class="form-control"  value="<%out.print(empFiltre.get(i).getPrenom());%>" name="prenom<%out.print(i);%>" style="width: 100px"></td>
                             
                                  
                                  <td><input type="time" class="form-control" name="hlundi<%out.print(i);%>" ></td>
                                  <td><input type="time" class="form-control" name="retlundi<%out.print(i);%>"  ></td>
                                  <td><input type="time" class="form-control" name="hmardi<%out.print(i);%>" ></td>
                                  <td><input type="time" class="form-control" name="retmardi<%out.print(i);%>"  ></td>
                                  <td><input type="time" class="form-control" name="hmercredi<%out.print(i);%>"  ></td>
                                  <td><input type="time" class="form-control" name="retmercredi<%out.print(i);%>"   ></td>
                                  <td><input type="time" class="form-control" name="hjeudi<%out.print(i);%>"   ></td>
                                  <td><input type="time" class="form-control" name="retjeudi<%out.print(i);%>"  ></td>
                                  <td><input type="time" class="form-control" name="hvendredi<%out.print(i);%>"  ></td>
                                  <td><input type="time" class="form-control" name="retvendredi<%out.print(i);%>"  ></td>
                   
                              </tr>
                            <%}}
                                     else{
                                   for(int i =0;i<empFiltre.size();i++){

                            %>
                            
                                 <tr>
                                  <td><input type="text" class="form-control" value="<%out.print(listDetMod.get(i).getMatricule());%>" name="Employe<%out.print(i);%>" style="width: 115px" ></td>
                                  <td><input type="text" class="form-control"  value="<%out.print(listDetMod.get(i).getNom());%>" name="nom<%out.print(i);%>" style="width: 150px"></td>
                                  <td><input type="text" class="form-control"  value="<%out.print(listDetMod.get(i).getPrenom());%>" name="prenom<%out.print(i);%>" style="width: 100px"></td>
                             
                                  
                                  <td><input type="time" class="form-control" name="hlundi<%out.print(i);%>"  value="<%out.print(listDetMod.get(i).getHeureLundi());%>" ></td>
                                  <td><input type="time" class="form-control" name=""  value="<%out.print(listDetMod.get(i).getRetardLundi());%>" ></td>
                                  <td><input type="time" class="form-control" name="hmardi<%out.print(i);%>"  value="<%out.print(listDetMod.get(i).getHeureMardi());%>" ></td>
                                  <td><input type="time" class="form-control" name="" value="<%out.print(listDetMod.get(i).getRetardMardi());%>" ></td>
                                  <td><input type="time" class="form-control" name="hmercredi<%out.print(i);%>"  value="<%out.print(listDetMod.get(i).getHeureMercredi());%>" ></td>
                                  <td><input type="time" class="form-control" name="" size="1" value="<%out.print(listDetMod.get(i).getRetardMercredi());%>" ></td>
                                  <td><input type="time" class="form-control" name="hjeudi<%out.print(i);%>" size="1" value="<%out.print(listDetMod.get(i).getHeureJeudi());%>" ></td>
                                  <td><input type="time" class="form-control" name="" size="1" value="<%out.print(listDetMod.get(i).getRetardJeudi());%>" ></td>
                                  <td><input type="time" class="form-control" name="hvendredi<%out.print(i);%>" size="1" value="<%out.print(listDetMod.get(i).getHeureVendredi());%>" ></td>
                                  <td><input type="time" class="form-control" name="" size="1" value="<%out.print(listDetMod.get(i).getRetardVendredi());%>" ></td>
                   
                              </tr>
                            
                            <%}}%>
                            
                            
                              </tbody>
                          </table>
                           </div>   
                      </section>
                              
                            
                              <input type="hidden" name="poste1" value="<%out.print(request.getParameter("poste"));%>">
                              <input type="submit" class="btn btn-primary" value="OK" name="palou">
                              <input type="submit" class="btn btn-success" value="Enregistrer en tant que modèle" name="modele">
             
                  </div>  
       
               
                              
                          
                              
                              
                              
                              
                              
                 </div> 
                     </form>
                  

          </section>
</section>

<%@ include file="footer.jsp"%>
