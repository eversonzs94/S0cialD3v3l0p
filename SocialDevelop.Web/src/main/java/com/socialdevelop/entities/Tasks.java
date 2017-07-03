/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.entities;

import java.util.Date;

/**
 *
 * @author evers
 */
public class Tasks {
    private int idTask;
    private String taskName;
    private String description;
    private String status;
    private int collaboratorsNum;
    //****************** Add here idType, idProject
    private Date startDate;
    private Date dueDate;   
    
    public Tasks(){}

    public int getIdTask() {
        return idTask;
    }

    public void setIdTask(int idTask) {
        this.idTask = idTask;
    }

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getCollaboratorsNum() {
        return collaboratorsNum;
    }

    public void setCollaboratorsNum(int collaboratorsNum) {
        this.collaboratorsNum = collaboratorsNum;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getDueDate() {
        return dueDate;
    }

    public void setDueDate(Date dueDate) {
        this.dueDate = dueDate;
    }    
    
}
