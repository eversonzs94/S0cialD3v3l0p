/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilities;

import com.socialdevelop.entities.Users;

/**
 *
 * @author evers
 */
public class UserSession {
    
    private static Users user = null;
    
    public static void setUserData(Users usr){
        user = usr;
    }
    
    public static Users getUserData(){
        return user;
    }
    
}
