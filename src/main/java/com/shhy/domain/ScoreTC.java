package com.shhy.domain;

public class ScoreTC {
   private Integer sid;
   private String  sname;
   private String  grade;
   private Integer cid;
   private String  cname;
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

    public Integer getCid() {
        return cid;
    }

    public String getCname() {
        return cname;
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

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public void setScore(byte score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "ScoreTC{" +
                "sid=" + sid +
                ", sname='" + sname + '\'' +
                ", grade='" + grade + '\'' +
                ", cid=" + cid +
                ", cname='" + cname + '\'' +
                ", score=" + score +
                '}';
    }
}
