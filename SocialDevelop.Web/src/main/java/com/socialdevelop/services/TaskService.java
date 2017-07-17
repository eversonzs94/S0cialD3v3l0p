/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.services;

import com.socialdevelop.entities.Tasks;
import com.socialdevelop.mappers.TaskMapper;
import java.util.List;
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
    public int addTask(Tasks task){
        try{
            return mapper.addTask(task);
        }catch(DataAccessException ex){
            //Log file
            return 0;
        }
    }
    
    public int insertTaskSkills(int[] idSkills, int[] levels){
        int idTask = lastTaskInserted();
        for (int i = 0; i < idSkills.length; i++){
            if (!"".equals(idSkills[i])){
                try{
                   mapper.insertTaskSkills(idSkills[i], idTask, levels[i]);
                }catch(DataAccessException ex){
                    System.out.println("Error: ---> " + ex.getMessage());
                    return 0;
                } 
            }
        }
        return 1;
    }
    
    public List<Tasks> getProjectTasks(int idProject){
        try{
            return mapper.getProjectTasks(idProject);
        }catch(DataAccessException ex){
            //Log file
            return null;
        }
    }
    
    public List<Tasks> getListSkillsTask(int idProject){
        try{
            return mapper.getListSkillsTask(idProject);
        }catch(DataAccessException ex){
            System.out.println("Error: ---> " + ex.getMessage());
            return null;
        }catch(Exception e){
            System.out.println("Error: ---> " + e.getMessage());
            return null;
        }
    }
    
    public int lastTaskInserted(){
        try{
            return mapper.lastTaskInserted();
        }catch(DataAccessException ex){
            return 0;
        }
    }
        
}
