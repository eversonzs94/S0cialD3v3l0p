/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.services;

import com.socialdevelop.entities.Type;
import com.socialdevelop.mappers.TypeMapper;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

/**
 *
 * @author evers
 */
@Service
public class TypeService {
    @Autowired TypeMapper mapper;
    public List<Type> typeList(){
        return mapper.typeList();   
    }
    
    public List<Type> typeSkillList(){
        return mapper.typeSkillList();   
    }
    
    public Integer insertType(Type type){
        try{
            return mapper.insertType(type);
        }catch(DataAccessException ex){
            // save errors in log file.
        }
        return 0;    
    }
    
}