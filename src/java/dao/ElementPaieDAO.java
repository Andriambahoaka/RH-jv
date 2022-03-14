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
import modele.ElementPaie;
import utilitaire.ConnectionBase;

/**
 *
 * @author Jo Max
 */
public class ElementPaieDAO {
    
    
            public void insertElementPaie(int idemploye,int mois,int annee,String libelle,double gain,double retenu) throws SQLException
        {
          
             	        ConnectionBase test=new ConnectionBase();
                        Connection connection = test.getConnPostgresql();
			java.sql.Statement stmt = connection.createStatement();
                    
                        String req = "insert into elementpaie(idemploye,mois,annee,libelle,gain,retenu,etat) values ('"+idemploye+"','"+mois+"','"+annee+"','"+libelle+"','"+gain+"','"+retenu+"',0)";                     
                        stmt.executeUpdate(req); 
                     
	                
                        connection.close();

        }
        
            
                
    
          public double getTotalRetenu(int idEmp,int mois, int annee)
        {
         	ConnectionBase test=new ConnectionBase();
		double result =0;
		String msg="";
		String sql ="select sum(retenu) as totalretenu from elementpaie where  idEmploye ='"+idEmp+"' and mois ='"+mois+"' and annee = '"+annee+"'";
		try
		{  
			test.getConnPostgresql();
			java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
			ResultSet rs=stmt.executeQuery(sql);
                        
			
	           while(rs.next()){
                  result = rs.getDouble("totalretenu");
    
                
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
    

    
    
    
        public double  getTotalGain(int idEmp,int mois, int annee)
        {
         	ConnectionBase test=new ConnectionBase();
		double result = 0;
		String msg="";
		String sql ="select sum(gain) as totalgain from elementpaie where idEmploye = '"+idEmp+"' and mois ='"+mois+"' and annee = '"+annee+"'";
                
		try
		{  
			test.getConnPostgresql();
			java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
			ResultSet rs=stmt.executeQuery(sql);
                        
		   	
	           while(rs.next()){
                  result= rs.getDouble("totalgain");

                       }
	        
			(test.getConnPostgresql()).close();
			msg="Mande";
                        System.out.println(msg);
		}
		catch(Exception e)
		{ 
			msg=e.getMessage();
			e.printStackTrace();
		}  
                
		return result;
        }

       public ArrayList<ElementPaie> getEditionMoisAnnee(int idEmploye,int mois, int annee)
        {
         	ConnectionBase test=new ConnectionBase();
		ArrayList<ElementPaie> result = new ArrayList<>();
		String msg="";
		String sql ="select * from elementpaie where idemploye= '"+idEmploye+"' and mois ='"+mois+"' and annee = '"+annee+"'";
		try
		{  
			test.getConnPostgresql();
			java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
			ResultSet rs=stmt.executeQuery(sql);
                        
			
	           while(rs.next()){
                ElementPaie emp = new ElementPaie();
          
                emp.setMois(rs.getInt("mois"));
                 emp.setAnnee(rs.getInt("annee"));
                  emp.setLibelle(rs.getString("libelle"));
                   emp.setGain(rs.getDouble("gain"));
                    emp.setRetenu(rs.getDouble("retenu"));
    
                result.add(emp);
                
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
       
        public ArrayList<ElementPaie> getAllElementPaie(int mois, int annee)
        {
         	ConnectionBase test=new ConnectionBase();
		ArrayList<ElementPaie> result = new ArrayList<>();
		String msg="";
		String sql ="select idemploye,mois,annee,sum(gain) as gain, sum(retenu) as retenu from elementpaie where mois='"+mois+"' and annee='"+annee+"' group by idemploye,mois,annee";
		try
		{  
			test.getConnPostgresql();
			java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
			ResultSet rs=stmt.executeQuery(sql);
                        
			
	           while(rs.next()){
                ElementPaie emp = new ElementPaie();
                emp.setIdEmploye(rs.getInt("idEmploye"));
                emp.setMois(rs.getInt("mois"));
                 emp.setAnnee(rs.getInt("annee"));
                   emp.setGain(rs.getDouble("gain"));
                    emp.setRetenu(rs.getDouble("retenu"));
    
                result.add(emp);
                
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
          
          
        public ArrayList<Integer> getIdEmployeDistinct()
        {
        
                
                ConnectionBase test=new ConnectionBase();
		ArrayList<Integer> result = new ArrayList<>();
		String msg="";
		String sql ="select distinct idemploye from elementpaie";
		try
		{  
			test.getConnPostgresql();
			java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
			ResultSet rs=stmt.executeQuery(sql);
                        
			
	           while(rs.next()){
               int id=rs.getInt("idemploye");
    
                result.add(id);
                
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
            public ArrayList<ElementPaie> getElementPaieByidEmploye(int idEmp,int mois, int annee)
        {
         	ConnectionBase test=new ConnectionBase();
		ArrayList<ElementPaie> result = new ArrayList<>();
		String msg="";
		String sql ="select * from elementpaie where idEmploye= '"+idEmp+"' and mois='"+mois+"' and annee='"+annee+"'";
		try
		{  
			test.getConnPostgresql();
			java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
			ResultSet rs=stmt.executeQuery(sql);
                        
			
	           while(rs.next()){
                ElementPaie emp = new ElementPaie();
                emp.setIdEmploye(rs.getInt("idEmploye"));
                emp.setMois(rs.getInt("mois"));
                 emp.setAnnee(rs.getInt("annee"));
                  emp.setLibelle(rs.getString("libelle"));
                   emp.setGain(rs.getDouble("gain"));
                    emp.setRetenu(rs.getDouble("retenu"));
    
                result.add(emp);
                
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
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
     public int getIdEmp()
     {
       
                 ConnectionBase test=new ConnectionBase();
		int[] result = new int[2];
		String msg="";
		String sql ="select distinct idEmploye from elementpaie";
                int i =0;
                
		try
		{  
			test.getConnPostgresql();
			java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
			ResultSet rs=stmt.executeQuery(sql);
                      
		   	
	               while(rs.next()){
                      
                           
                           
                           i++;
                  
                       

                       }
	        
			(test.getConnPostgresql()).close();
			msg="Mande";
                       
		}
		catch(Exception e)
		{ 
			msg=e.getMessage();
			e.printStackTrace();
		}  
                
		return i;
     
     
     }
    
}
