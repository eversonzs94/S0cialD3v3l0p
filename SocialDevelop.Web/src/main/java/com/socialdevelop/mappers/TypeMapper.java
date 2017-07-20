/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.mappers;

import com.socialdevelop.entities.Type;
import java.util.List;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author evers
 */
public interface TypeMapper {
    
    @Select("SELECT * FROM tbltype")
    @Results(value = {
        @Result(property = "idType", column = "idType"),
        @Result(property = "typeName", column = "typeName")
        }
    )
    public List<Type> typeList() throws DataAccessException;
    
    public List<Type> typeSkillList() throws DataAccessException;
    
    @Insert("INSERT INTO tblType(typeName) VALUES(#{typeName})") 
    public int insertType(Type type) throws DataAccessException;
    
}
