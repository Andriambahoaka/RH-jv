/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import modele.Conge;
import service.CongeService;
import utilitaire.ConnectionBase;

/**
 *
 * @author Jo Max
 */
public class CongeDAO {
        CongeService cs= new CongeService();
      
    public ArrayList<Conge> getCongeAValide()
    {
        ConnectionBase test=new ConnectionBase();
        ArrayList<Conge> result = new ArrayList<>();
        String msg="";
        String sql ="select * from conge where idconge not in (select idconge from rejet union select idconge from validation)";
        try{  
            test.getConnPostgresql();
            java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
            ResultSet rs=stmt.executeQuery(sql);
	
	           while(rs.next()){
                Conge con = new Conge();
                con.setIdConge(rs.getInt("idConge"));
                con.setIdEmploye(rs.getInt("idemploye"));
                con.setDateSaisie(rs.getDate("datesaisie"));
                con.setDatedebut(rs.getDate("datedebut"));
                con.setHeureDebut(rs.getTime("heuredebut"));
                con.setDatefin(rs.getDate("datefin"));
                con.setHeurefin(rs.getTime("heurefin"));
    
                result.add(con);
                
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
        public ArrayList<Conge> getCongeRejete()
    {
                ConnectionBase test=new ConnectionBase();
		ArrayList<Conge> result = new ArrayList<>();
		String msg="";
		String sql ="select idemploye,datesaisie,datedebut,heuredebut,datefin,heurefin from conge join rejet on rejet.idconge=conge.idconge";
		try
		{  
			test.getConnPostgresql();
			java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
			ResultSet rs=stmt.executeQuery(sql);
                        
			
	           while(rs.next()){
                Conge con = new Conge();
          
                con.setIdEmploye(rs.getInt("idemploye"));
                con.setDateSaisie(rs.getDate("datesaisie"));
                con.setDatedebut(rs.getDate("datedebut"));
                con.setHeureDebut(rs.getTime("heuredebut"));
                con.setDatefin(rs.getDate("datefin"));
                con.setHeurefin(rs.getTime("heurefin"));
    
                result.add(con);
                
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
    
       
    public ArrayList<Conge> getCongeValide()
    {
                ConnectionBase test=new ConnectionBase();
		ArrayList<Conge> result = new ArrayList<>();
		String msg="";
		String sql ="select conge.idconge,idemploye,datesaisie,datedebut,heuredebut,datefin,heurefin from conge join validation on validation.idconge=conge.idconge";
		try
		{  
			test.getConnPostgresql();
			java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
			ResultSet rs=stmt.executeQuery(sql);
                        
			
	           while(rs.next()){
                Conge con = new Conge();
                con.setIdConge(rs.getInt("idConge"));
                con.setIdEmploye(rs.getInt("idemploye"));
                con.setDateSaisie(rs.getDate("datesaisie"));
                con.setDatedebut(rs.getDate("datedebut"));
                con.setHeureDebut(rs.getTime("heuredebut"));
                con.setDatefin(rs.getDate("datefin"));
                con.setHeurefin(rs.getTime("heurefin"));
    
                result.add(con);
                
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
        
        
        
        
        
        
        
        
    
        public void insertConge(int idemploye,String datesaisie,String datedebut,String heuredebut,String datefin, String heurefin,String remarque) throws Exception
        {
         	ConnectionBase test=new ConnectionBase();

                Connection connection = test.getConnPostgresql();
                String msg="";
		if(idemploye==0 || datesaisie.isEmpty() || datedebut.isEmpty() || heuredebut.isEmpty() || datefin.isEmpty() || heurefin.isEmpty() )
                {
                
                   throw new Exception("Completer tous les champs");
                
                
                }
                cs.checkDateConge(datedebut, datefin);
                cs.EstConge(idemploye, datedebut, datefin);
                
			java.sql.Statement stmt = connection.createStatement();
                        String req = "insert into conge(idemploye,datesaisie,datedebut,heuredebut,datefin,heurefin,remarque) values ('"+idemploye+"','"+datesaisie+"','"+datedebut+"','"+heuredebut+"','"+datefin+"','"+heurefin+"','"+remarque+"')";                     
                        msg=req;
                        stmt.executeUpdate(req); 
                        connection.close();
            
        
       }
        
        
        public void insertRejet(int idconge) throws Exception
        {
         	ConnectionBase test=new ConnectionBase();
                Connection connection = test.getConnPostgresql();      
                java.sql.Statement stmt = connection.createStatement();
                String req = "insert into rejet(idconge,daterejet) values ('"+idconge+"','02/12/2007')";
                stmt.executeUpdate(req); 

                connection.close();
            
        
       }
        
         public void insertValidation(int idconge) throws Exception
        {
         	ConnectionBase test=new ConnectionBase();
                Connection connection = test.getConnPostgresql();
                java.sql.Statement stmt = connection.createStatement();
                String req = "insert into validation(idconge,datevalidation) values('"+idconge+"','12/02/2007');";
                stmt.executeUpdate(req); 
                connection.close();
       }
    
    
    
}
