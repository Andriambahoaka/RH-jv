/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author Mahery
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.EmployeService;

@WebServlet("/addEmploye")
public class employeController extends HttpServlet {

   EmployeService eservice = new EmployeService();

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      try {

         eservice.save(request.getParameter("idcategorie"), request.getParameter("nom"), request.getParameter("prenom"), request.getParameter("cin"), request.getParameter("contact"), request.getParameter("datenaissance"));
         
         response.sendRedirect("AllEmploye.jsp");
      } catch (Exception e) {
         e.printStackTrace();
      }
   }

   public void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {

      response.setContentType("text/html");

      PrintWriter out = response.getWriter();
      out.println("<html>");
      out.println("<head>");
      out.println("<title>Bonjour le monde !</title>");
      out.println("</head>");
      out.println("<body>");
      out.println("<h1>Bonjour le monde !</h1>");
      out.println("</body>");
      out.println("</html>");
   }
}
