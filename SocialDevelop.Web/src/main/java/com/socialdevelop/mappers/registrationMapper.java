/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.mappers;

import com.socialdevelop.entities.Users;
import org.apache.ibatis.annotations.Insert;
//import org.apache.ibatis.annotations.Result;
//import org.apache.ibatis.annotations.Results;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author Tala
 */
public interface registrationMapper {
    
//curriculum,profilePhoto, birthDate  curriculum     ,#{curriculum}   #{birthDate},#{curriculum},#{profilePhoto}
    @Insert("INSERT INTO tblusers (name,surname,password,nickname,email,phoneNumber,gender,aboutMe,address,idLocation) values(#{name},#{surname},#{password},#{nickname},#{email},#{phoneNumber}, #{gender},#{aboutMe},#{address},1)")
   /* @Results(value = {
            @Result(property = "idUser", column = "idUser"),
            @Result(property = "name", column = "name"),
            @Result(property = "surname", column = "surname"),
            @Result(property = "password", column = "password"),
            @Result(property = "nickname", column = "nickname"),
            @Result(property = "email", column = "email"),
            @Result(property = "phoneNumber", column = "phoneNumber"),
            @Result(property = "gender", column = "gender"),
            @Result(property = "aboutMe", column = "aboutMe"),
            @Result(property = "address", column = "address")                
        })*/
    public void register(Users user) throws DataAccessException;

}
