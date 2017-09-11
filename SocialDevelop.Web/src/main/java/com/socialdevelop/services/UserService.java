/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.services;

import com.socialdevelop.entities.Project;
import com.socialdevelop.entities.Users;
import com.socialdevelop.mappers.UserMapper;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

/**
 *
 * @author evers
 */
@Service
public class UserService {

    @Autowired
    UserMapper mapper;

    public Users login(Users user) {
        try {
            return mapper.login(user);
        } catch (DataAccessException ex) {
            //Save errors in log file.
        }
        return null;
    }

    public List<Users> browseDevelopers() {
        return mapper.browseDevelopers();
    }

    public Users viewDeveloperInfo(String nickname) {
        return mapper.viewDeveloperInfo(nickname);

    }

    public Users viewMyProfile(String nickname) {
        return mapper.viewDeveloperInfo(nickname);

    }

    public int updateMyProfile(Users user) {
        try {
            return mapper.updateMyProfile(user);
            //System.out.println("hello");

        } catch (DataAccessException ex) {
            //  System.out.println("errorrrrrr");
            //Save errors in log file.
        }
        return 0;
    }
    
    
    public List<Project> getDeveloperProjects(int idUser) {
        try {
            return mapper.getDeveloperProjects(idUser);
            //System.out.println("hello");

        } catch (DataAccessException ex) {
            System.out.println("errorrrrrr" + ex.getMessage());
            //Save errors in log file.

        }
        return null;
    }

    public List<Project> getCoordProjects(int idUser) {
        try {
            return mapper.getCoordProjects(idUser);
            //System.out.println("hello");

        } catch (DataAccessException ex) {
            System.out.println("errorrrrrr" + ex.getMessage());
            //Save errors in log file.

        }
        return null;
    }
    
    public List<String> checkNickname() {

        try {
            return mapper.checkNickname();
        } catch (DataAccessException ex) {
            System.out.println("errorrrrrr" + ex.getMessage());
        }
        return null;
    }

    public List<String> checkEmail() {

        try {
            return mapper.checkEmail();
        } catch (DataAccessException ex) {
            System.out.println("errorrrrrr" + ex.getMessage());
        }
        return null;
    }
    
    public int addReferences(int[] users,String[] references,int idTask)
    {
        for (int i = 0; i < users.length; i++)
        {
           mapper.addReference(idTask, users[i], references[i]);
        }
        return 0;
    }
    
    public List<Users> viewUsersForTask(int idTask){
        return mapper.viewUsersForTask(idTask);
    }
    
    /* --------------- Start Hilda -------------------- */
    
    public ArrayList<Users> offerPanelCoodinator() {
        try {
            return mapper.offerPanelCoodinator();
        } catch (DataAccessException ex) {
            return null;
        }

    }

    public ArrayList<Users> applicationPanel(Integer idUserReciver) {
        try {
            return mapper.applicationPanel(idUserReciver);
        } catch (DataAccessException ex) {
            return null;
        }

    }

    public ArrayList<Users> invitationPanel(Integer idUserSender) {
        try {
            return mapper.invitationPanel(idUserSender);
        } catch (DataAccessException ex) {
            return null;
        }
    }
    
    public ArrayList<Users> proposalPanel(Integer idUserReceiver) {
        try {
            return mapper.proposalPanel(idUserReceiver);
        } catch (DataAccessException ex) {
            return null;
        }
    }
    
    public Integer insertTaskDevelopersFromApplicationPanel(Users user) {
        try {
            return mapper.insertTaskDevelopersFromApplicationPanel(user);
        } catch (DataAccessException ex) {
            return -1;
        }
    }

    public Integer insertTaskDevelopersFromProposalPanel(Integer idUser, Integer idTask) {
        //insert to tblCollaborationDocs
        try {
            return mapper.insertTaskDevelopersFromProposalPanel(idUser,idTask);
        } catch (DataAccessException ex) {
            System.out.println(ex.getMessage());
            return -1;
        }
    }
    
    public Integer insertOfferPanelToApplication(Users user) {
        //insert to tblCollaborationDocs
        try {
            return mapper.insertOfferPanelToApplication(user);
        } catch (DataAccessException ex) {
            return -1;
        }
    }

    public Integer updateCollaborationPanel(Users user) {
        try {
            return mapper.updateCollaborationPanel(user);
        } catch (DataAccessException ex) {
            return 0;
        }
    }

    public Integer updateCollaborationPanelFromInvitation(Users user) {
        try {
            return mapper.updateCollaborationPanelFromInvitation(user);
        } catch (DataAccessException ex) {
            return 0;
        }
    }
    
    /* --------------- End Hilda -------------------- */

    /* --------------- Deyanira -------------------- */
   
    public int insertUserSkills(int[] idSkills, int[] levels){
        int idUser = lastUserInserted();
        for (int i = 0; i < idSkills.length; i++){
            if (!"".equals(idSkills[i])){
                try{
                   mapper.insertUserSkills(idSkills[i], idUser, levels[i]);
                }catch(DataAccessException ex){
                    System.out.println("Error: ---> " + ex.getMessage());
                    return 0;
                } 
            }
        }
        return 1;
    }
    public int lastUserInserted(){
        try{
            return mapper.lastUserInserted();
        }catch(DataAccessException ex){
            return 0;
        }
    }
    
    public Users viewUserInfo(int id) {
        return mapper.viewUserInfo(id);
    }
    
    /* --------------- End Deyanira -------------------- */
    
    public List<Integer> checkCoord(){
    try {
            return mapper.checkCoord();
        } catch (DataAccessException ex) {
            System.out.println("errorrrrrr" + ex.getMessage());
        }
        return null;
    }
    
}
