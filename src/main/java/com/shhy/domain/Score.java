package com.shhy.domain;

public class Score {
    private Integer sid;
    private byte score;
    private Integer cid;

    public Integer getSid() {
        return sid;
    }

    public byte getScore() {
        return score;
    }

    public Integer getCid() {
        return cid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public void setScore(byte score) {
        this.score = score;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    @Override
    public String toString() {
        return "Score{" +
                "sid=" + sid +
                ", score=" + score +
                ", cid=" + cid +
                '}';
    }
}
