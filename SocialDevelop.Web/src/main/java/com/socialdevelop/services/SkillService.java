/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.services;

import com.socialdevelop.entities.Skills;
import com.socialdevelop.mappers.SkillMapper;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

/**
 *
 * @author wales
 */
@Service
public class SkillService {
    @Autowired SkillMapper mapper;
    public Integer insertSkill(Skills skill){
        try{
            return mapper.insertSkill(skill);
        }catch(DataAccessException ex){
            // save errors in log file.
        }
        return 0;    
    }
    
    public List<Skills> showSkillsList(){
        return mapper.skillsList();
    }   
}
