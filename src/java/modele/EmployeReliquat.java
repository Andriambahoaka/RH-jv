/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

import java.sql.Date;

/**
 *
 * @author Jo Max
 */
public class EmployeReliquat extends Employe{
    
    int configuration=2;
    Date dateEmbauche;
    Double TotalCongéFait;
    Double Reliquat;

    public EmployeReliquat(int idEmploye, String Nom, String Prenom, Date dateNaissance, String Poste, Double SalairedeBase, String Matricule, int CIN) {
        super(idEmploye, Nom, Prenom, dateNaissance, Poste, SalairedeBase, Matricule, CIN);
    }
    
    
    
}
