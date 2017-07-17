/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.controllers;

import com.socialdevelop.entities.Messages;
import com.socialdevelop.entities.Project;
import com.socialdevelop.entities.Users;
import com.socialdevelop.services.MessageService;
import com.socialdevelop.services.ProjectService;
import com.socialdevelop.services.RegisterService;
import com.socialdevelop.services.UserService;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ResponseBody;
import com.google.gson.Gson;
import com.socialdevelop.entities.Tasks;
import com.socialdevelop.entities.Type;
import com.socialdevelop.services.SearchService;
import com.socialdevelop.services.SkillService;
import com.socialdevelop.services.TaskService;
import com.socialdevelop.services.TypeService;
import java.util.Properties;
//import javax.websocket.Session;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author evers
 */
@Controller
@RequestMapping("/app")
public class AppController {

    /* --------------- Start Didi -------------------- */

    List<Project> projectList = null;
    List<Users> developerList=null;
    
    String displaySession="";
    String displayHomePage="";
    
    @Autowired UserService service_user;
    @Autowired ProjectService service_project;
    @Autowired SearchService service_search;
    @Autowired RegisterService service_register; 
    @Autowired private HttpServletRequest request;
    @Autowired MessageService service_message;
    @Autowired TypeService service_type;
    @Autowired TaskService service_task;
    @Autowired SkillService service_skill;
    
    

    @RequestMapping("/main")
    public String main(ModelMap model) {
        projectList=service_project.browseProjects();
        developerList=service_user.browseDevelopers();
        model.put("developerlist",developerList);
        checkSession();
        model.put("displaySession",displaySession);
        model.put("displayHomePage",displayHomePage);
        List<Project> subProjectList=projectList.subList(0,6);
        model.put("projectlist", subProjectList);
        return "home-page";
    }
    
    private void checkSession(){
       if (utilities.UserSession.getUserData()==null){
           displayHomePage="";
           displaySession="none";
       }
       else{
           displayHomePage="none";
           displaySession="";
       }
    }
    
    @RequestMapping("/gotologinpage")
    public String goToLoginPage(ModelMap model){
        checkSession();
        model.put("displaySession",displaySession);
        model.put("displayHomePage",displayHomePage);
        return "login-page";
    }
    
    @RequestMapping("/allprojects")
    public String showAllProjects(ModelMap model)
    {
        checkSession();
        model.put("displaySession",displaySession);
        model.put("displayHomePage",displayHomePage);
        if (displaySession.equals("none"))
        {
            model.put("showall","");
            model.put("showparts","none");
            model.put("projectlist", projectList);
        }
        else
        {
            model.put("showall","none");
            model.put("showparts","");
            int id=utilities.UserSession.getUserData().getIdUser();
            List<Project> projectListByID=service_project.browseProjectsByID(id);
            model.put("projectlist", projectListByID);
            List<Project> otherProjectList=service_project.browseOtherProjects(id);
            model.put("otherprojectlist", otherProjectList);
        }
        return "all-projects";
    }
    
    @RequestMapping(value="/projectpage", method = RequestMethod.GET)
    public String viewProjectInfo(@RequestParam("id") int id,ModelMap model){
        Project project=service_project.viewProjectInfo(id);
        checkSession();
        model.put("displaySession",displaySession);
        model.put("displayHomePage",displayHomePage);
        model.put("project", project);
        if(utilities.UserSession.getUserData() != null){
            model.put("idUser", utilities.UserSession.getUserData().getIdUser());
        }
        model.put("coordinatorProject", service_project.projectCoordinator(id));
        model.put("tasksList", service_task.getProjectTasks(id));
        
        //List<Tasks> taskSkills = service_task.getListSkillsTask(id);
        
        //model.put("taskSkills", taskSkills);
        
        return "project-page";
    }
    
    @RequestMapping(value="/gotoaddproject")
    public String goToAddProjectPage(ModelMap model){
        checkSession();
        model.put("displaySession",displaySession);
        model.put("displayHomePage",displayHomePage);
        return "add-project";
    }
    
    @RequestMapping(value="/gotosearchdeveloperspage")
    public String goToSearchDevelopersPage(ModelMap model){
        checkSession();
        model.put("displaySession",displaySession);
        model.put("displayHomePage",displayHomePage);
        return "developers-search";
    }
    
