package com.shhy.domain;

public class ScoreSCT {
    private Integer sid;
    private String sname;
    private String grade;
    private String sdepartment;
    private Integer cid;
    private String cname;
    private String tname;
    private byte score;

    public Integer getSid() {
        return sid;
    }

    public String getSname() {
        return sname;
    }

    public String getGrade() {
        return grade;
    }

    public String getSdepartment() {
        return sdepartment;
    }

    public Integer getCid() {
        return cid;
    }

    public String getCname() {
        return cname;
    }

    public String getTname() {
        return tname;
    }

    public byte getScore() {
        return score;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public void setSdepartment(String sdepartment) {
        this.sdepartment = sdepartment;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public void setScore(byte score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "ScoreSCT{" +
                "sid=" + sid +
                ", sname='" + sname + '\'' +
                ", grade='" + grade + '\'' +
                ", sdepartment='" + sdepartment + '\'' +
                ", cid=" + cid +
                ", cname='" + cname + '\'' +
                ", tname='" + tname + '\'' +
                ", score=" + score +
                '}';
    }
}
