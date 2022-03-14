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
public class Modele {

    int idModele;
    String NomModele;

    public int getIdModele() {
        return idModele;
    }

    public void setIdModele(int idModele) {
        this.idModele = idModele;
    }

    public String getNomModele() {
        return NomModele;
    }

    public void setNomModele(String NomModele) {
        this.NomModele = NomModele;
    }

    public Modele(int idModele, String NomModele) {
        this.idModele = idModele;
        this.NomModele = NomModele;
    }
}
