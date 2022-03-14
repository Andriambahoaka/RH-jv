/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Jo Max
 */
public class Pointage {
    
       int idPointage;
       Date datePointage;
       String HeurePointage;
       String type;

    public int getIdPointage() {
        return idPointage;
    }

    public void setIdPointage(int idPointage) {
        this.idPointage = idPointage;
    }

    public Date getDatePointage() {
        return datePointage;
    }

    public void setDatePointage(Date datePointage) {
        this.datePointage = datePointage;
    }

    public String getHeurePointage() {
        return HeurePointage;
    }

    public void setHeurePointage(String HeurePointage) {
        this.HeurePointage = HeurePointage;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
       
   
        
}
