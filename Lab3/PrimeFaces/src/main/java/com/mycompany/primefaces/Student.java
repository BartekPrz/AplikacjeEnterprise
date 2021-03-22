package com.mycompany.primefaces;


public class Student {
    
    private String name;
    private String surname;
    private Double avgGrade;

    public Student(String name, String surname, Double avgGrade) {
        this.name = name;
        this.surname = surname;
        this.avgGrade = avgGrade;
    }
    
    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the surname
     */
    public String getSurname() {
        return surname;
    }

    /**
     * @param surname the surname to set
     */
    public void setSurname(String surname) {
        this.surname = surname;
    }

    /**
     * @return the avgGrade
     */
    public Double getAvgGrade() {
        return avgGrade;
    }

    /**
     * @param avgGrade the avgGrade to set
     */
    public void setAvgGrade(Double avgGrade) {
        this.avgGrade = avgGrade;
    }
    
}
