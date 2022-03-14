/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import utilitaire.ConnectionBase;
import utilitaire.Fonction;

/**
 *
 * @author Jo Max
 */
public class Debauche {
    
        Fonction ray = new Fonction();
    
         int idEmp;
         
         
         
            public double getSalaireParHeureById(int idEmp)
        {
         	ConnectionBase test=new ConnectionBase();
		double result = 0;
		String msg="";
		String sql ="select salaireparheure from employe join salaireh on salaireh.idemploye=employe.idemploye where salaireh.idemploye='"+idEmp+"'";                                                   
		try
		{  
			test.getConnPostgresql();
			java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
			ResultSet rs=stmt.executeQuery(sql);
                        
			
	           while(rs.next()){
                Employe emp = new Employe();
          
               result = rs.getDouble("salaireparheure");
    
               
                
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
