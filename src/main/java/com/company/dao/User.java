package com.company.dao;

public class User {
    private String AuthKey; 
    private String Username;
    private String Password;


    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }
    public String getAuthKey() { 
        return AuthKey;
    }

    public void setAuthKey(String AuthKey) { 
        this.AuthKey = AuthKey;
    }
}
