/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.controllers;

import com.socialdevelop.entities.Project;
import com.socialdevelop.entities.Users;
import com.socialdevelop.services.ProjectService;
import com.socialdevelop.services.RegisterService;
import com.socialdevelop.services.UserService;
import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.multipart.MultipartFile;
/**
 *
 * @author evers
 */
@Controller
@RequestMapping("/app")
public class AppController{
    List<Project> projectList=null;
    @Autowired UserService service_user;
    @Autowired ProjectService service_project;
    @Autowired RegisterService service_register;
    @Autowired  private HttpServletRequest request;

    @RequestMapping("/main")
    public String main(ModelMap model){
        projectList=service_project.browseProjects();
        model.put("projectlist", projectList);
        return "home-page";
    }
    
    @RequestMapping("/gotologinpage")
    public String goToLoginPage()
    {
        return "login-page";
    }
    
    @RequestMapping("/allprojects")
    public String showAllProjects(ModelMap model)
    {
        model.put("projectlist", projectList);
        /////here check the session then do this 
        model.put("display","inline");
        return "all-projects";
    }
    
    @RequestMapping(value="/projectpage", method = RequestMethod.GET)
    public String viewProjectInfo(@RequestParam("name") String name,ModelMap model)
    {
        int id=1;
        Project project=new Project();
        project.setName(name);
        //Project project=service_project.viewProjectInfo(id);
        model.put("project", project);
        return "project-page";
    }
    @RequestMapping(value="/gotoaddproject")
    public String goToAddProjectPage(){
        return "add-project";
    }
    
    @RequestMapping(value="/addproject", method=RequestMethod.POST)
    public String addProject(@RequestParam("name") String name){
        Project project=new Project();
        project.setName(name);
        service_project.addProject(project);
        return "add-project";
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginUser(@RequestParam("name") String name, @RequestParam("password") String password, ModelMap model){
        Users user;
        
        if("".equals(name) || "".equals(password)){
            model.put("error", "You have to fill all the fields.");
            return "login-page";
        }
        
        user = service_user.login(new Users(name, password));
        
        if(user!=null){
            utilities.UserSession.setUserData(user);
            model.put("SESSION", utilities.UserSession.getUserData());
            //projectList=service_project.browseProjects();
            model.put("projectlist", projectList);
            return "home-page";
        }
        
        model.put("error", "User doesn't exist, please try again.");
        return "login-page";
    }
    
    @RequestMapping("/logout")
    public String logout(){
        /*Clean the data of the user logged.*/
        return "login-page";
    }
    
    
    
       @RequestMapping(value ="/register", method = RequestMethod.POST)
//@RequestParam("birthDate")Date birthDate,,@RequestParam("profilePhoto")MultipartFile profilePhoto,
    public String register(@RequestParam("name") String name, 
            @RequestParam("password") String password, 
            @RequestParam("surname") String surname, 
            @RequestParam("nickname") String nickname,
            @RequestParam("email")String email,
            @RequestParam("phoneNumber")String phoneNumber,
            @RequestParam("gender")String gender,
            @RequestParam("aboutMe")String aboutMe,
            @RequestParam("address")String address ,
           
            ModelMap model) throws IOException{
       // Users user; @RequestParam("curriculum")MultipartFile curriculum,
        //|| "".equals(birthDate)|| "".equals(curriculum)|| "".equals(profilePhoto)
        if("".equals(name) || "".equals(password)|| "".equals(surname)|| "".equals(nickname)|| "".equals(email)|| "".equals(phoneNumber)|| "".equals(gender)|| "".equals(aboutMe)|| "".equals(address)){
            model.put("error", "You have to fill all the fields.");
            return "login-page" ;
        }
        //curriculum,profilePhoto,,birthDate
        /*
        model.put("curriculum", "Register");   
        StringBuilder pathCurrent = new StringBuilder(request.getServletContext().getRealPath("/"));
        pathCurrent.delete(pathCurrent.length() - 10, pathCurrent.length());
        pathCurrent.append("WebPages/resources/curriculums/");
        if (!curriculum.isEmpty()) {
            try {
                String CURRICULUM = curriculum.getOriginalFilename();
                File f = new File(pathCurrent.toString(), CURRICULUM);
                if (f.exists()) {
                    Calendar calendario = Calendar.getInstance();
                    int anio = calendario.get(Calendar.YEAR),
                            mes = calendario.get(Calendar.MONTH),
                            dia = calendario.get(Calendar.DAY_OF_MONTH),
                            hora = calendario.get(Calendar.HOUR_OF_DAY),
                            min = calendario.get(Calendar.MINUTE),
                            seg = calendario.get(Calendar.SECOND),
                            ml = calendario.get(Calendar.MILLISECOND);

                    CURRICULUM = "CURR" + anio + (mes + 1) + dia + hora + min + seg + ml + ".pdf";
                    f = new File(pathCurrent.toString(), CURRICULUM);
                
                }
                curriculum.transferTo(f);}
        catch (Exception ex) { 
                model.put("error", "Error: You failed to upload " + ex.getMessage());
                }}
            
             else {
            model.put("error", "Error: You failed to upload curriculum because the file was empty");
                     }
        
        /*curriculum,profilePhoto,
        */
        service_register.register(new Users(name,surname,password,nickname,email,phoneNumber,gender,aboutMe,address));
        System.out.println("controller");
        
        return "login-page";}

    
    
    
    
}