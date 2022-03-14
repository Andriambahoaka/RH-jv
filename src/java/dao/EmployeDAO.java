/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import modele.Employe;
import utilitaire.ConnectionBase;

/**
 *
 * @author Jo Max
 */
public class EmployeDAO {

    public Employe getEmployeByMatricule(String matr) {
        ConnectionBase test = new ConnectionBase();
        Employe emp = new Employe();
        String msg = "";
        String sql = "select * from Employe where matricule= '" + matr + "'";
        try {
            test.getConnPostgresql();
            java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                emp.setIdEmploye(rs.getInt("idEmploye"));
                emp.setNom(rs.getString("nom"));
                emp.setPrenom(rs.getString("prenom"));
                emp.setCIN(rs.getInt("cin"));
                emp.setContact(rs.getString("Contact"));
            }
            (test.getConnPostgresql()).close();
            msg = "Mande";
        } catch (SQLException e) {
            msg = e.getMessage();
        }

        return emp;
    }

    public String getHeureEntree(int idemploye) {
        ConnectionBase test = new ConnectionBase();
        String hentr = "";
        String sql = "select heureentree from employe join poste on employe.idposte= poste.idposte where idemploye='" + idemploye + "'";
        try {
            test.getConnPostgresql();
            java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                hentr = rs.getString("heureentree");
            }
            (test.getConnPostgresql()).close();
        } catch (Exception e) {
            e.getMessage();
            e.printStackTrace();
        }
        return hentr;
    }

    public String getHeureSortie(int idemploye) {
        ConnectionBase test = new ConnectionBase();
        String hentr = "";
        String sql = "select heuresortie from employe join poste on employe.idposte= poste.idposte where idemploye='" + idemploye + "'";
        try {
            test.getConnPostgresql();
            java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                hentr = rs.getString("heuresortie");
            }
            (test.getConnPostgresql()).close();

        } catch (Exception e) {

            e.getMessage();
            e.printStackTrace();
        }
        return hentr;

    }

    public ArrayList<Employe> getEmployeByPoste(String poste) {
        ConnectionBase test = new ConnectionBase();
        ArrayList<Employe> result = new ArrayList<>();
        String msg = "";
        String sql = "select nom,prenom,matricule from Employe join poste on Employe.idPoste=poste.idPoste where Nomposte='" + poste + "'";

        if (poste.compareTo("Tous") == 0) {
            sql = "select nom,prenom,matricule from Employe join poste on Employe.idPoste=poste.idPoste where true";
        }

        try {
            test.getConnPostgresql();
            java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                Employe emp = new Employe();

                emp.setNom(rs.getString("nom"));
                emp.setPrenom(rs.getString("prenom"));
                //emp.setMatric(rs.getString("matricule"));

                result.add(emp);

            }

            (test.getConnPostgresql()).close();
            msg = "Mande";
        } catch (Exception e) {
            msg = e.getMessage();
            e.printStackTrace();
        }
        return result;
    }

    public String getMatrById(int id) {
        ConnectionBase test = new ConnectionBase();
        String k = "";
        String msg = "";
        String sql = "select matricule from employe where  idemploye ='" + id + "'";
        try {
            test.getConnPostgresql();
            java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                k = rs.getString("matricule");
            }
            (test.getConnPostgresql()).close();
            msg = "Mande";
        } catch (Exception e) {
            msg = e.getMessage();
            e.printStackTrace();
        }
        return k;
    }

    public Employe findById(int idEmploye) throws SQLException {
        ConnectionBase connDB = null;
        Connection connection = null;
        PreparedStatement stmt = null;
        Employe result = null;
        CategorieDAO cdao = new CategorieDAO();
        String msg = "";
        String sql = "select * from Employe where idemploye=?";
        try {
            connDB = new ConnectionBase();
            connection = connDB.getConnPostgresql();
            stmt = connection.prepareStatement(sql);
            stmt.setInt(1, idEmploye);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                result = new Employe(rs.getInt("idEmploye"), rs.getString("nom"), rs.getString("prenom"), rs.getDate("datenaissance"), rs.getInt("cin"), rs.getString("contact"), cdao.findById(rs.getInt("idcategorie"), connection));
            }
        } catch (Exception e) {
            msg = e.getMessage();
            e.printStackTrace();
        } finally {
            if (connection != null) {
                connection.close();
            }
            if (stmt != null) {
                stmt.close();
            }
        }
        return result;
    }

    public Employe findById(int idEmploye, Connection connection) throws SQLException, Exception {
        PreparedStatement stmt = null;
        Employe result = null;
        CategorieDAO cdao = new CategorieDAO();
        String msg = "";
        String sql = "select * from Employe where idemploye=?";;
        stmt = connection.prepareStatement(sql);
        stmt.setInt(1, idEmploye);
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            result = new Employe(rs.getInt("idEmploye"), rs.getString("nom"), rs.getString("prenom"), rs.getDate("datenaissance"), rs.getInt("cin"), rs.getString("contact"), cdao.findById(rs.getInt("idcategorie"), connection));
        }
        return result;
    }

    public Employe findByCin(int idEmploye, Connection connection) throws SQLException, Exception {
        PreparedStatement stmt = null;
        Employe result = null;
        CategorieDAO cdao = new CategorieDAO();
        String msg = "";
        String sql = "select * from Employe where cin=?";;
        stmt = connection.prepareStatement(sql);
        stmt.setInt(1, idEmploye);
        ResultSet rs = stmt.executeQuery();
        while (rs.next()) {
            result = new Employe(rs.getInt("idEmploye"), rs.getString("nom"), rs.getString("prenom"), rs.getDate("datenaissance"), rs.getInt("cin"), rs.getString("contact"), cdao.findById(rs.getInt("idcategorie"), connection));
        }
        return result;
    }
    
    public Employe CheckEmploye(int check) throws SQLException{
        ConnectionBase connDB = null;
        Connection connection = null;
        PreparedStatement stmt = null;
        Employe result = null;
        try {
            connDB = new ConnectionBase();
            connection = connDB.getConnPostgresql();
            result = findById(check,connection);
            if(result==null){
                result=findByCin(check,connection);
                if(result==null){
                     throw new Exception("l'employe n'existe pas");
                }
            }

        } catch (Exception e) {
            e.getMessage();
            e.printStackTrace();
        } finally {
            if (connection != null) {
                connection.close();
            }
            if (stmt != null) {
                stmt.close();
            }
        }
        return result;
    }

    public ArrayList<Employe> getAllEmploye() throws SQLException {
        ConnectionBase connDB = null;
        Connection connection = null;
        PreparedStatement stmt = null;
        ArrayList<Employe> result = new ArrayList<>();
        CategorieDAO cdao = new CategorieDAO();
        String msg = "";
        String sql = "select * from Employe";
        try {
            connDB = new ConnectionBase();
            connection = connDB.getConnPostgresql();
            stmt = connection.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Employe emp = new Employe(rs.getInt("idEmploye"), rs.getString("nom"), rs.getString("prenom"), rs.getDate("datenaissance"), rs.getInt("cin"), rs.getString("contact"), cdao.findById(rs.getInt("idcategorie"), connection));
                result.add(emp);
            }
            msg = "Mande";
        } catch (Exception e) {
            msg = e.getMessage();
            e.printStackTrace();
        } finally {
            if (connection != null) {
                connection.close();
            }
            if (stmt != null) {
                stmt.close();
            }
        }
        return result;
    }

    public ArrayList<String> getAllPoste() {
        ConnectionBase test = new ConnectionBase();
        ArrayList<String> result = new ArrayList<>();
        String msg = "";
        String sql = "select NomPoste from poste";
        try {
            test.getConnPostgresql();
            java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                String nomp = rs.getString("nomposte");
                result.add(nomp);
            }

            (test.getConnPostgresql()).close();
            msg = "Mande";
        } catch (Exception e) {
            msg = e.getMessage();
            e.printStackTrace();
        }
        return result;

    }

    public int getLastIdEmploye() {
        ConnectionBase test = new ConnectionBase();
        int i = 0;
        String msg = "";
        String sql = "select max(idemploye) as lastID from employe";
        try {
            test.getConnPostgresql();
            java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                i = rs.getInt("lastid");

            }

            (test.getConnPostgresql()).close();
            msg = "Mande";
        } catch (Exception e) {
            msg = e.getMessage();
            e.printStackTrace();
        }
        return i;

    }

    public void Save(Employe p) throws Exception {
        ConnectionBase connDB = null;
        Connection connection = null;
        PreparedStatement stmt = null;
        //int id = this.getLastIdEmploye() + 1;
        String requete = "INSERT INTO Employe(idcategorie,nom, prenom,cin,contact,datenaissance) VALUES (?,?,?,?,?,?)";
        // msg = req;

        try {
            connDB = new ConnectionBase();
            connection = connDB.getConnPostgresql();
            stmt = connection.prepareStatement(requete);
            stmt.setInt(1, p.getCategorie().getIdCategorie());
            stmt.setString(2, p.getNom());
            stmt.setString(3, p.getPrenom());
            stmt.setInt(4, p.getCIN());
            stmt.setString(5, p.getContact());
            stmt.setDate(6, p.getDateNaissance());
            stmt.executeQuery();

        } catch (Exception e) {
            e.getMessage();
        } finally {
            if (connection != null) {
                connection.close();
            }
            if (stmt != null) {
                stmt.close();
            }
        }

//        if (idposte == 0 || nom.isEmpty() || prenom.isEmpty() || cin.isEmpty() || contact.isEmpty()) {
//
//            throw new Exception("Completer tous les champs");
//
//        }
    }

    public void Update(Employe p) throws Exception {
        ConnectionBase connDB = null;
        Connection connection = null;
        PreparedStatement stmt = null;
        String requete = "update employe set idcategorie=?,nom=?,prenom=?,cin=?,contact=?,datenaissance=? where idEmploye=?";
        try {
            connDB = new ConnectionBase();
            connection = connDB.getConnPostgresql();
            stmt = connection.prepareStatement(requete);
            stmt.setInt(1, p.getCategorie().getIdCategorie());
            stmt.setString(2, p.getNom());
            stmt.setString(3, p.getPrenom());
            stmt.setInt(4, p.getCIN());
            stmt.setString(5, p.getContact());
            stmt.setDate(6, p.getDateNaissance());
            stmt.setInt(7, p.getIdEmploye());
            stmt.executeQuery();
        } catch (Exception e) {
            e.getMessage();
        } finally {
            if (connection != null) {
                connection.close();
            }
            if (stmt != null) {
                stmt.close();
            }
        }
    }

    public double getSalaireParHeure(int idemploye) {

        ConnectionBase test = new ConnectionBase();
        double hentr = 0;
        String sql = "select salaireparheure from employe join salaireh on salaireh.idsalaire=employe.idposte where idemploye='" + idemploye + "'";
        try {

            test.getConnPostgresql();
            java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {

                hentr = rs.getDouble("salaireparheure");

            }
            (test.getConnPostgresql()).close();

        } catch (Exception e) {

            e.getMessage();
            e.printStackTrace();

        }

        return hentr;

    }

    public int getIdPosteByNom(String poste) {

        ConnectionBase test = new ConnectionBase();
        int k = 0;
        String msg = "";
        String sql = "select idposte from poste where nomposte='" + poste + "'";
        try {
            test.getConnPostgresql();
            java.sql.Statement stmt = (test.getConnPostgresql()).createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {

                k = rs.getInt("idposte");

            }

            (test.getConnPostgresql()).close();
            msg = "Mande";
        } catch (Exception e) {
            msg = e.getMessage();
            e.printStackTrace();
        }
        return k;

    }

    public double getSalaireParMois(int idemploye) {
        Double parH = getSalaireParHeure(idemploye);
        String diffH = diffHeure(this.getHeureEntree(idemploye), this.getHeureSortie(idemploye));
        int dureeParJour = Integer.parseInt(diffH.split(":")[0]);
        Double parMois = parH * 20 * dureeParJour;
        return parMois;

    }

    public String diffHeure(String debut, String fini) {

        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
        String result = "";
        try {
            java.util.Date deb = sdf.parse(debut);
            java.util.Date fin = sdf.parse(fini);
            int minutes;
            int hours;
            if (fin.getMinutes() < deb.getMinutes()) {
                minutes = deb.getMinutes() - fin.getMinutes();
                hours = fin.getHours() - deb.getHours() - 1;
            } else {
                minutes = fin.getMinutes() - deb.getMinutes();
                hours = fin.getHours() - deb.getHours();
            }
            System.out.println(hours + ":" + minutes);
            result = hours + ":" + minutes;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;

    }

}
