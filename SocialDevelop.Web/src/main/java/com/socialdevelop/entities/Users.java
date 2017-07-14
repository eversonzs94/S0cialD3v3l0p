/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.entities;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

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
    private MultipartFile curriculum;
    //  private String profilePhoto;
    private String gender;
    private String aboutMe;
    private String birthDate;

    public String getBirthDate() {
        return birthDate;
    }

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

    public MultipartFile getCurriculum() {
        return curriculum;
    }

    public void setCurriculum(MultipartFile curriculum) {
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

    public Users(String name, String surname, String password, String nickname, String email, String phoneNumber, String gender, String aboutMe, String address) {
        this.name = name;
        this.surname = surname;
        this.password = password;
        this.nickname = nickname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.gender = gender;
        this.aboutMe = aboutMe;
        this.address = address;
    }

    /*  public Users(String name, String surname, String password, String nickname, String email, String phoneNumber, MultipartFile curriculum, String gender, String aboutMe, String address) {
        this.name = name;
        this.surname = surname;
        this.password = password;
        this.nickname = nickname;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.curriculum = curriculum;
        this.gender = gender;
        this.aboutMe = aboutMe;
        this.address = address;
    }*/
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

}
