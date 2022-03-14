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
public class Employe {

    int idEmploye;
    String Nom;
    String Prenom;
    Date dateNaissance;
    Categorie categorie;
    String Contact;
    int CIN;

    public Employe(int idEmploye, String Nom, String Prenom, Date dateNaissance, String Poste, Double SalairedeBase, String Matricule, int CIN) {
        this.idEmploye = idEmploye;
        this.Nom = Nom;
        this.Prenom = Prenom;
        this.dateNaissance = dateNaissance;
        this.CIN = CIN;
    }

    public Employe(int idEmploye, String Nom, String Prenom, Date dateNaissance, int CIN, String contact, Categorie categorie) {
        this.idEmploye = idEmploye;
        this.Nom = Nom;
        this.Prenom = Prenom;
        this.dateNaissance = dateNaissance;
        this.Contact = contact;
        this.CIN = CIN;
        this.categorie = categorie;
    }

    public Employe() {
    }

    public String getContact() {
        return Contact;
    }

    public void setContact(String Contact) {
        this.Contact = Contact;
    }

    public int getIdEmploye() {
        return idEmploye;
    }

    public void setIdEmploye(int idEmploye) {
        this.idEmploye = idEmploye;
    }

    public String getNom() {
        return Nom;
    }

    public void setNom(String Nom) {
        this.Nom = Nom;
    }

    public String getPrenom() {
        return Prenom;
    }

    public void setPrenom(String Prenom) {
        this.Prenom = Prenom;
    }

    public Date getDateNaissance() {
        return dateNaissance;
    }

    public void setDateNaissance(Date dateNaissance) {
        this.dateNaissance = dateNaissance;
    }
    
    public int getCIN() {
        return CIN;
    }

    public void setCIN(int CIN) {
        this.CIN = CIN;
    }

    public Categorie getCategorie() {
        return categorie;
    }

    public void setCategorie(Categorie categorie) {
        this.categorie = categorie;
    }
    
    

}
