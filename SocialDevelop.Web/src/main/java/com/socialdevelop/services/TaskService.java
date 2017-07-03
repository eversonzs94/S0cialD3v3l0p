/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.services;

import com.socialdevelop.entities.Tasks;
import com.socialdevelop.mappers.TaskMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

/**
 *
 * @author evers
 */
@Service
public class TaskService {
    @Autowired TaskMapper mapper;
    public Tasks addTask(Tasks task){
        try{
            return mapper.addTask(task);
        }catch(DataAccessException ex){
            //Log file
        }
        return null;
    }
    
    public Tasks viewTasks(Tasks task){
        try{
            return mapper.viewTasks(task);
        }catch(DataAccessException ex){
            //Log file
        }
        return null;
    }
}
