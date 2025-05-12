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
public class GetMaxServlet extends HttpServlet {

 @EJB  
 private StudentFacadeLocal run;
   
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Double MaxMark=run.getMaxMark();
           Double MinMark=run.getMinMark();
        request.setAttribute("MaxMark",MaxMark);
         request.setAttribute("MinMark",MinMark);
        
         RequestDispatcher rsd=request.getRequestDispatcher("ResultFoundMax.jsp");
        rsd.forward(request, response);
      
    }


}
