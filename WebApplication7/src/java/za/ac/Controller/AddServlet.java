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
public class AddServlet extends HttpServlet {

   @EJB
   private StudentFacadeLocal run;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   Long id=Long.parseLong(request.getParameter("Id"));
   String Name=request.getParameter("Name");
   String LastName=request.getParameter("LastName");
   String Gender=request.getParameter("Gender");;
   Integer age=Integer.parseInt(request.getParameter("Age"));
   Double MarkObtained=Double.parseDouble(request.getParameter("MarkObtained"));
    Student s=new Student(id, Name, LastName, Gender, age, MarkObtained);
       
       
     run.create(s);
     
     
        RequestDispatcher rsd=request.getRequestDispatcher("Result.jsp");
        rsd.forward(request, response);
   
       
    }

    
}
