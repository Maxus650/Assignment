/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.Entity.Student;
import za.ac.bl.StudentFacadeLocal;

/**
 *
 * @author User
 */
public class SearchServlet extends HttpServlet {
  @EJB
   private StudentFacadeLocal run;
 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       Long id=Long.parseLong(request.getParameter("Id"));
       
        Student s =run.find(id);
        
        request.setAttribute("Student", s);
        
         RequestDispatcher rsd=request.getRequestDispatcher("ResultFound.jsp");
        rsd.forward(request, response);
    }

 

}
