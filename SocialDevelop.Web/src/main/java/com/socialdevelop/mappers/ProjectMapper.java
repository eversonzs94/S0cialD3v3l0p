/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.mappers;

import com.socialdevelop.entities.Project;
import java.util.List;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.dao.DataAccessException;


public interface ProjectMapper {
    @Select("SELECT * FROM tblprojects")
    @Results(value = {
            @Result(property = "name", column = "projectName")
        }
    )
    public List<Project> browseProjects() throws DataAccessException;
    
    @Select("SELECT * FROM tblprojects")
    @Results(value = {
            @Result(property = "name", column = "projectName")
        }
    )
    public Project viewProjectInfo(int id) throws DataAccessException;
    
    @Insert("INSERT into tblprojects(projectName) VALUES(#{name})")
    public void addProject(Project project) throws DataAccessException;
    
}
