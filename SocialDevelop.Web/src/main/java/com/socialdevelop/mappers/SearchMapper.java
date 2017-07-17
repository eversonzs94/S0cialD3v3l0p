/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.mappers;

import com.socialdevelop.entities.Project;
import com.socialdevelop.entities.Users;
import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.dao.DataAccessException;

public interface SearchMapper {
    @Select("SELECT * FROM tblprojects where projectName like (#{keyword}) or description like (#{keyword})" )
    @Results(value = {
            @Result(property = "name", column = "projectName"),
            @Result(property = "id", column = "idProject")
        }
    )
    public List<Project> searchProject(String keyword) throws DataAccessException;
    
    @Select("SELECT I.* FROM tblprojects I INNER JOIN (SELECT keyword FROM tblkeywords) "
            + "E ON I.projectName LIKE CONCAT('%',E.keyword,'%') or I.description LIKE CONCAT('%',E.keyword,'%')")
    @Results(value = {
            @Result(property = "name", column = "projectName"),
            @Result(property = "id", column = "idProject")
        }
    )
    public List<Project> searchProjectMultipleKeywords() throws DataAccessException;
    
    
    @Select("SELECT A.*,COUNT(A.idUser) from (SELECT u.* FROM tblskillsusers su "
            + "INNER join tblusers u on u.idUser=su.idUser "
            + "INNER JOIN tblskills s on s.idSkill=su.idSkill "
            + "INNER join (SELECT keyword,level FROM tblkeywords) E "
            + "on s.skillName=E.keyword and (su.skillLevel>=E.level or E.level=0)) A "
            + "GROUP by A.idUser HAVING COUNT(A.A.idUser)=(SELECT COUNT(*) from tblkeywords)")
    @Results(value = {
            @Result(property = "name", column = "name")
        }
    )
    public List<Users> searchDevelopers ()throws DataAccessException;
    
    @Insert("INSERT into tblkeywords(keyword,level) VALUES(#{keyword},#{level})")
    public int addKeyword(@Param("keyword")String keyword,@Param("level")int level) throws DataAccessException;
    
    @Delete("Delete FROM `tblkeywords`")
    public int deleteKeywords() throws DataAccessException;
}
