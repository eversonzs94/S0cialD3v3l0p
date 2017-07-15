/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.mappers;

import com.socialdevelop.entities.Skills;
import java.util.List;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author wales
 */
public interface SkillMapper {
    /* GET tblSkills */
    @Select("SELECT * FROM tblSkills")
    @Results(value = {
            @Result(property = "idSkill", column = "idSkill"),
            @Result(property = "skillName", column = "skillName"),
            @Result(property = "idSkillFather", column = "idSkillFather")
        }
    )
    public Skills showSkills(Skills skills) throws DataAccessException;
    
    /* INSERT INTO tblSkills */
    @Insert("INSERT INTO tblSkills(skillName, idSkillFather) VALUES(#{skillName}, #{idSkillFather})") //idSkillFather can be NULL
    public Integer insertSkill(Skills skill) throws DataAccessException;
    
    /* SHOW tblSkills */
    @Select("SELECT * FROM tblSkills")
    @Results( value = {
        @Result(property = "skillName", column = "skillName"), 
        @Result(property = "idSkillFather", column = "idSkillFather")                    
    })
    public List<Skills> skillsList() throws DataAccessException;    
}
