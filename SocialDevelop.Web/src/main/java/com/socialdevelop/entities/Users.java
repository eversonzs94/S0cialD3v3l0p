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
 * @author evers
 */
@Alias("Users")
public class Users {

    private int idUser;
    private String name;
    private String address;
    private String surname;
    private String password;
    private String nickname;
    private String email;
    private String phoneNumber;
    private String curriculum;
    //  private String profilePhoto;
    private String gender;
    private String aboutMe;
    private String birthDate;
    
    /* --------------- Start Hilda -------------------- */
    //proof
    private String taskName;
    private String projectName;
    private String status;
    private String skill;
    private Date submissionDate;
    private String description;
    private Integer idTask;
    private Integer idUserSender;
    private Integer idUserReceiver;
    private Integer idProject;
    /* --------------- End Hilda -------------------- */
    
    public Users(String name, String surname, String password, String nickname, String email, String phoneNumber, String gender, String aboutMe, String birthDate, String address) {
        this.name = name;
        this.surname = surname;
        this.password = password;
        this.nickname = nickname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        //    this.curriculum = curriculum;
        this.gender = gender;
        this.aboutMe = aboutMe;
        this.birthDate = birthDate;
        this.address = address;
    }

    public Users(String status, Integer idTask, Integer idUserSender, Integer idUserReceiver) {
        this.status = status;
        this.idTask = idTask;
        this.idUserSender = idUserSender;
        this.idUserReceiver = idUserReceiver;
    }

    public Users(int idUser, String name, String address, String surname, String password, String nickname, String email, String phoneNumber, String gender, String aboutMe, String birthDate) {
        this.idUser = idUser;
        this.name = name;
        this.address = address;
        this.surname = surname;
        this.password = password;
        this.nickname = nickname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.gender = gender;
        this.aboutMe = aboutMe;
        this.birthDate = birthDate;
    }
    
    public Users(int idUser, String name, String address, String surname, String password, String nickname, String email, String phoneNumber, String curriculum, String gender, String aboutMe, String birthDate) {
        this.idUser = idUser;
        this.name = name;
        this.address = address;
        this.surname = surname;
        this.password = password;
        this.nickname = nickname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.curriculum = curriculum;
        this.gender = gender;
        this.aboutMe = aboutMe;
        this.birthDate = birthDate;
   //     this.role = role;
    }
   
    public Users(String name, String surname, String password, String nickname, String email, String phoneNumber, String curriculum,String gender, String aboutMe, String birthDate, String address) {
        this.name = name;
        this.surname = surname;
        this.password = password;
        this.nickname = nickname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.curriculum = curriculum;
        this.gender = gender;
        this.aboutMe = aboutMe;
        this.birthDate = birthDate;
        this.address = address;
    }
    
    /* --------------- Start Hilda -------------------- */
    public Users(Integer idTask,Integer idProject, Integer idUserSender, Integer idUserReceiver, String status) {
        this.status = status;
        this.idUserSender = idUserSender;
        this.idUserReceiver = idUserReceiver;
        this.idTask = idTask;
        this.idProject = idProject;
    }
    
    public Users(int idUser, Integer idTask) {
        this.idUser = idUser;
        this.idTask = idTask;
    }
    
    public Users(int idUserReceiver, Integer idTask, Integer idUserSender, String status) {
        this.idUserReceiver = idUserReceiver;
        this.idTask = idTask;
        this.idUserSender = idUserSender;
        this.status = status;
    }
    
    public String getBirthDate() {
        return birthDate;
    }
    
    /* --------------- End Hilda -------------------- */

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getCurriculum() {
        return curriculum;
    }

    public void setCurriculum(String curriculum) {
        this.curriculum = curriculum;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAboutMe() {
        return aboutMe;
    }

    public void setAboutMe(String aboutMe) {
        this.aboutMe = aboutMe;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Users() {
    }

    public Users(String nickname, String password) {
        this.nickname = nickname;
        this.password = password;
    }

    public Users(int idUser, String name, String surname, String password) {
        this.idUser = idUser;
        this.name = name;
        this.surname = surname;
        this.password = password;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
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

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getSkill() {
        return skill;
    }

    public void setSkill(String skill) {
        this.skill = skill;
    }

    public Date getSubmissionDate() {
        return submissionDate;
    }

    public void setSubmissionDate(Date submissionDate) {
        this.submissionDate = submissionDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getIdTask() {
        return idTask;
    }

    public void setIdTask(Integer idTask) {
        this.idTask = idTask;
    }

    public Integer getIdUserSender() {
        return idUserSender;
    }

    public void setIdUserSender(Integer idUserSender) {
        this.idUserSender = idUserSender;
    }

    public Integer getIdUserReceiver() {
        return idUserReceiver;
    }

    public void setIdUserReceiver(Integer idUserReceiver) {
        this.idUserReceiver = idUserReceiver;
    }

    public Integer getIdProject() {
        return idProject;
    }

    public void setIdProject(Integer idProject) {
        this.idProject = idProject;
    }
    

}
