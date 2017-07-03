/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.services;

import com.socialdevelop.entities.Users;
import com.socialdevelop.mappers.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;


/**
 *
 * @author evers
 */
@Service
public class UserService {
    @Autowired UserMapper mapper;
    public Users login(Users user){
        try{
            return mapper.login(user);
        }catch(DataAccessException ex){
            //Save errors in log file.
        }
        return null;
    }
    
}
