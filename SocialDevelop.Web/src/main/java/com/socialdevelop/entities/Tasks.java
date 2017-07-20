/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.entities;

import java.util.List;
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
    private int idProject;
    private String startDate;
    private String dueDate;
    private Skills skill;
    private List<Skills> skillList;
    private List<Users> usersList;
    private Type type;
    
    public Tasks(){}

    public Tasks(String taskName, String description, String status, int collaboratorsNum, int idType, int idProject, String startDate, String dueDate) {
        this.taskName = taskName;
        this.description = description;
        this.status = status;
        this.collaboratorsNum = collaboratorsNum;
        this.idType = idType;
        this.idProject = idProject;
        this.startDate = startDate;
        this.dueDate = dueDate;
    }

    public Tasks(int idTask, String taskName, String description, String status, int collaboratorsNum, int idType, int idProject, String startDate, String dueDate, List<Skills> skillList) {
        this.idTask = idTask;
        this.taskName = taskName;
        this.description = description;
        this.status = status;
        this.collaboratorsNum = collaboratorsNum;
        this.idType = idType;
        this.idProject = idProject;
        this.startDate = startDate;
        this.dueDate = dueDate;
        this.skillList = skillList;
    }
    
    public int getIdProject() {
        return idProject;
    }

    public void setIdProject(int idProject) {
        this.idProject = idProject;
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

    public List<Skills> getSkillList() {
        return skillList;
    }

    public void setSkillList(List<Skills> skillList) {
        this.skillList = skillList;
    }

    public Skills getSkill() {
        return skill;
    }

    public void setSkill(Skills skill) {
        this.skill = skill;
    }

    public List<Users> getUsersList() {
        return usersList;
    }

    public void setUsersList(List<Users> usersList) {
        this.usersList = usersList;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }
    
}