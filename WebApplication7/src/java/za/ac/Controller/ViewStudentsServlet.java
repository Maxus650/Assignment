/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
public class ViewStudentsServlet extends HttpServlet {

@EJB
private StudentFacadeLocal run;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Student> list=run.findAll();
        
        request.setAttribute("List",list);
        RequestDispatcher rsd=request.getRequestDispatcher("List.jsp");
        rsd.forward(request, response);
    }

}
