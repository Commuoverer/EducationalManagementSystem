package com.shhy.domain;

import java.io.Serializable;

public class Student implements Serializable {
    private Integer sid;
    private String password;
    private String studentName;
    private String sex;
    private Integer age;
    private String grade;
    private String sdepartment;
    private String specialty;

    @Override
    public String toString() {
        return "Student{" +
                "sid=" + sid +
                ", password='" + password + '\'' +
                ", studentName='" + studentName + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                ", grade='" + grade + '\'' +
                ", sdepartment='" + sdepartment + '\'' +
                ", specialty='" + specialty + '\'' +
                '}';
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getSdepartment() {
        return sdepartment;
    }

    public void setSdepartment(String sdepartment) {
        this.sdepartment = sdepartment;
    }

    public String getSpecialty() {
        return specialty;
    }

    public void setSpecialty(String specialty) {
        this.specialty = specialty;
    }
}
