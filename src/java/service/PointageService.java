/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.ElementPaieDAO;
import dao.EmployeDAO;
import dao.PointageDAO;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import modele.Employe;
import utilitaire.Fonction;
import modele.Pointage;

/**
 *
 * @author Jo Max
 */
public class PointageService {
    
        Fonction f= new Fonction();
        ElementPaieDAO eldao= new ElementPaieDAO();
        EmployeDAO edao= new EmployeDAO();

        public void checkRangEntree(int idEmploye) throws Exception{
            PointageDAO pdao= new PointageDAO();

            String ty= pdao.getLastPointage(idEmploye);
            if(ty.compareTo("Entree")==0)
            {
                throw new Exception("Vous devez sortir");
            }
        }

        public void checkRangSortie(int idEmploye) throws Exception{
            PointageDAO pdao= new PointageDAO();
            String ty= pdao.getLastPointage(idEmploye);
            if(ty.compareTo("Sortie")==0)
            {
                throw new Exception("Vous devez entrer");
            } 
        }

        public void CheckEntree(String date) throws Exception{
            PointageDAO pdao= new PointageDAO();

            ArrayList<Pointage> listPointage = pdao.getAllPointage(); 
            for (Pointage pointage : listPointage){

                String  ty= pointage.getType() ;
                if(Date.valueOf(date).compareTo(pointage.getDatePointage())==0 && ty.equalsIgnoreCase("Entree"))
                   throw new Exception("L' Employe   est   déjà    entré");

            }    
        } 
     
     
        public void CheckSortie(String date) throws Exception{
            PointageDAO pdao= new PointageDAO();
            
            ArrayList<Pointage> listPointage = pdao.getAllPointage();
            for (Pointage p: listPointage)
            {
                String  t = f.ChangeFormatDate(""+p.getDatePointage());
                String  ty= p.getType() ;
                if(t.compareTo(date) != 0  )
                {
                    throw new Exception(" Entrer   d'abord");
                }
            }
         
        }
     
         public void checkRetard (int idemploye,String oraP,String dateRetard) throws SQLException, Exception {
             PointageDAO pdao= new PointageDAO();
             String dateRet =f.ChangeFormatDate(dateRetard);
             int mois = f.getVolana(dateRet);
             int annee= f.getTaona(dateRetard);
             Employe t = new Employe();
             String ora=edao.getHeureEntree(idemploye); 
             int entree=f.toSecond(ora);
             int hpointe=f.toSecond(oraP);

             if(entree<hpointe)
             {  
                double retenu = edao.getSalaireParHeure(idemploye)*(f.toHeure(hpointe-entree));
                String retard =f.toHeureMin(hpointe-entree);
                pdao.insertRetard(idemploye,oraP,dateRetard);
                eldao.insertElementPaie(idemploye, mois,annee,"Retard",0,retenu);   
             }
        }


          
     
     
               
               
               
}
