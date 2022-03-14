/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import modele.Categorie;
import utilitaire.ConnectionBase;

/**
 *
 * @author Jo Max
 */
public class CategorieDAO {

    public ArrayList<Categorie> findAll() throws Exception {
        Connection connection = null;
        ConnectionBase connDB = null;
        Statement statement = null;
        String requete = "select * from categorie";
        ArrayList<Categorie> categories = new ArrayList<Categorie>();
        try {
            connDB = new ConnectionBase();
            connection = connDB.getConnPostgresql();
            statement = connection.createStatement();
            ResultSet rst = statement.executeQuery(requete);
            while (rst.next()) {
                Categorie c = new Categorie(rst.getInt("idCategorie"), rst.getString("poste"), rst.getInt("heurehebdo"), rst.getDouble("salaireheure"));
                categories.add(c);
            }
        } catch (Exception e) {
            throw e;

        } finally {
            if (connection != null) {
                connection.close();
            }
            if (statement != null) {
                statement.close();
            }
        }
        return categories;
    }

    public Categorie findById(int idcategorie) throws Exception {
        Connection connection = null;
        ConnectionBase connDB = null;
        PreparedStatement statement = null;
        String requete = "select * from categorie where idcategorie=?";
        Categorie c = null;
        try {
            connDB = new ConnectionBase();
            connection = connDB.getConnPostgresql();
            statement = connection.prepareStatement(requete);
            statement.setInt(1, idcategorie);
            ResultSet rst = statement.executeQuery(requete);
            while (rst.next()) {
                c = new Categorie(rst.getInt("idCategorie"), rst.getString("poste"), rst.getInt("heurehebdo"), rst.getDouble("salaireheure"));
            }
        } catch (Exception e) {
            throw e;

        } finally {
            if (connection != null) {
                connection.close();
            }
            if (statement != null) {
                statement.close();
            }
        }
        return c;
    }

    public Categorie findById(int idcategorie, Connection connection) throws Exception {
        Categorie c = null;
        String requete = "select * from categorie where idcategorie=?";
        PreparedStatement statement = connection.prepareStatement(requete);
        statement.setInt(1, idcategorie);
        ResultSet rst = statement.executeQuery();
        while (rst.next()) {
            c = new Categorie(rst.getInt("idCategorie"), rst.getString("poste"), rst.getInt("heurehebdo"), rst.getDouble("salaireheure"));
        }
        return c;
    }
}
