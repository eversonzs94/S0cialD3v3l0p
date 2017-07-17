/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.mappers;

import com.socialdevelop.entities.Project;
import com.socialdevelop.entities.Users;
import java.util.List;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.dao.DataAccessException;

public interface ProjectMapper {
    /* --------------- Start Didi -------------------- */
    @Select("SELECT * FROM tblprojects")
    @Results(value = {
            @Result(property = "name", column = "projectName"),
            @Result(property = "id", column = "idProject")
        }
    )
    public List<Project> browseProjects() throws DataAccessException;
    
    @Select("SELECT * from tblprojects inner join tblusersprojects "
            + "where tblprojects.idProject=tblusersprojects.idProject "
            + "and tblusersprojects.idUser=(#{id})")
    @Results(value = {
            @Result(property = "name", column = "projectName"),
            @Result(property = "id", column = "idProject")
        }
    )
    public List<Project> browseProjectsByID(int id) throws DataAccessException;

    @Select("SELECT * FROM tblprojects where idProject=(#{id})")
    @Results(value = {
            @Result(property = "name", column = "projectName"),
            @Result(property = "id", column = "idProject")
        }
    )
    public Project viewProjectInfo(int id) throws DataAccessException;

    @Insert("INSERT into tblprojects(projectName,description,status,datePublish) "
            + "VALUES(#{name},#{description},#{status},DATE_FORMAT(NOW(),'%Y-%c-%d'))")
    public void addProject(Project project) throws DataAccessException;
    
    @Insert("INSERT into tblusersprojects(idUser,idProject,idRole)"
            + "VALUES(#{userId},#{idProject},1)")
    public void addProjectCoordinator(@Param("idProject")int idProject,@Param("userId")int userId) throws DataAccessException;
    
    @Select("SELECT LAST_INSERT_ID(idProject) AS idProject FROM tblProjects ORDER BY idProject DESC LIMIT 1")
    @Results(value = {
            @Result(property = "idProject", column = "idProject")
        }
    )
    public int lastProjectInserted() throws DataAccessException;
    
    @Select("SELECT * from tblprojects where idProject NOT IN "
            + "(SELECT tblprojects.idProject from tblprojects u "
            + "inner join tblusersprojects "
            + "where tblprojects.idProject=tblusersprojects.idProject and tblusersprojects.idUser=(#{id}))")
    @Results(value = {
            @Result(property = "name", column = "projectName"),
            @Result(property = "id", column = "idProject")
        }
    )
    public List<Project> browseOtherProjects(int id) throws DataAccessException;

    /* --------------- End Didi -------------------- */
    
    
    /* --------------- Start Everson -------------------- */
    
    @Select("SELECT * FROM tblUsersProjects INNER JOIN tblUsers ON tblUsersProjects.idUser = tblUsers.idUser WHERE tblUsersProjects.idProject = #{idProject}")
    @Results(value = {
        @Result(property = "name", column = "name"),
        @Result(property = "surname", column = "surname"),
        @Result(property = "email", column = "email"),
        @Result(property = "nickname", column = "nickname"),
        @Result(property = "phoneNumber", column = "phoneNumber"),
        @Result(property = "gender", column = "gender"),
        @Result(property = "aboutMe", column = "aboutMe"),
        @Result(property = "birthDate", column = "birthDate"),
        @Result(property = "address", column = "address")
        }
    )
    public Users projectCoordinator(int idProject) throws DataAccessException;
    
    /* --------------- End Everson -------------------- */

    @Select("SELECT COUNT(*)\n"
            + "FROM tblusersprojects A\n"
            + "INNER JOIN tblusers B on A.idUser = B.idUser\n"
            + "INNER JOIN tblprojects C on A.idProject = C.idProject\n"
            + "WHERE A.idProject = #{idProject} and B.idUser = #{idUser}")
    public Integer isInvolvingInProject(@Param("idProject") Integer idProject, @Param("idUser") Integer idUser) throws DataAccessException;

}
