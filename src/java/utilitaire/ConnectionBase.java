/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Jo Max
 */
package utilitaire;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionBase{
      static Connection con=null;
      static String username="postgres";
      static String pwd="root";
      static String connURL="jdbc:postgresql://localhost:5432/Paie";
      
    public  Connection getConnPostgresql()
    {
        try
        {
            Class.forName("org.postgresql.Driver");
            con=DriverManager.getConnection(connURL,username,pwd);
        }catch(ClassNotFoundException | SQLException ex)
        {
            System.out.println(ex);
        }
        return con;
    }
}