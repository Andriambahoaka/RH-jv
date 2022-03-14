/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Time;
import java.util.ArrayList;

/**
 *
 * @author Jo Max
 */
public class Conge {

    int idEmploye;
    int idConge;
    Date dateSaisie;
    Date datedebut;
    Time heureDebut;
    Date datefin;
    Time heurefin;

    public int getIdConge() {
        return idConge;
    }

    public void setIdConge(int idConge) {
        this.idConge = idConge;
    }

    public Conge(int idEmploye, Date dateSaisie, Date datedebut, Time heureDebut, Date datefin, Time heurefin) {
        this.idEmploye = idEmploye;
        this.dateSaisie = dateSaisie;
        this.datedebut = datedebut;
        this.heureDebut = heureDebut;
        this.datefin = datefin;
        this.heurefin = heurefin;
    }

    public Conge() {

    }

    public int getIdEmploye() {
        return idEmploye;
    }

    public void setIdEmploye(int idEmploye) {
        this.idEmploye = idEmploye;
    }

    public Date getDateSaisie() {
        return dateSaisie;
    }

    public void setDateSaisie(Date dateSaisie) {
        this.dateSaisie = dateSaisie;
    }

    public Date getDatedebut() {
        return datedebut;
    }

    public void setDatedebut(Date datedebut) {
        this.datedebut = datedebut;
    }

    public Time getHeureDebut() {
        return heureDebut;
    }

    public void setHeureDebut(Time heureDebut) {
        this.heureDebut = heureDebut;
    }

    public Date getDatefin() {
        return datefin;
    }

    public void setDatefin(Date datefin) {
        this.datefin = datefin;
    }

    public Time getHeurefin() {
        return heurefin;
    }

    public void setHeurefin(Time heurefin) {
        this.heurefin = heurefin;
    }

}
