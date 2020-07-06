package com.shhy.domain;

public class ScoreSC {
    private Integer cid;
    private String cname;
    private String tname;
    private byte score;

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
                "cid=" + cid +
                ", cname='" + cname + '\'' +
                ", tname='" + tname + '\'' +
                ", score=" + score +
                '}';
    }
}
