package com.shhy.domain;

import java.io.Serializable;

public class Student implements Serializable {
    private Integer sid;//无需输入数据库自动生成id，修改功能不能修改id
    private String password;//初始密码123456
    private String sname;
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
                ", sname='" + sname + '\'' +
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

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
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