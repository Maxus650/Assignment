/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.bl;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.Entity.Student;

/**
 *
 * @author User
 */
@Stateless
public class StudentFacade extends AbstractFacade<Student> implements StudentFacadeLocal {

    @PersistenceContext(unitName = "StudentEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public StudentFacade() {
        super(Student.class);
    }
     @Override
    public int cntAllfemales() {
        Query query=em.createQuery("SELECT COUNT(s) FROM Student s WHERE s.Gender ='Female'");
           Long females= (Long) query.getSingleResult();
        return females.intValue() ;
    }
     @Override
      public int cntAllHighMarks() {
        Query query=em.createQuery("SELECT COUNT(s) FROM Student s WHERE s.MarkObtained > 60");
           Long pass= (Long) query.getSingleResult();
        return pass.intValue() ;
    }
    public   List<Student> GettingStudentWithRangeMark( Double From,  Double Tomark) {
        Query query=em.createQuery("SELECT s FROM Student s WHERE s.MarkObtained > ?1 AND s.MarkObtained < ?2");
        query.setParameter(1,From);
         query.setParameter(2,Tomark);
          List<Student> students=query.getResultList();
           
        return students ;
    }
    public Double getMaxMark(){
    
        Query query=em.createQuery("SELECT MAX(s.MarkObtained) FROM Student s");
        Double MaxMark=(Double)query.getSingleResult();
    
       return MaxMark;
    
    }
     public Double getMinMark(){
    
        Query query=em.createQuery("SELECT MIN(s.MarkObtained) FROM Student s");
        Double MinMark=(Double)query.getSingleResult();
    
       return MinMark;
    
    }
     
}
