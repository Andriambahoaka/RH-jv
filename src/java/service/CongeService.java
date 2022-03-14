/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.EmployeDAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import modele.Employe;
import utilitaire.ConnectionBase;

/**
 *
 * @author Jo Max
 */
public class CongeService {
       EmployeDAO emp= new EmployeDAO();
        public void checkDateConge(String datedebut, String datefin) throws Exception
     {
         SimpleDateFormat k= new SimpleDateFormat("yyyy-mm-dd");
         java.util.Date d1= k.parse(datedebut);
         java.util.Date d2= k.parse(datefin);
         if(d1.compareTo(d2)>=0)
         {
           throw new Exception("La date du début doit être avant la date fin");
         }
     
     }
     
     public void EstConge(int idemploye,String debut,String fin) throws SQLException, Exception
     {
              ConnectionBase test= new ConnectionBase();
              String matr=emp.getMatrById(idemploye);
              String sql="select matricule from Conge join employe on employe.idemploye=conge.idemploye where matricule='"+matr+"' and ((datedebut>='"+debut+"' and datefin <='"+debut+"') or (datedebut>='"+fin+"' and datefin<='"+fin+"'))";
              test.getConnPostgresql();
			java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
		
			ResultSet rs=stmt.executeQuery(sql);
                        
			    int i=0;
			    while(rs.next())
                            {
                               
                                 i ++;
                    
                            }
                            
                            if(i != 0)
                            {
                               throw new Exception("L' employe  est déjà en Conge");
                               
                            }
	        
			(test.getConnPostgresql()).close();
		
     
     }
     
    
}
