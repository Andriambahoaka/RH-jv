<%-- 
    Document   : redirectMultiPointage
    Created on : 13 janv. 2017, 12:38:58
    Author     : Jo Max
--%>

<%@page import="paie.DetailModele"%>
<%@page import="paie.Employe"%>
<%@page import="java.util.ArrayList"%>
<%@page import="paie.Fonction"%>
<%
       if(request.getParameter("poste1") != null){
           Employe em=new Employe();
           ArrayList <Employe> empFiltre1= em.getEmployeByPoste(request.getParameter("poste1").trim());
           ArrayList<DetailModele> iray= new ArrayList();
    
            Fonction  f = new Fonction();
          
           Employe emp = new Employe();
           
           for(int i=0; i<empFiltre1.size();i++ )
           {
                 DetailModele detMod= new DetailModele(request.getParameter("Employe"+i),
                                                       request.getParameter("nom"+i),
                                                       request.getParameter("prenom"+i),
                                                       request.getParameter("hlundi"+i),
                                                       request.getParameter("retlundi"+i),
                                                       request.getParameter("hmardi"+i),
                                                       request.getParameter("retmardi"+i)
                                                        );
                 
                  detMod.Fill(detMod);
                  iray.add(detMod);
   
        
           }
           
           
           
                   
           
           
           
          request.getSession().setAttribute("iray",iray); 
           
           String fo= request.getParameter("poste1").trim();
           String path = "PointageMultiple.jsp?poste="+fo;
           response.sendRedirect(path);
         
    }
 %>
           
                 
            