    @RequestMapping(value="/addproject", method=RequestMethod.POST)
    public String addProject(@RequestParam("name") String name, @RequestParam("description") String description,ModelMap model){
        Project project=new Project();
        project.setName(name);
        project.setDescription(description);
        project.setStatus("Open");
        checkSession();
        model.put("displaySession",displaySession);
        model.put("displayHomePage",displayHomePage);
        service_project.addProject(project);
        typeList=service_type.typeList();
        model.put("typeList", typeList);
        model.put("project", service_project.viewProjectInfo(service_project.lastProjectInserted()));
        return "go-create-task";
    }
    
    @RequestMapping(value="/searchproject", method=RequestMethod.POST)
    public String searchProject(@RequestParam("keyword") String keyword,ModelMap model){
        String[] keywords = keyword.split(" +");
        List<Project>  projectResult=service_search.searchProjectMultipleKeywords(keywords);
        checkSession();
        model.put("showall","");
        model.put("showparts","none");
        model.put("displaySession",displaySession);
        model.put("displayHomePage",displayHomePage);
        model.put("projectlist",projectResult);
        return "all-projects";
    }
    
    @RequestMapping("/logout")
    public String logout(ModelMap model){
        /*Clean the data of the user logged.*/
        utilities.UserSession.setUserData(null);
        checkSession();
        model.put("displaySession",displaySession);
        model.put("displayHomePage",displayHomePage);
        List<Project> subProjectList=projectList.subList(0, 5);
        model.put("projectlist", subProjectList);
        return "home-page";
    }
    
    @RequestMapping(value="/searchdevelopers")
    public String searchDevelopers(@RequestParam("skill") String[] skills, @RequestParam("level") int[] levels){
        
        List<Users> search=service_search.searchDevelopers(skills, levels);
        for(Users user:search)
        {
            System.out.println(user.getName());
        }
            
        return "home-page";
    }
    
    private void sendMessage(){
        final String username = "dimaayash91@gmail.com";
        final String password = "";

        Properties props = new Properties();
	props.put("mail.smtp.auth", "true");
	props.put("mail.smtp.starttls.enable", "true");
	props.put("mail.smtp.host", "smtp.gmail.com");
	props.put("mail.smtp.port", "587");

	Session session = Session.getInstance(props,
	new javax.mail.Authenticator() {
        @Override
	protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(username, password);
            }
	});

