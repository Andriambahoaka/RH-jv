/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilitaire;

import dao.CategorieDAO;
import dao.EmployeDAO;
import dao.PointageDAO;
import java.util.ArrayList;
import modele.Categorie;

/**
 *
 * @author JoMax
 */
public class Main {
    public static void main(String[] args) throws Exception
    {
        PointageDAO pdao = new PointageDAO();
        EmployeDAO edao=new EmployeDAO();
        CategorieDAO cdao = new CategorieDAO();
        ArrayList<Categorie> categories = cdao.findAll();
        //System.out.print(edao.getAllEmploye());
        edao.CheckEmploye(12354755);
    }
    
}
