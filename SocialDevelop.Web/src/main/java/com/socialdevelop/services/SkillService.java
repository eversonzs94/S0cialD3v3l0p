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
    public int insertSkill(Skills skill){
        try{
            return mapper.insertSkill(skill);
        }catch(DataAccessException ex){
            // save errors in log file.
            System.out.println("");
        }catch (Exception e){
            System.out.println("skill not inserted");
        }
        return 0;    
    }
    
    public List<Skills> showSkillsList(){
        return mapper.skillsList();
    }   
    
    public int insertSkillFather(Skills skill){
        try{
            return mapper.insertSkillFather(skill);
        }catch(DataAccessException ex){
            // save errors in log file.
            System.out.println("");
        }catch (Exception e){
            System.out.println("skill not inserted");
        }
        return 0;    
    }
    
    public int insertTypeSkill(int[] idType){
        int idSkill = mapper.lastSkillInserted();
        for (int i = 0; i < idType.length; i++){
            if (!"".equals(idType[i])){
                try{
                   mapper.insertTypeSkill(idSkill, idType[i]);
                }catch(DataAccessException ex){
                    System.out.println("Error: ---> " + ex.getMessage());
                    return 0;
                } 
            }
        }
        return 1;
    }
    
    public int lastSkillInserted(){
        try{
            return mapper.lastSkillInserted();
        }catch(DataAccessException ex){
            return 0;
        }
    }
}
