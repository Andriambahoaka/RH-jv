/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modele.Pointage;
import service.PointageService;
import utilitaire.ConnectionBase;

/**
 *
 * @author Jo Max
 */
public class PointageDAO {
     PointageService ps = new PointageService();
    
    public String getLastPointage(int idEmploye)
    {
        ConnectionBase test=new ConnectionBase();
        String result = ""; 
        String msg="";
        String sql ="select type from pointage where idEmploye='"+idEmploye+"' order by idPointage desc limit 1";
            try
            {  
                test.getConnPostgresql();
                java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
                ResultSet rs=stmt.executeQuery(sql);
                while(rs.next())
                {
                    System.out.print(sql);
                    result = rs.getString("type");
                }
                (test.getConnPostgresql()).close();
            }
            
            catch(Exception e)
            { 
                e.printStackTrace();
            } 
            
        return result;
       
         
     
    }  
    
    
        public boolean insertRetard(int idemploye, String heureretard,String dateRetard) throws SQLException
        {
               	ConnectionBase test=new ConnectionBase();
                Connection connection = test.getConnPostgresql();
                Boolean result=null;
                 try{
			java.sql.Statement stmt = connection.createStatement();
                    
                        String req = "INSERT INTO retard(idemploye,heureretard,dateretard) VALUES ('"+idemploye+"','"+heureretard+"','"+dateRetard+"')";                     
                        stmt.executeUpdate(req); 
                        connection.close();
                        result=true;
                 }
                 catch(Exception e)
                 {
                     result=false;
                     e.getMessage();
                 }
            return result;
         }
           
        public boolean insertPointage(int idEmploye,String datePointage,String heure,String type) throws Exception
	{
		ConnectionBase test=new ConnectionBase();
                Connection connection = test.getConnPostgresql();
                boolean result=true;
                if(idEmploye ==0 || datePointage.isEmpty() || heure.isEmpty())
                {
                
                    //throw new Exception("Completer tous les champs");
                    result= false;
                }
                
                if(type.compareTo("Entree")==0)
                {
                        ps.checkRangEntree(idEmploye);
		        ps.CheckEntree(datePointage);
                        ps.checkRetard(idEmploye,heure,datePointage);
                        
                }
                else{
                    
                    ps.checkRangSortie(idEmploye);
		    ps.CheckSortie(datePointage);
                   
                }      
			
                java.sql.Statement stmt = connection.createStatement();
                String req = "INSERT INTO Pointage(idemploye, datepointage, heurepointage, type) VALUES ("+idEmploye+",'"+datePointage+"','"+heure+"','"+type+"')";
                stmt.executeUpdate(req); 
                connection.close();
                return result;
	
	  } 
           
  
           

         public ArrayList<Pointage> getAllPointage()
        {
         	ConnectionBase test=new ConnectionBase();
		ArrayList<Pointage> result = new ArrayList<>();
		String msg="";
		String sql ="select * from Pointage";
		try
		{  
			test.getConnPostgresql();
			java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
			ResultSet rs=stmt.executeQuery(sql);
                        
			
	           while(rs.next()){
                Pointage p = new Pointage();
          
                p.setIdPointage(rs.getInt("idpointage"));
                p.setDatePointage(rs.getDate("datepointage"));
                p.setHeurePointage(rs.getString("heurePointage"));
                p.setType(rs.getString("type"));
                
    
                result.add(p);
                
            }
	        
			(test.getConnPostgresql()).close();
			msg="Mande";
		}
		catch(Exception e)
		{ 
			msg=e.getMessage();
			e.printStackTrace();
		}  
		return result;
        }
    
    
    
    
}
