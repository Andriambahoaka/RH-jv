/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

/**
 *
 * @author Jo Max
 */
public class Categorie {
    private int idCategorie;
    private String poste;
    private int heureHebdo;
    private double salaireHeure;

    public Categorie(int idCategorie, String poste, int heureHebdo, double salaireHeure) {
        this.idCategorie = idCategorie;
        this.poste = poste;
        this.heureHebdo = heureHebdo;
        this.salaireHeure = salaireHeure;
    }
        public Categorie(int idCategorie) {
        this.idCategorie = idCategorie;

    }
    

    public int getIdCategorie() {
        return idCategorie;
    }

    public void setIdCategorie(int idCategorie) {
        this.idCategorie = idCategorie;
    }

    public String getPoste() {
        return poste;
    }

    public void setPoste(String poste) {
        this.poste = poste;
    }

    public int getHeureHebdo() {
        return heureHebdo;
    }

    public void setHeureHebdo(int heureHebdo) {
        this.heureHebdo = heureHebdo;
    }

    public double getSalaireHeure() {
        return salaireHeure;
    }

    public void setSalaireHeure(double salaireHeure) {
        this.salaireHeure = salaireHeure;
    }
      
}
