/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.mappers;

import com.socialdevelop.entities.Project;
import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.dao.DataAccessException;


public interface SearchMapper {
    @Select("SELECT * FROM tblprojects where projectName like (#{keyword}) or description like (#{keyword})" )
    @Results(value = {
            @Result(property = "name", column = "projectName")
        }
    )
    public List<Project> searchProject(String keyword) throws DataAccessException;
    
    @Select("SELECT I.* FROM tblprojects I INNER JOIN (SELECT keyword FROM tblkeywords) "
            + "E ON I.projectName LIKE CONCAT('%',E.keyword,'%') or I.description LIKE CONCAT('%',E.keyword,'%')")
    @Results(value = {
            @Result(property = "name", column = "projectName")
        }
    )
    public List<Project> searchProjectMultipleKeywords() throws DataAccessException;
    
    @Insert("INSERT into tblkeywords(keyword) VALUES(#{keyword})")
    public int addKeyword(String keyword) throws DataAccessException;
    
    @Delete("Delete FROM `tblkeywords`")
    public int deleteKeywords() throws DataAccessException;
}
