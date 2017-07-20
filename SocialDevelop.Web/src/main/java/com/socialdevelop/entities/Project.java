/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.entities;

import java.util.List;
import org.apache.ibatis.type.Alias;

@Alias("Project")
public class Project {
    private int id;
    private String name;
    private String description;
    private String datePublish;
    private String status;
    List<Tasks> listTasks;
    private Users coordinator;

    public Users getCoordinator() {
        return coordinator;
    }

    public void setCoordinator(Users coordinator) {
        this.coordinator = coordinator;
    }

    public List<Tasks> getListTasks() {
        return listTasks;
    }

    public void setListTasks(List<Tasks> listTasks) {
        this.listTasks = listTasks;
    }

    public Project() {
    }

    public Project(int id, String name, String description, String datePublish, String status) {
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

    public String getDatePublish() {
        return datePublish;
    }

    public void setDatePublish(String datePublish) {
        this.datePublish = datePublish;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