	try {

	Message message = new MimeMessage(session);
	message.setFrom(new InternetAddress("from-email@gmail.com"));
	message.setRecipients(Message.RecipientType.TO,
	InternetAddress.parse("dimaayash91@hotmail.com"));
	message.setSubject("Testing Subject");
	message.setText("Dear Mail Crawler,"
	+ "\n\n No spam to my email, please!");

	Transport.send(message);

	System.out.println("Done");

	} catch (MessagingException e) {
            throw new RuntimeException(e);
	}
    }
    
    /* --------------- End Didi -------------------- */
    
    
    /* --------------- Start Everson -------------------- */
    
    List<Type> typeList;
    
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
            checkSession();
            model.put("displaySession",displaySession);
            model.put("displayHomePage",displayHomePage);
            List<Project> projectListByID=service_project.browseProjectsByID(utilities.UserSession.getUserData().getIdUser());
            model.put("projectlist", projectListByID);
            return "home-page";
        }
        
        model.put("error", "User doesn't exist, please try again.");
        return "login-page";
    }
    
    @RequestMapping(value="/goCreateTask", method=RequestMethod.POST)
    public String goCreateTask(@RequestParam("idProject") int idProject, ModelMap model){
        typeList=service_type.typeList();
        model.put("typeList", typeList);
        model.put("project", service_project.viewProjectInfo(idProject));
        model.put("skillList", service_skill.showSkillsList());
        return "go-create-task";
    }
    
    @RequestMapping(value="/createTask", method=RequestMethod.POST)
    public String createTask(@RequestParam("taskName") String taskName,
            @RequestParam("description") String description,
            @RequestParam("collaboratorsNum") int collaboratorsNum,
            @RequestParam("startDate") String startDate,
            @RequestParam("dueDate") String dueDate,
            @RequestParam("type") int idType,
            @RequestParam("idProject") int idProject,
            @RequestParam("idSkill") int[] idSkills,
            @RequestParam("skillLevel") int[] levels,
            ModelMap model){
        
        int resultAddTask;
        typeList = service_type.typeList();
        
        if("".equals(taskName) || "".equals(description) || "".equals(collaboratorsNum) || "".equals(startDate) || "".equals(dueDate) || "".equals(idType)){
            model.put("error", "You have to fill all the fields. *");
            model.put("project", service_project.viewProjectInfo(idProject));
            model.put("typeList", typeList);
            model.put("skillList", service_skill.showSkillsList());
            return "go-create-task";
        }
        
        resultAddTask = service_task.addTask(new Tasks(taskName, description, "Open", collaboratorsNum, idType, idProject, startDate, dueDate));
        service_task.insertTaskSkills(idSkills, levels);
        
        model.put("project", service_project.viewProjectInfo(idProject));
        model.put("typeList", typeList);
        model.put("skillList", service_skill.showSkillsList());
        model.put("message", "You have created a new task.");
        return "go-create-task";
    }
    
    /* --------------- End Everson -------------------- */
    
    /* --------------- Start Tala -------------------- */

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
           @RequestParam("birthDate")String birthDate,
            ModelMap model) throws IOException{
       // Users user; @RequestParam("curriculum")MultipartFile curriculum,
        //|| "".equals(birthDate)|| "".equals(curriculum)|| "".equals(profilePhoto)
        if("".equals(name) || "".equals(password)|| "".equals(birthDate)|| "".equals(surname)|| "".equals(nickname)|| "".equals(email)|| "".equals(phoneNumber)|| "".equals(gender)|| "".equals(aboutMe)|| "".equals(address)){
            model.put("error", "You have to fill all the fields.");
            return "login-page" ;
        }
        service_register.register(new Users(name,surname,password,nickname,email,phoneNumber,gender,aboutMe,birthDate,address));
        System.out.println("controller");
        
        return "login-page";}

     @RequestMapping("/alldevelopers")
    public String browseDevelopers(ModelMap model)
    {
        model.put("developerlist", developerList);
        return "all-developers";
    }
    
  
    @RequestMapping(value="/profilepage", method = RequestMethod.GET)
    public String viewDeveloperInfo(@RequestParam("nickname") String nickname, ModelMap model)
    {
        
        Users developer=new Users();
        developer=service_user.viewDeveloperInfo(nickname);
       
        //Project project=service_project.viewProjectInfo(id);
        model.put("developer", developer);
        
        return "profile-page";
    }
    
    
    /* --------------- End Tala -------------------- */

    
    /* --------------- Start Hilda -------------------- */
    
    @RequestMapping(value = "/message", method = RequestMethod.GET)
    public String showMessages(@ModelAttribute("message") Messages message,
            ModelMap model) {
        model.addAttribute("message", message.getMessage());

        return "message";
    }

    @RequestMapping(value = "/insertMessage", method = RequestMethod.GET)
    public @ResponseBody
    String insertMessage(@RequestParam("message") String message,
            @RequestParam("idUser") Integer idUser,
            @RequestParam("idProject") Integer idProject,
            @RequestParam("privacy") String privacy, ModelMap model) {

        int response;

        if (message != null && idProject != 0 && idUser != 0 && privacy != null) {

            Messages men = new Messages(message, idProject, idUser, privacy);

            response = service_message.insertMessage(men);

            if (response == 1) {
                return "1";
            } else if (response == 0) {
                return "2";
            } else {
                return "3";
            }
        } else {
            return "4";
        }
    }

    @RequestMapping(value = "/getMessages", method = RequestMethod.GET, headers = "Accept=application/json")
    public @ResponseBody
    String getMessages(@RequestParam("idUser") Integer idUser,@RequestParam("idProject") Integer idProject,
            ModelMap model) {

        ArrayList<Messages> messages = new ArrayList<>();

        messages = service_message.getMessages(idUser, idProject);

        return new Gson().toJson(messages);

    }

    @RequestMapping(value = "/isInvolvingInProject", method = RequestMethod.GET, headers = "Accept=application/json")
    public @ResponseBody
    String isInvolvingInProject(@RequestParam("idUser") Integer idUser,
        @RequestParam("idProject") Integer idProject, ModelMap model) {

        Integer response = service_project.isInvolvingInProject(idProject, idUser);
        return new Gson().toJson(response);
    }
    
    /* --------------- End Hilda -------------------- */
    
    
    /* --------------- Start Deyanira -------------------- */
    
    
    
    /* --------------- End Deyanira -------------------- */

}
