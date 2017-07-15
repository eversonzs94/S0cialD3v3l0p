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
@Alias("Tasks")
public class Tasks {
    private int idTask;
    private String taskName;
    private String description;
    private String status;
    private int collaboratorsNum;
    private int idType;
    //****************** Add here idProject
    private String startDate;
    private String dueDate;   
    
    public Tasks(){}

    public Tasks(String taskName, String description, String status, int collaboratorsNum, int idType, String startDate, String dueDate) {
        this.taskName = taskName;
        this.description = description;
        this.status = status;
        this.collaboratorsNum = collaboratorsNum;
        this.idType = idType;
        this.startDate = startDate;
        this.dueDate = dueDate;
    }

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

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getDueDate() {
        return dueDate;
    }

    public void setDueDate(String dueDate) {
        this.dueDate = dueDate;
    } 

    public int getIdType() {
        return idType;
    }

    public void setIdType(int idType) {
        this.idType = idType;
    }
    
}