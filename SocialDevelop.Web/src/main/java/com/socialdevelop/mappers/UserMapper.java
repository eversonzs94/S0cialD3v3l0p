/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.mappers;

import com.socialdevelop.entities.Project;
import com.socialdevelop.entities.Users;
import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author evers
 */
public interface UserMapper {

    @Select("SELECT * FROM tblUsers WHERE nickname=#{nickname} AND password=#{password}")
    @Results(value = {
        @Result(property = "idUser", column = "idUser"),
        @Result(property = "name", column = "name"),
        @Result(property = "surname", column = "surname"),
        @Result(property = "password", column = "password"),
        @Result(property = "nickname", column = "nickname"),
        @Result(property = "email", column = "email"),
        @Result(property = "phoneNumber", column = "phoneNumber"),
        @Result(property = "gender", column = "gender"),
        @Result(property = "aboutMe", column = "aboutMe"),
        @Result(property = "address", column = "address")
    }
    )

    public Users login(Users usr) throws DataAccessException;

    @Select("SELECT * FROM tblUsers")
    @Results(value = {
        @Result(property = "name", column = "name"),
        @Result(property = "surname", column = "surname"),
        @Result(property = "nickname", column = "nickname"),
        @Result(property = "email", column = "email"),
        @Result(property = "phoneNumber", column = "phoneNumber"),
        @Result(property = "gender", column = "gender"),
        @Result(property = "aboutMe", column = "aboutMe"),
        @Result(property = "address", column = "address")
    }
    )
    public List<Users> browseDevelopers() throws DataAccessException;

    @Select("SELECT * FROM tblUsers WHERE nickname=#{nickname}")
    @Results(value = {
        @Result(property = "name", column = "name"),
        @Result(property = "surname", column = "surname"),
        @Result(property = "nickname", column = "nickname"),
        @Result(property = "email", column = "email"),
        @Result(property = "phoneNumber", column = "phoneNumber"),
        @Result(property = "gender", column = "gender"),
        @Result(property = "aboutMe", column = "aboutMe"),
        @Result(property = "address", column = "address")
    }
    )
    public Users viewDeveloperInfo(String nickname) throws DataAccessException;

    @Update("UPDATE tblUsers SET name = #{name}, surname = #{surname},email=#{email}, phoneNumber=#{phoneNumber},gender=#{gender},aboutMe=#{aboutMe},address=#{address}  WHERE idUser=#{idUser}")
    public int updateMyProfile(Users user) throws DataAccessException;
    

    @Select("SELECT * FROM tblUsers")
    @Results(value = {
        @Result(property = "nickname", column = "nickname"),}
    )
    public List<String> checkNickname() throws DataAccessException;
    
    @Select("SELECT * FROM tblUsers")
    @Results(value = {
        @Result(property = "email", column = "email")}
    )
    public List<String> checkEmail() throws DataAccessException;

//SELECT * FROM `tbltasks` INNER JOIN `tblusers` INNER JOIN `tbltasksdevelopers` on `tbltasks`.`idTask`=`tbltasksdevelopers`.`idTask` AND `tblusers`.`idUser`=`tbltasksdevelopers`.`idUser` INNER JOIN `tblprojects` ON `tbltasks`.`idProject`=`tblprojects`.`idProject`
    public List<Project> getDeveloperProjects(int idUser) throws DataAccessException;

    public List<Project> getCoordProjects(int idUser) throws DataAccessException;

    
    @Update("UPDATE tbltasksdevelopers SET reference =#{reference} "
            + "WHERE idTask=#{idTask} AND idUser=#{idUser}")
    public int addReference(@Param("idTask")int idTask,@Param("idUser") int idUser,@Param("reference") String reference);

    @Select("SELECT * FROM tbltasks T INNER JOIN tbltasksdevelopers D ON T.idTask=D.idTask"
            + " INNER JOIN tblusers U ON D.idUser=U.idUser"
            + " WHERE T.idTask=#{idTask}")
    @Results(value = {
        @Result(property = "name", column = "name"),
        @Result(property = "idUser", column = "idUser")}
    )
    public List<Users> viewUsersForTask(int idTask);

    /* --------------- Start Hilda -------------------- */
    
