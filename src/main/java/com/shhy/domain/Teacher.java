package com.shhy.domain;

public class Teacher {
    private Integer tid;
    private String password;
    private String tname;
    private String title;
    private String tdepartment;

    public Integer getTid() {
        return tid;
    }

    public String getPassword() {
        return password;
    }

    public String getTname() {
        return tname;
    }

    public String getTitle() {
        return title;
    }

    public String getTdepartment() {
        return tdepartment;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTdepartment(String tdepartment) {
        this.tdepartment = tdepartment;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "tid=" + tid +
                ", password='" + password + '\'' +
                ", tname='" + tname + '\'' +
                ", title='" + title + '\'' +
                ", tdepartment='" + tdepartment + '\'' +
                '}';
    }
}
