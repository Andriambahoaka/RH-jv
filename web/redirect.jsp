<%-- 
    Document   : redirect.jsp
    Created on : 12 déc. 2016, 07:46:57
    Author     : Jo Max
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Date"%>
<%@page import="paie.*"%>

<% 
         Fonction f = new Fonction();
         ElementPaie el= new ElementPaie();
         Employe ray = new Employe();
         
       out.println(f.getLastPointage(2, "12/12/2006"));
       out.println(ray.getIdBy("48745415745"));
       
         
    try{
       
       f.checkRangSortie(ray.getIdBy("Emp04"), "12/12/2006");
    }  
    catch(Exception e)
        
    {
        out.println(e.getMessage());
    }
     
               
             
             
             
         
       
       
        
                     
      

   
    
    
  
    
    
    
    
 

    

    
    
    
                            

    
                               
                                
%>
