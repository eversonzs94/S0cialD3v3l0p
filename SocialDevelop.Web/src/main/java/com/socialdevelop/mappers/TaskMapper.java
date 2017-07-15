/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.mappers;

import com.socialdevelop.entities.Tasks;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author evers
 */
public interface TaskMapper {
    
   @Insert("INSERT INTO tblTasks(taskName, description, status, collaboratorsNum, idType, idProject, startDate, dueDate) VALUES(#{taskName}, #{description}, #{status}, #{collaboratorsNum}, #{idType}, 1, #{startDate}, #{dueDate})")
    public int addTask(Tasks task) throws DataAccessException;
    
    @Select("SELECT * FROM tblTasks")
    public Tasks viewTasks(Tasks task) throws DataAccessException;
    
}
