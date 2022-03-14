/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

import java.sql.ResultSet;
import java.util.ArrayList;
import utilitaire.ConnectionBase;

/**
 *
 * @author Jo Max
 */
public class ElementPaie {
         
        int idEmploye;
        int mois;
        int annee;
        String  libelle;
        Double  gain   ;
        Double  retenu;

    public int getMois() {
        return mois;
    }

    public void setMois(int mois) {
        this.mois = mois;
    }

    public int getAnnee() {
        return annee;
    }

    public void setAnnee(int annee) {
        this.annee = annee;
    }

    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }

    public Double getGain() {
        return gain;
    }

    public void setGain(Double gain) {
        this.gain = gain;
    }

    public Double getRetenu() {
        return retenu;
    }

    public void setRetenu(Double retenu) {
        this.retenu = retenu;
    }
    

           public double getNetApayer()
            {
                  return this.getGain()-this.getRetenu();
      
            }        
                   

        
        

    public int getIdEmploye() {
        return idEmploye;
    }

    public void setIdEmploye(int idEmploye) {
        this.idEmploye = idEmploye;
    }
        
 
      
       
}
