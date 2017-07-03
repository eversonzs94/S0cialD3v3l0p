/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.entities;

import java.util.Date;
import org.apache.ibatis.type.Alias;

@Alias("Project")
public class Project {
    private int id;
    private String name;
    private String description;
    private Date datePublish;
     private String status;

    public Project() {
    }

    public Project(int id, String name, String description, Date datePublish, String status) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.datePublish = datePublish;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDatePublish() {
        return datePublish;
    }

    public void setDatePublish(Date datePublish) {
        this.datePublish = datePublish;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
}
