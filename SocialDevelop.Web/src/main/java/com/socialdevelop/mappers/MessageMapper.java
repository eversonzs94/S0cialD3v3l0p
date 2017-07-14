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
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author YoselineGuevara
 */
public interface MessageMapper {

    @Select("SELECT DISTINCT T1.message, T1.dateMessage, T2.name, T2.surname, T1.privacity\n" +
"            FROM tblmessages T1\n" +
"			left JOIN tblusers T2 ON T1.idUser = T2.idUser\n" +
"            left JOIN tblusersprojects T3 ON T2.idUser = T3.idUser\n" +
"            WHERE T1.idProject = #{idProject}")
    @Results(
            value = {
                @Result(property = "message", column = "T1.message"),
                @Result(property = "dateMessage", column = "T1.dateMessage"),
                @Result(property = "name", column = "T2.name"),
                @Result(property = "surname", column = "T2.surname"),
                @Result(property = "privacity", column ="T1.privacity")
            }
    )
    public ArrayList<Messages> getMessages(@Param("idUser") Integer idUser, @Param("idProject") Integer idProject) throws DataAccessException;

    @Insert("INSERT INTO tblmessages(message, idUser, idProject,  privacity) VALUES"
            + "(#{message}, #{idUser}, #{idProject},  #{privacity})")
    public Integer insertMesagges(Messages msg) throws DataAccessException;

    @Delete("DELETE FROM tblmessages WHERE idMessage=#{idMessage}")
    public Messages deleteMesagges(Messages msg) throws DataAccessException;

}
