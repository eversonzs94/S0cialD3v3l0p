/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.mappers;

import com.socialdevelop.entities.Users;
import java.util.List;
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

    //SELECT * FROM `tbltasks` INNER JOIN `tblusers` INNER JOIN `tbltasksdevelopers` on `tbltasks`.`idTask`=`tbltasksdevelopers`.`idTask` AND `tblusers`.`idUser`=`tbltasksdevelopers`.`idUser` INNER JOIN `tblprojects` ON `tbltasks`.`idProject`=`tblprojects`.`idProject`
    //@Select(SELECT * FROM tbltasls INNER JOIN tblUsers INNER JOIN tbltasksdevelopers ON )
}
