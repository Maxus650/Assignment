/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.Entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author User
 */
@Entity


@Table(name="Student")
public class Student implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    private Long id;
    private String Name;
    private String LastName;
    private String Gender;
    private Integer age;
    private Double MarkObtained;

    public Student() {
    }

    public Student(Long id, String Name, String LastName, String Gender, Integer age, Double MarkObtained) {
        this.id = id;
        this.Name = Name;
        this.LastName = LastName;
        this.Gender = Gender;
        this.age = age;
        this.MarkObtained = MarkObtained;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Double getMarkObtained() {
        return MarkObtained;
    }

    public void setMarkObtained(Double MarkObtained) {
        this.MarkObtained = MarkObtained;
    }
            
  
    


    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Student)) {
            return false;
        }
        Student other = (Student) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "za.ac.Entity.Student[ id=" + id + " ]";
    }
    
}
