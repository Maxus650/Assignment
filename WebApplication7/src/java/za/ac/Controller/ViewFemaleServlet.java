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
import za.ac.bl.StudentFacadeLocal;

/**
 *
 * @author User
 */
public class ViewFemaleServlet extends HttpServlet {

   @EJB
   private StudentFacadeLocal run;



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
       int Count = run.cntAllfemales();
        request.setAttribute("Count",Count);
        
         RequestDispatcher rsd=request.getRequestDispatcher("ResultCount.jsp");
        rsd.forward(request, response);
        
    }

  

}
