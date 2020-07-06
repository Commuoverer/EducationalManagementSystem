package com.shhy.domain;

public class Administrator {
    private Integer id;
    private String password;

    public Integer getAid() {
        return id;
    }


    public String getPassword() {
        return password;
    }


    public void setId(Integer id) {
        this.id = id;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "admin{" +
                "id=" + id +
                ", password=" + password+
                '}';
    }
}
