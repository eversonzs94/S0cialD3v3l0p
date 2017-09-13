/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.mappers;

import com.socialdevelop.entities.Tasks;
import java.util.List;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author evers
 */
public interface TaskMapper {
    
    @Insert("INSERT INTO tblTasks(taskName, description, status, collaboratorsNum, idType, idProject, startDate, dueDate) VALUES(#{taskName}, #{description}, #{status}, #{collaboratorsNum}, #{idType}, #{idProject}, #{startDate}, #{dueDate})")
    public int addTask(Tasks task) throws DataAccessException;
    
    @Insert("INSERT INTO tblTasksSkillsLevel(idSkill, idTask, level) VALUES(#{idSkills}, #{idTask}, #{levels})")
    public int insertTaskSkills(@Param("idSkills")int idSkill, @Param("idTask")int idTask, @Param("levels")int level) throws DataAccessException;
    
    @Select("SELECT LAST_INSERT_ID(idTask) AS idTask FROM tblTasks ORDER BY idTask DESC LIMIT 1")
    @Results(value = {
            @Result(property = "idTask", column = "idTask")
        }
    )
    public int lastTaskInserted() throws DataAccessException;
    
    @Select("SELECT * FROM tblTasks WHERE idProject=#{idProject}")
    @Results(value = {
            @Result(property = "idTask", column = "idTask"),
            @Result(property = "taskName", column = "taskName"),
            @Result(property = "description", column = "description"),
            @Result(property = "status", column = "status"),
            @Result(property = "collaboratorsNum", column = "collaboratorsNum"),
            @Result(property = "idType", column = "idType"),
            @Result(property = "idProject", column = "idProject"),
            @Result(property = "startDate", column = "startDate"),
            @Result(property = "dueDate", column = "dueDate")
        }
    )
    public List<Tasks> getProjectTasks(int idProject) throws DataAccessException;
    
    public List<Tasks> getListSkillsTask(@Param("idProject")int idProject) throws DataAccessException;

    public Tasks getTaskInfo(@Param("idTask")int idTask) throws DataAccessException;
    
}
