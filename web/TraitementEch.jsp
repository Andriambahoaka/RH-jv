<%-- 
    Document   : TraitementEch
    Created on : 5 janv. 2017, 21:27:53
    Author     : Jo Max
--%>

<%@page import="paie.Fonction"%>
<%@page import="java.util.ArrayList"%>





<%
    Fonction f = new Fonction();
               
                      
         int p=Integer.parseInt(request.getParameter("nb").trim());              
         String echeance = "";
         String [] inf=request.getParameter("kemp").split("/");
         double montTot= Double.valueOf(inf[1]);
         ArrayList<String> val=new ArrayList<String>();
         ArrayList<Double> val1=new ArrayList<Double>();
         ArrayList<String> val2=new ArrayList<String>();
        
        if(request.getParameter("nb")!=null){
        
        
        for(int i=0; i<p; i++)
        {
            
        String multiMois=request.getParameter("mois"+i);       
        double multiMontant=Double.valueOf(request.getParameter("montant"+i));
        String multiAnnee = request.getParameter("annee"+i);
        
          if(multiMois!= null)
          {
            val.add(multiMois);
            val1.add(multiMontant);
            val2.add(multiAnnee);
          }
          
          
                   
      
        }
        
                    for (int k =0; k<val.size();k++)
                    {
                          echeance+=val.get(k)+":"+val1.get(k)+":"+val2.get(k)+";";
                    }
                    
          if(montTot!=f.totaliz(val1)){
        %>
        
        
        
        
        
          <h1><%out.print(echeance);%></h1>
         <h1><%out.print(montTot);%></h1>
        <h1><%out.print(f.totaliz(val1));%></h1>
        <h1><%out.print(request.getParameter("kemp"));%></h1>    
                    
                    
       <% } else

 { %>
       
       poinsa


          
<%

}  }           
                              
      %>       

       
                    
       
           
              




