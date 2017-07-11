/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.entities;

import java.util.Date;
import org.apache.ibatis.type.Alias;

/**
 *
 * @author YoselineGuevara
 */
@Alias("Messages")
public class Messages {
    private Integer idMessage;
    private String message;
    private Date dateMessage;
    private Integer idProject;
    private Integer idUser;
    private String privacity;
    private Users user;
    private String name;
    private String surname;

    public Messages(){}

    public Messages(String message, Integer idProject, Integer idUser, String privacity) {
        this.message = message;
        this.idProject = idProject;
        this.idUser = idUser;
        this.privacity = privacity;
       
    }
    
    //Methods Sets & Gets
    public Integer getIdMessage() {
        return idMessage;
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
    
    

    public void setIdMessage(Integer idMessage) {
        this.idMessage = idMessage;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getDateMessage() {
        return dateMessage;
    }

    public void setDateMessage(Date dateMessage) {
        this.dateMessage = dateMessage;
    }

    public Integer getIdProject() {
        return idProject;
    }

    public void setIdProject(Integer idProject) {
        this.idProject = idProject;
    }

    public Integer getIdUser() {
        return idUser;
    }

    public void setIdUser(Integer idUser) {
        this.idUser = idUser;
    }

    public String getPrivacity() {
        return privacity;
    }

    public void setPrivacity(String privacity) {
        this.privacity = privacity;
    }
    
     public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }
    
    
    
  
    
}
