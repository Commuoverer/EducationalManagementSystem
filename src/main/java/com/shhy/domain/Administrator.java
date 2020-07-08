package com.shhy.domain;

import java.io.Serializable;

public class Administrator implements Serializable {
    private Integer id;
    private String password;
    private  String photo;

    public Integer getId() {
        return id;
    }

    public String getPassword() {
        return password;
    }

    public String getPhoto() {
        return photo;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    @Override
    public String toString() {
        return "Administrator{" +
                "id=" + id +
                ", password='" + password + '\'' +
                ", photo='" + photo + '\'' +
                '}';
    }
}
