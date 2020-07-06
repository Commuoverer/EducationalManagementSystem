package com.shhy.domain;

public class Course {
    private Integer cid;//无需输入数据库自动生成，修改功能不能修改课程号
    private String cname;
    private String location;
    private String ctime;
    private Integer tid;

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

    public Integer getTid() {
        return tid;
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

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    @Override
    public String toString() {
        return "Course{" +
                "cid=" + cid +
                ", cname='" + cname + '\'' +
                ", location='" + location + '\'' +
                ", ctime='" + ctime + '\'' +
                ", tid=" + tid +
                '}';
    }
}