    @Select("SELECT *\n"
            + "FROM tblprojects P INNER JOIN tblusersprojects UP ON P.idProject=UP.idProject \n"
            + "INNER JOIN tblusers US ON US.idUser=UP.idUser INNER JOIN \n"
            + "(SELECT COUNT(C.idTask),C.* FROM (SELECT T.idTask,T.taskName,T.idProject from tbltasks T INNER Join tbltasksskillslevel L on T.idTask=l.idTask \n"
            + "INNER JOIN tblskills S on S.idSkill=L.idSkill\n"
            + "INNER JOIN tblskillsusers U on U.idSkill= S.idSkill \n"
            + "WHERE U.idUser=1 and t.status='open' and (U.skillLevel>=L.level or L.level=0))C\n"
            + "GROUP BY C.idTask HAVING COUNT(C.idTask)= (SELECT COUNT(tbltasksskillslevel.idTask) FROM tbltasksskillslevel INNER JOIN tbltasks WHERE tbltasksskillslevel.idTask=tbltasks.idTask AND tbltasks.idTask=c.idTask GROUP BY (tbltasksskillslevel.idTask))) A\n"
            + "ON A.idProject=P.idProject \n"
            + "and UP.idRole=\"1\" and UP.idUser!=2")
    @Results(value = {
        @Result(property = "taskName", column = "B.taskName")
        ,
        @Result(property = "projectName", column = "D.projectName")
        ,
        @Result(property = "name", column = "C.name")
        ,
        @Result(property = "surname", column = "C.surname")
        ,
        
        @Result(property = "skillName", column = "G.skillName")
        ,
        @Result(property = "status", column = "B.status")

    })
    public ArrayList<Users> offerPanelCoodinator() throws DataAccessException;

    @Select("SELECT *\n" +
"            FROM tblcollaborationsdocs B\n" +
"            inner join tblusers D\n" +
"            on B.tblUserSender = D.idUser\n" +
"            inner join tbltasks E\n" +
"            on B.idTask = E.idTask\n" +
"            where B.idUserReciver = #{idUserReciver}")
    @Results(value = {
        @Result(property = "name", column = "d.name")
        ,
        @Result(property = "surname", column = "d.surname")
        ,
         @Result(property = "taskName", column = "e.taskName")
        ,
          @Result(property = "submissionDate", column = "b.submissionDate")
    })
    public ArrayList<Users> applicationPanel(@Param("idUserReciver") Integer idUserReciver) throws DataAccessException;

    @Select("SELECT DISTINCT A.idUser, E.taskName, B.status, E.description, D.name, D.surname, B.submissionDate \n"
            + "           FROM tblcollaborationsdocs B\n"
            + "            inner JOIN tblusersprojects A\n"
            + "            on A.idUser = B.idUserReciver\n"
            + "            INNER JOIN tblroles C\n"
            + "            on A.idRole = C.idRole\n"
            + "           inner join tblusers D\n"
            + "            on D.idUser = A.idUser\n"
            + "            inner join tbltasks E\n"
            + "            on B.idTask = E.idTask\n"
            + "            where B.tblUserSender = #{idUserSender}")
    @Results(value = {
        @Result(property = "idUser", column = "A.idUser"),
        @Result(property = "taskName", column = "E.taskName")
        ,
         @Result(property = "description", column = "E.description")
        ,
        @Result(property = "name", column = "D.name")
        ,
        @Result(property = "surname", column = "D.surname")
        ,
         @Result(property = "submissionDate", column = "B.submissionDate"),
         @Result(property = "status", column = "B.status")
    })
    public ArrayList<Users> invitationPanel(@Param("idUserSender")Integer idUserSender) throws DataAccessException;

    @Select("SELECT *\n" +
"			FROM tblcollaborationsdocs B\n" +
"			inner join tblusers D\n" +
"			on B.tblUserSender = D.idUser\n" +
"			inner join tbltasks E\n" +
"			on B.idTask = E.idTask\n" +
"			INNER JOIN tblProjects F\n" +
"			ON E.idProject=F.idProject\n" +
"			where B.idUserReciver=#{idUserReceiver}")
    @Results(value = {
        @Result(property = "projectName", column = "B.projectName")
        ,
         @Result(property = "taskName", column = "E.taskName")
        ,
        @Result(property = "name", column = "C.name")
        ,
        @Result(property = "surname", column = "C.surname")
        ,
        @Result(property = "nickname", column = "C.nickname"),
         @Result(property = "submissionDate", column = "A.submissionDate")

    })
    public ArrayList<Users> proposalPanel(@Param("idUserReceiver") Integer idUserReceiver) throws DataAccessException;

    @Insert("INSERT INTO tbltasksdevelopers(idUser, idTask) "
            + "VALUES(#{idUser},#{idTask})")
    public Integer insertTaskDevelopersFromApplicationPanel(Users user) throws DataAccessException;
    
    @Insert("INSERT INTO tblcollaborationsdocs(idTask, idProject, idUserReciver,"
            + " tblUserSender, status, deadLine)"
            + " VALUES (#{idTask},#{idProject},#{idUserReceiver},#{idUserSender},"
            + "#{status},DATE_ADD(NOW(),INTERVAL 7 DAY))")
    
    public Integer insertOfferPanelToApplication(Users user) throws DataAccessException;

    @Update("UPDATE tblcollaborationsdocs"
            + "SET status= #{status} "
            + "WHERE idUserReciver = #{idUserReceiver} and tblUserSender = #{idUserSender}")
    public String updateCollaborationPanel(Users user) throws DataAccessException;
    
    /* --------------- End Hilda -------------------- */

    
}
