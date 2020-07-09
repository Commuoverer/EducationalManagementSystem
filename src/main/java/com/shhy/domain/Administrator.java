package com.shhy.domain;

import java.io.Serializable;

public class Administrator implements Serializable {
    private Integer id;
    private String password;
    private String address;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Administrator{" +
                "id=" + id +
                ", password='" + password + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
