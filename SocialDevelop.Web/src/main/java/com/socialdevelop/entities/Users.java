/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.entities;

import org.apache.ibatis.type.Alias;

/**
 *
 * @author evers
 */
@Alias("Users")
public class Users {
    private String idUser;
    private String name;
    private String surname;
    private String password;
    
    public Users() {
    }
    
    public Users(String name, String password) {
        this.name = name;
        this.password = password;
    }

    public Users(String idUser, String name, String surname, String password) {
        this.idUser = idUser;
        this.name = name;
        this.surname = surname;
        this.password = password;
    }

    public String getIdUser() {
        return idUser;
    }

    public void setIdUser(String idUser) {
        this.idUser = idUser;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
