/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.mappers;

import com.socialdevelop.entities.Messages;
import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author YoselineGuevara
 */
public interface MessageMapper {

    /*@Select("SELECT b.profilePhoto, b.name,b.surname, a.dateMessage, A.message, a.privacity, c.projectName"
            + " FROM tblmessages A "
            + "INNER JOIN tblusers B ON A.idUser = B.idUser "
            + "INNER JOIN tblprojects C on a.idProject = c.idProject"
            + "WHERE A.idUser = #{id}")
    @Results(
            value = {
                @Result (property = "profilePhoto", column = "profilePhoto"),
                @Result (property = "name", column = "name"),
                @Result (property = "surname", column = "surname"),
                @Result (property = "dateMessage", column = "dateMessage"),
                @Result (property = "message", column = "message"),                
                @Result (property ="privacity", column = "privacity"),
                @Result (property ="projectName", column ="projectName")
            }
    )*/
    //List<Messages> listMessage (@Param("id") Long projectId); 
    @Select("SELECT T1.message, T1.dateMessage, T2.name, T2.surname\n"
            + "            FROM tblmessages T1 \n"
            + "            INNER JOIN tblusers T2 ON T1.idUser = T2.idUser\n"
            + "            WHERE T2.idUser = #{id}")
    @Results(
            value = {
                @Result(property = "message", column = "T1.message"),
                @Result(property = "dateMessage", column = "T1.dateMessage"),
                @Result(property = "name", column = "T2.name"),
                @Result(property = "surname", column = "T2.surname"),
            }
    )
    public ArrayList<Messages> showMessages(Integer id) throws DataAccessException;

    @Insert("INSERT INTO tblmessages(message, idUser, idProject,  privacity) VALUES"
            + "(#{message}, #{idUser}, #{idProject},  #{privacity})")
    public Integer insertMesagges(Messages msg) throws DataAccessException;

    @Delete("DELETE FROM tblmessages WHERE idMessage=#{idMessage}")

    public Messages deleteMesagges(Messages msg) throws DataAccessException;

}
