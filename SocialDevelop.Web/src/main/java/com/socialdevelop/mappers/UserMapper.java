/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.mappers;

import com.socialdevelop.entities.Users;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author evers
 */
public interface UserMapper {
    
    @Select("SELECT * FROM tblUsers WHERE name=#{name} AND password=#{password}")
    @Results(value = {
            @Result(property = "idUser", column = "idUser"),
            @Result(property = "name", column = "name"),
            @Result(property = "surname", column = "surname"),
            @Result(property = "password", column = "password")
        }
    )
    
    public Users login(Users usr) throws DataAccessException;
    
}
