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

import dao.EmployeDAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modele.Employe;
import modele.Pointage;

public class Fonction {

    public double totaliz(ArrayList<Double> ray) {
        double result = 0;
        for (int i = 0; i < ray.size(); i++) {
            result = result + ray.get(i);
        }

        return result;
    }

    public String totalheure(ArrayList<String> ray) {
        int second = 0;
        for (int i = 0; i < ray.size(); i++) {
            second = second + this.toSecond(ray.get(i));

        }
        return this.toHeureMin(second);

    }

    public int getAndro(String date) {
        String frfr[] = date.split("/");
        int i = Integer.parseInt(frfr[0]);
        return i;

    }

    public int getVolana(String date) {
        String sp = "-";

        if (date.contains("/")) {
            sp = "/";
        }
        String frfr[] = date.split(sp);
        int i = Integer.parseInt(frfr[1].trim());
        return i;

    }

    public int getTaona(String date) {
        String sp = "-";

        if (date.contains("/")) {
            sp = "/";
        }
        String frfr[] = date.split(sp);
        int i = Integer.parseInt(frfr[2]);
        return i;

    }

    public int toSecond(String heure) {
        String[] splitH = heure.split(":");
        int h = Integer.parseInt(splitH[0]) * 3600;
        int min = Integer.parseInt(splitH[1]) * 60;
        return h + min;
    }

    public String toHeureMin(int second) {
        int heure = second / 3600;
        int min = (second % 3600) / 60;
        String ora = "";
        String minitra = "";
        if (heure < 10) {
            ora = "0" + heure;
        }
        if (min < 10) {
            minitra = "0" + min;
        }
        return ora + ":" + minitra;

    }

    public float toHeure(float second) {
        float heure = second / 3600;
        return heure;

    }

    public String calculRet(String matr, String fini) {
        EmployeDAO edao = new EmployeDAO();
        // String debut=edao.getHeureEntree(edao.getIdBy(matr)); 
        String debut = "";
        int deb = toSecond(debut);
        int fin = toSecond(fini);
        int reste = fin - deb;
        String result = "";
        if (reste <= 0) {
            result = "00:00";
        } else {

            result = toHeureMin(reste);
        }

        return result;
    }

    public String addHeure(String ray, String roa) {

        int un = toSecond(ray);
        int deux = toSecond(roa);
        int reste = un + deux;
        String result = "";
        if (reste >= 0) {
            result = "00:00";
        } else {

            result = toHeureMin(reste);
        }
        return result;
    }

    public String ChangeFormatDate(String date) {

        String frfr[] = date.split("-");
        String h = frfr[2] + "/" + frfr[1] + "/" + frfr[0];
        return h;

    }

    public String DateTime(String huhu) {

        String balou[] = huhu.split(" ");
        String emp = balou[0];
        return ChangeFormatDate(emp);

    }

    public String[] AfficheMois() {
        String[] Mois = new String[12];
        Mois[0] = "Janvier";
        Mois[1] = "Fevrier";
        Mois[2] = "Mars";
        Mois[3] = "Avril";
        Mois[4] = "Mai";
        Mois[5] = "Juin";
        Mois[6] = "Juillet";
        Mois[7] = "Aout";
        Mois[8] = "Septembre";
        Mois[9] = "Octobre";
        Mois[10] = "Novembre";
        Mois[11] = "Décembre";
        return Mois;
    }

    public String AfficheMoisById(int mois) {
        String[] Mois = new String[12];
        Mois[0] = "Janvier";
        Mois[1] = "Fevrier";
        Mois[2] = "Mars";
        Mois[3] = "Avril";
        Mois[4] = "Mai";
        Mois[5] = "Juin";
        Mois[6] = "Juillet";
        Mois[7] = "Aout";
        Mois[8] = "Septembre";
        Mois[9] = "Octobre";
        Mois[10] = "Novembre";
        Mois[11] = "Decembre";
        return Mois[mois];

    }

    public int getIdByMois(String volana) {

        String[] Mois = new String[12];
        int k = 0;
        Mois[0] = "Janvier";
        Mois[1] = "Fevrier";
        Mois[2] = "Mars";
        Mois[3] = "Avril";
        Mois[4] = "Mai";
        Mois[5] = "Juin";
        Mois[6] = "Juillet";
        Mois[7] = "Aout";
        Mois[8] = "Septembre";
        Mois[9] = "Octobre";
        Mois[10] = "Novembre";
        Mois[11] = "Decembre";

        for (int i = 0; i < Mois.length; i++) {
            if (Mois[i].compareTo(volana) == 0) {
                k = i + 1;
            }

        }

        return k;

    }

    public boolean CheckJourFerie(String date) throws SQLException, Exception {
        ConnectionBase test = new ConnectionBase();

        int jour = getAndro(date);
        int mois = getVolana(date);

        String sql = "select * from JourFerie where Mois= '" + mois + "' and Jour='" + jour + "'";
        String msg = "";

        test.getConnPostgresql();
        java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();

        ResultSet rs = stmt.executeQuery(sql);

        int i = 0;
        while (rs.next()) {
            i++;
        }

        if (i == 0) {
            return false;
        }

        (test.getConnPostgresql()).close();

        return true;

    }

}
