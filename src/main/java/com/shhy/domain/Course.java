package com.shhy.domain;

public class Course {
    private Integer cid;//无需输入数据库自动生成，修改功能不能修改课程号
    private String cname;
    private String location;
    private String ctime;
    private Teacher teacher;//外键tid含于此对象

    public Integer getCid() {
        return cid;
    }

    public String getCname() {
        return cname;
    }

    public String getLocation() {
        return location;
    }

    public String getCtime() {
        return ctime;
    }

    public Teacher getTeacher() {
        return teacher;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public void setCtime(String ctime) {
        this.ctime = ctime;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }

    @Override
    public String toString() {
        return "Course{" +
                "cid=" + cid +
                ", cname='" + cname + '\'' +
                ", location='" + location + '\'' +
                ", ctime='" + ctime + '\'' +
                ", teacher=" + teacher+
                '}';
    }
}
