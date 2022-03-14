/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.EmployeDAO;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import modele.Categorie;
import modele.Employe;
import utilitaire.ConnectionBase;

/**
 *
 * @author Jo Max
 */
public class EmployeService {

    EmployeDAO edao = new EmployeDAO();

    public void checkEmp(String emp) throws SQLException {
        int matrcin = Integer.parseInt(emp.trim());
        edao.CheckEmploye(matrcin);
    }

    public void CheckEmploye(String matrcin) throws Exception {
        ConnectionBase test = new ConnectionBase();
        String sql = "select * from Employe where UPPER(matricule)=UPPER('" + matrcin + "') or cin='" + matrcin + "'";
        String msg = "";
        test.getConnPostgresql();
        java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        int i = 0;
        while (rs.next()) {
            i++;
        }
        if (i == 0) {
            throw new Exception("L' employe  n' existe pas");
        }
        (test.getConnPostgresql()).close();
    }

    public void save(String idcategorie, String nom, String prenom, String cin, String contact, String datenaissance) throws Exception {
        int icin = Integer.parseInt(cin.trim());
        int iidcategorie = Integer.parseInt(idcategorie.trim());
        Categorie c = new Categorie(iidcategorie);
        Date date = Date.valueOf(datenaissance);
        Employe e = new Employe(iidcategorie, nom, prenom, date, icin, contact, c);
        edao.Save(e);
    }

    public void update(String idEm, String idcategorie, String nom, String prenom, String cin, String contact, String datenaissance) throws Exception {
        int icin = Integer.parseInt(cin.trim());
        int iidcategorie = Integer.parseInt(idcategorie.trim());
        int idEmploye = Integer.parseInt(idEm.trim());
        Categorie c = new Categorie(iidcategorie);
        Date date = Date.valueOf(datenaissance);
        Employe e = new Employe(idEmploye, nom, prenom, date, icin, contact, c);
        edao.Update(e);
    }

    public Employe findById(String id) throws SQLException {
        int idEmploye = Integer.parseInt(id.trim());
        return edao.findById(idEmploye);
    }

}
