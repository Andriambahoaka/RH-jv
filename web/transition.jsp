<%-- 
    Document   : transition
    Created on : 6 déc. 2016, 07:00:49
    Author     : Jo Max
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/bootstrap.css">
	<script src="js/jquery-2.2.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transition</title>
    </head>
    <body>
        <%
	   ArrayList <String>  listMatr = new ArrayList();
           ArrayList <String>  listNom = new ArrayList();
           ArrayList <String>  listPrenom = new ArrayList();
           
           ArrayList <String> listHeureLundi=  new ArrayList();
           ArrayList <String> listHeureMardi=  new ArrayList();
           ArrayList <String> listHeureMercredi=  new ArrayList();
           ArrayList <String> listHeureJeudi=  new ArrayList();
           ArrayList <String> listHeureVendredi=  new ArrayList();
           
           ArrayList<String> retardLundi = new ArrayList();
           ArrayList<String> retardMardi = new ArrayList();
           ArrayList<String> retardMercredi = new ArrayList();
           ArrayList<String> retardJeudi = new ArrayList();
           ArrayList<String> retardVendredi = new ArrayList();
           ArrayList<DetailModele> iray = new ArrayList();
           
           
           
           Fonction  f = new Fonction();
           
           for(int i=0; i<empFiltre1.size();i++ )
           {
                 String MultiLundi= request.getParameter("hlundi"+i);
                 String MultiMardi= request.getParameter("hmardi"+i);
                 String MultiMercredi= request.getParameter("hmercredi"+i);
                 String MultiJeudi= request.getParameter("hjeudi"+i);
                 String MultiVendredi= request.getParameter("hvendredi"+i);
                 
                 String MultiMatr = request.getParameter("Employe"+i);
                 String MultiNom= request.getParameter("nom"+i);
                 String MultiPrenom= request.getParameter("prenom"+i);
                 
                 listMatr.add(MultiMatr);
                 listNom.add(MultiNom);
                 listPrenom.add(MultiPrenom);
                 listHeureLundi.add(MultiLundi);
                 listHeureMardi.add(MultiMardi);
                 listHeureMercredi.add(MultiMercredi);
                 listHeureJeudi.add(MultiJeudi);
                 listHeureVendredi.add(MultiVendredi);
                 
                 
                 String retLundi= f.calculRet(listMatr.get(i), listHeureLundi.get(i));
                 String retMardi=f.calculRet(listMatr.get(i), listHeureMardi.get(i));
                 String retMercredi=f.calculRet(listMatr.get(i), listHeureMercredi.get(i));
                 String retJeudi=f.calculRet(listMatr.get(i), listHeureJeudi.get(i));
                 String retVendredi=f.calculRet(listMatr.get(i), listHeureVendredi.get(i));
                 
                 
                 retardLundi.add(retLundi);
                 retardMardi.add(retMardi);
                 retardMercredi.add(retMercredi);
                 retardJeudi.add(retJeudi);
                 retardVendredi.add(retVendredi);
                 
                 DetailModele detMod= new DetailModele(listMatr.get(i), listNom.get(i), listPrenom.get(i), listHeureLundi.get(i), listHeureMardi.get(i), listHeureMercredi.get(i), listHeureJeudi.get(i), listHeureVendredi.get(i));
                 iray.add(detMod);
           }
    %>
    </body>
</html>


