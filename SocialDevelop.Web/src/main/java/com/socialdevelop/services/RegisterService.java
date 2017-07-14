/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.services;

import com.socialdevelop.entities.Users;
import com.socialdevelop.mappers.registrationMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

/**
 *
 * @author Tala
 */
@Service
public class RegisterService {
     @Autowired registrationMapper mapper;
    public void register(Users user){
        try{
            mapper.register(user);
            //System.out.println("hello");
         
        }catch(DataAccessException ex){
          //  System.out.println("errorrrrrr");
            //Save errors in log file.
        }
       // return null;
    }
}
