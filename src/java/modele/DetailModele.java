/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

import dao.EmployeDAO;
import java.util.ArrayList;
import utilitaire.Fonction;

/**
 *
 * @author Jo Max
 */
public class DetailModele {
    
     String Matricule;
     String nom;
     String prenom;
     String heureLundi;
     String heureMardi;
     String heureMercredi;
     String heureJeudi;
     String heureVendredi;
     String retardLundi;
     String retardMardi;
     String retardMercredi;
     String retardJeudi;
     String retardVendredi;

    public String getRetardLundi() {
        return retardLundi;
    }

    public void setRetardLundi(String retardLundi) {
        this.retardLundi = retardLundi;
    }

    public String getRetardMardi() {
        return retardMardi;
    }

    public void setRetardMardi(String retardMardi) {
        this.retardMardi = retardMardi;
    }

    public String getRetardMercredi() {
        return retardMercredi;
    }

    public void setRetardMercredi(String retardMercredi) {
        this.retardMercredi = retardMercredi;
    }

    public String getRetardJeudi() {
        return retardJeudi;
    }

    public void setRetardJeudi(String retardJeudi) {
        this.retardJeudi = retardJeudi;
    }

    public String getRetardVendredi() {
        return retardVendredi;
    }

    public void setRetardVendredi(String retardVendredi) {
        this.retardVendredi = retardVendredi;
    }

    public DetailModele(String Matricule, String nom, String prenom, String heureLundi, String heureMardi, String heureMercredi, String heureJeudi, String heureVendredi, String retardLundi, String retardMardi, String retardMercredi, String retardJeudi, String retardVendredi) {
        this.Matricule = Matricule;
        this.nom = nom;
        this.prenom = prenom;
        this.heureLundi = heureLundi;
        this.heureMardi = heureMardi;
        this.heureMercredi = heureMercredi;
        this.heureJeudi = heureJeudi;
        this.heureVendredi = heureVendredi;
        this.retardLundi = retardLundi;
        this.retardMardi = retardMardi;
        this.retardMercredi = retardMercredi;
        this.retardJeudi = retardJeudi;
        this.retardVendredi = retardVendredi;
    }

    public DetailModele(String Matricule, String nom, String prenom, String heureLundi, String heureMardi, String retardLundi, String retardMardi) {
        this.Matricule = Matricule;
        this.nom = nom;
        this.prenom = prenom;
        this.heureLundi = heureLundi;
        this.heureMardi = heureMardi;
        this.retardLundi = retardLundi;
        this.retardMardi = retardMardi;
    }

     

    public String getMatricule() {
        return Matricule;
    }

    public void setMatricule(String Matricule) {
        this.Matricule = Matricule;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getHeureLundi() {
        return heureLundi;
    }

    public void setHeureLundi(String heureLundi) {
        this.heureLundi = heureLundi;
    }

    public String getHeureMardi() {
        return heureMardi;
    }

    public void setHeureMardi(String heureMardi) {
        this.heureMardi = heureMardi;
    }

    public String getHeureMercredi() {
        return heureMercredi;
    }

    public void setHeureMercredi(String heureMercredi) {
        this.heureMercredi = heureMercredi;
    }

    public String getHeureJeudi() {
        return heureJeudi;
    }

    public void setHeureJeudi(String heureJeudi) {
        this.heureJeudi = heureJeudi;
    }

    public String getHeureVendredi() {
        return heureVendredi;
    }

    public void setHeureVendredi(String heureVendredi) {
        this.heureVendredi = heureVendredi;
    }

    
     
     public DetailModele Fill(DetailModele ray)
     {
           Fonction f = new Fonction();
           EmployeDAO emp = new EmployeDAO();
           if(ray.getHeureLundi().isEmpty() )
           {
               if(!ray.getRetardLundi().isEmpty()){
                  // ray.setHeureLundi(f.addHeure(emp.getHeureEntree(emp.getIdBy(ray.getMatricule())), ray.getRetardLundi()));
               }else{
                   ray.setHeureLundi("00:00");
               }
           }
           
           if(ray.getHeureMardi().isEmpty() )
           {
               if(!ray.getRetardMardi().isEmpty()){
                   //ray.setHeureMardi(f.addHeure(emp.getHeureEntree(emp.getIdBy(ray.getMatricule())), ray.getRetardMardi()));
               }else{
                   ray.setHeureMardi("00:00");
               }
           }
           
           
           
           else{
              
               ray.setRetardLundi(f.calculRet(ray.getMatricule(),ray.getHeureLundi()));
               ray.setRetardLundi(f.calculRet(ray.getMatricule(),ray.getHeureMardi()));
             

           } 
      return ray;
     }
     
    
     
     
   
    
    
}
