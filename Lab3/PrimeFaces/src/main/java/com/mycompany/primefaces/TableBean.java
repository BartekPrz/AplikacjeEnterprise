package com.mycompany.primefaces;

import java.util.ArrayList;
import java.util.List;
import javax.inject.Named;
import javax.enterprise.context.RequestScoped;


@Named(value = "tableBean")
@RequestScoped
public class TableBean {

    private List<Student> students;
    
    public TableBean() {
        students = new ArrayList<>();
        students.add(new Student("Adam", "Adamowski", 4.5));
        students.add(new Student("Bartek", "Bartkowski", 3.3));
        students.add(new Student("Celina", "Celinowska", 3.3));
        students.add(new Student("Damian", "Damianowski", 5.0));
        students.add(new Student("Edek", "Edekowski", 4.3));
        students.add(new Student("Felek", "Fenowski", 2.3));
        students.add(new Student("Geniek", "Genowski", 3.2));
        students.add(new Student("Marcin", "Mariuszowski", 4.3));
    }

    /**
     * @return the students
     */
    public List<Student> getStudents() {
        return students;
    }

    /**
     * @param students the students to set
     */
    public void setStudents(List<Student> students) {
        this.students = students;
    }
    
}
