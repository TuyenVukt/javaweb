package com.bksoftwarevn.itstudent.model;

public class Account {
    private int id;
    private String User;
    private String Password;
    private boolean isSell;
    private boolean isAdmin;

    public Account(int id, String user, String password, boolean isSell, boolean isAdmin) {
        this.id = id;
        User = user;
        Password = password;
        this.isSell = isSell;
        this.isAdmin = isAdmin;
    }

    public Account() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return User;
    }

    public void setUser(String user) {
        User = user;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public boolean isSell() {
        return isSell;
    }

    public void setSell(boolean sell) {
        isSell = sell;
    }

    public boolean isAdmin() {
        return isAdmin;
    }

    public void setAdmin(boolean admin) {
        isAdmin = admin;
    }

    @Override
    public String toString() {
        return "Account{" +
                "id=" + id +
                ", User='" + User + '\'' +
                ", Password='" + Password + '\'' +
                ", isSell=" + isSell +
                ", isAdmin=" + isAdmin +
                '}';
    }
}
