/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.services;

import com.socialdevelop.entities.Messages;
import com.socialdevelop.mappers.MessageMapper;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;



/**
 *
 * @author YoselineGuevara
 */

@Service
public class MessageService{
    
    @Autowired MessageMapper mapper;
    
    
    public ArrayList<Messages> showMessage(Integer id){
        try{
            return mapper.showMessages(id);
        }catch(DataAccessException ex){
            //Save errors in log file.
        }
        return null;
    }
    
    
    public Integer insertMessage(Messages message){
        try{
            return mapper.insertMesagges(message);
        }catch(DataAccessException ex){
            return -1;
        }
    }
   
}
