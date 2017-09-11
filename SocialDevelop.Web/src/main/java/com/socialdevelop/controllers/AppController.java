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
import com.socialdevelop.entities.Skills;
import com.socialdevelop.entities.Tasks;
import com.socialdevelop.entities.Type;
import com.socialdevelop.services.SearchService;
import com.socialdevelop.services.SkillService;
import com.socialdevelop.services.TaskService;
import com.socialdevelop.services.TypeService;
import java.io.File;
import java.util.Calendar;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author evers
 */
@Controller
@RequestMapping("/app")
public class AppController {

    /* --------------- Start Didi -------------------- */
    List<Project> projectList = null;
    List<Users> developerList = null;
    List<String> nicknamesList = null;
    List<String> emailsList = null;
    List<Integer> coordList=null;

    String displaySession = "";
    String displayHomePage = "";
    int idTaskForRefernces=0;
    
    @Autowired
    UserService service_user;
    @Autowired
    ProjectService service_project;
    @Autowired
    SearchService service_search;
    @Autowired
    RegisterService service_register;
    @Autowired
    private HttpServletRequest request;
    @Autowired
    MessageService service_message;
    @Autowired
    TypeService service_type;
    @Autowired
    TaskService service_task;
    @Autowired
    SkillService service_skill;

    @RequestMapping("/main")
    public String main(ModelMap model) {
        projectList = service_project.browseProjects();
        developerList = service_user.browseDevelopers();
        model.put("developerlist", developerList);
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        int size;
        if (projectList.size()<3)
        {
            size=projectList.size();
        }
        else
        {
            size=3;
        }
        List<Project> subProjectList = projectList.subList(0,size);
        model.put("projectlist", subProjectList);
        return "home-page";
    }

    private void checkSession() {
        if (utilities.UserSession.getUserData() == null) {
            displayHomePage = "";
            displaySession = "none";
        } else {
            displayHomePage = "none";
            displaySession = "";
        }
    }

    @RequestMapping("/gotologinpage")
    public String goToLoginPage(ModelMap model) {
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        return "login-page";
    }

    @RequestMapping("/allprojects")
    public String showAllProjects(ModelMap model) {
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        if (displaySession.equals("none")) {
            model.put("showall", "");
            model.put("showparts", "none");
            model.put("projectlist", projectList);
        } else {
            model.put("showall", "none");
            model.put("showparts", "");
            int id = utilities.UserSession.getUserData().getIdUser();
            List<Project> projectListByID = service_project.browseProjectsByID(id);
            model.put("projectlist", projectListByID);
            List<Project> otherProjectList = service_project.browseOtherProjects(id);
            model.put("otherprojectlist", otherProjectList);
        }
        return "all-projects";
    }

    @RequestMapping(value = "/projectpage", method = RequestMethod.GET)
    public String viewProjectInfo(@RequestParam("id") int id, ModelMap model) {
        Project project = service_project.viewProjectInfo(id);
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        model.put("project", project);
        if (utilities.UserSession.getUserData() != null) {
            model.put("idUser", utilities.UserSession.getUserData().getIdUser());
        }
        model.put("coordinatorProject", service_project.projectCoordinator(id));
        //model.put("tasksList", service_task.getProjectTasks(id));

        List<Tasks> taskSkills = service_task.getListSkillsTask(id);

        model.put("taskSkills", taskSkills);

        return "project-page";
    }

    @RequestMapping(value = "/gotoaddproject")
    public String goToAddProjectPage(ModelMap model) {
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        if (displaySession.equals("none"))
            return"error-page";
        else
            return "add-project";
    }

@RequestMapping(value = "/gotosearchdeveloperspage")
    public String goToSearchDevelopersPage(ModelMap model) {
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        List<Skills> leafSkills=service_skill.showSkillsList();
        model.put("skills",leafSkills);
        return "developers-search";
    }

    @RequestMapping(value = "/addproject", method = RequestMethod.POST)
    public String addProject(@RequestParam("name") String name, @RequestParam("description") String description, ModelMap model) {
        Project project = new Project();
        project.setName(name);
        project.setDescription(description);
        project.setStatus("Open");
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        service_project.addProject(project);
        typeList = service_type.typeList();
        model.put("typeList", typeList);
        model.put("skillList", service_skill.showSkillsList());
        model.put("project", service_project.viewProjectInfo(service_project.lastProjectInserted()));
        return "go-create-task";
    }

    @RequestMapping(value = "/searchproject", method = RequestMethod.POST)
    public String searchProject(@RequestParam("keyword") String keyword, ModelMap model) {
        String[] keywords = keyword.split(" +");
        List<Project> projectResult = service_search.searchProjectMultipleKeywords(keywords);
        checkSession();
        model.put("showall", "");
        model.put("showparts", "none");
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        model.put("projectlist", projectResult);
        return "all-projects";
    }

    @RequestMapping("/logout")
    public String logout(ModelMap model) {
        /*Clean the data of the user logged.*/
        utilities.UserSession.setUserData(null);
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        int size;
        if (projectList.size()<3)
        {
            size=projectList.size();
        }
        else
        {
            size=3;
        }
        List<Project> subProjectList = projectList.subList(0,size);
        model.put("projectlist", subProjectList);
        return "home-page";
    }

     @RequestMapping(value = "/searchdevelopers")
    public String searchDevelopers(@RequestParam("skill") String[] skills, @RequestParam("level") int[] levels, ModelMap model) {
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        List<Users> search = service_search.searchDevelopers(skills, levels);
        for (Users user : search) {
            System.out.println(user.getName());
        }
        model.put("developerlist", search);
        return "all-developers";
    }

    
    @RequestMapping(value = "/contactus", method = RequestMethod.POST)
    public String contactUs(@RequestParam("name") String name, 
            @RequestParam("email") String email,
             @RequestParam("message") String message,
             ModelMap model) {
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        int size;
        if (projectList.size()<3)
        {
            size=projectList.size();
        }
        else
        {
            size=3;
        }
        List<Project> subProjectList = projectList.subList(0,size);
        model.put("projectlist", subProjectList);
        String msg="The user with the name: "+name+"and the email: "+email+" sends this question:\n"+
                message;
        sendMessage(msg, "socialdevelopteam@gmail.com", "Get Information");
        return "home-page";
    }
    
    @RequestMapping("/gotoaboutus")
    public String goToAboutUs(ModelMap model) {
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        return "about-us";
    }
    
    @RequestMapping("/alldevelopersfortask")
    public String  allDevelopersForTask(@RequestParam("id") int taskId  ,ModelMap model) {
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        List<Users> usersForTaskList=service_user.viewUsersForTask(taskId);
        idTaskForRefernces=taskId;
        model.put("usersfortasklist",usersForTaskList);
        for(Users user: usersForTaskList)
        {
            System.out.println(user.getName());
        }
        //model.put("")
        return "developers-for-task";
    }
    
    @RequestMapping(value = "/addreferences",method = RequestMethod.POST)
    public String addReferences(@RequestParam("users") int[] users, 
            @RequestParam("references") String[] references, 
            ModelMap model) {
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        
        service_user.addReferences(users, references, idTaskForRefernces);
        

        return "home-page";
    }

    private void sendMessage(String msg, String email,String subject) {
        final String username = "socialdevelopteam@gmail.com";
        final String password = "socialdevelop123456";

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
                    InternetAddress.parse(email));
            message.setSubject(subject);
            message.setText(msg);

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
    public String loginUser(@RequestParam("name") String name, @RequestParam("password") String password, ModelMap model) {
        Users user;

        if ("".equals(name) || "".equals(password)) {
            model.put("error", "You have to fill all the fields.");
            return "login-page";
        }

        user = service_user.login(new Users(name, password));

        if (user != null) {
            utilities.UserSession.setUserData(user);
            model.put("SESSION", utilities.UserSession.getUserData());
            checkSession();
            model.put("displaySession", displaySession);
            model.put("displayHomePage", displayHomePage);
            List<Project> projectListByID = service_project.browseProjectsByID(utilities.UserSession.getUserData().getIdUser());
            model.put("projectlist", projectListByID);
            return "home-page";
        }

        model.put("error", "User doesn't exist, please try again.");
        return "login-page";
    }

    @RequestMapping(value = "/goCreateTask", method = RequestMethod.POST)
    public String goCreateTask(@RequestParam("idProject") int idProject, ModelMap model) {
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        typeList = service_type.typeList();
        model.put("typeList", typeList);
        model.put("project", service_project.viewProjectInfo(idProject));
        return "go-create-task";
    }

    @RequestMapping(value = "/getTypeSkills", method = RequestMethod.GET, headers = "Accept=Applications/json")
    public @ResponseBody String getTypeSkills(ModelMap model) {
        List<Type> typeSkillList=service_type.typeSkillList();
        return new Gson().toJson(typeSkillList);
    }
    
    @RequestMapping(value = "/createTask", method = RequestMethod.POST)
    public String createTask(@RequestParam("taskName") String taskName,
            @RequestParam("description") String description,
            @RequestParam("collaboratorsNum") int collaboratorsNum,
            @RequestParam("startDate") String startDate,
            @RequestParam("dueDate") String dueDate,
            @RequestParam("type") int idType,
            @RequestParam("idProject") int idProject,
            @RequestParam("idSkill") int[] idSkills,
            @RequestParam("skillLevel") int[] levels,
            ModelMap model) {

        int resultAddTask;
        typeList = service_type.typeList();

        if ("".equals(taskName) || "".equals(description) || "".equals(collaboratorsNum) || "".equals(startDate) || "".equals(dueDate) || "".equals(idType)) {
            model.put("error", "You have to fill all the fields. *");
            model.put("project", service_project.viewProjectInfo(idProject));
            model.put("typeList", typeList);
            model.put("skillList", service_skill.showSkillsList());
            return "go-create-task";
        }

        resultAddTask = service_task.addTask(new Tasks(taskName, description, "Open", collaboratorsNum, idType, idProject, startDate, dueDate));
        service_task.insertTaskSkills(idSkills, levels);
        
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);

        model.put("project", service_project.viewProjectInfo(idProject));
        model.put("typeList", typeList);
        model.put("message", "You have created a new task.");
        return "go-create-task";
    }
    
    @RequestMapping(value = "/taskPage", method = RequestMethod.GET)
    public String viewTaskInfo(@RequestParam("idTask") int idTask, ModelMap model) {
        Tasks task = service_task.getTaskInfo(idTask);
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        
        model.put("projectInfo", service_project.getProjectOfTask(idTask));
        model.put("task", task);
        
        return "task-page";
    }

    /* --------------- End Everson -------------------- */
 /* --------------- Start Tala -------------------- */
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    //@RequestParam("birthDate")Date birthDate,,@RequestParam("profilePhoto")MultipartFile profilePhoto,
    public String register(@RequestParam("name") String name,
            @RequestParam("password") String password,
            @RequestParam("surname") String surname,
            @RequestParam("nickname") String nickname,
            @RequestParam("email") String email,
            @RequestParam("phoneNumber") String phoneNumber,
            @RequestParam("curriculum") MultipartFile file,
            @RequestParam("gender") String gender,
            @RequestParam("aboutMe") String aboutMe,
            @RequestParam("address") String address,
            @RequestParam("birthDate") String birthDate,
            ModelMap model) throws IOException {
        // Users user; @RequestParam("curriculum")MultipartFile curriculum,
        //|| "".equals(birthDate)|| "".equals(curriculum)|| "".equals(profilePhoto), || "".equals(aboutMe)
        if ("".equals(name) || "".equals(password) || "".equals(birthDate) || "".equals(surname) || "".equals(nickname) || "".equals(email)) {
            model.put("error", "You have to fill all the fields.");
            return "login-page";
        }
        nicknamesList = service_user.checkNickname();
        emailsList = service_user.checkEmail();
        //int nicknamecheck= service_user.checkNickname(nickname);
        if (nicknamesList.contains(nickname)) {
            model.put("error", "Nickname exists, please choose another.");
            return "login-page";
        }
        if (emailsList.contains(email)) {
            model.put("error", "Email exists, please choose another.");
            return "login-page";
        }

        StringBuilder path = new StringBuilder(request.getServletContext().getRealPath("/"));

        path.delete(path.length() - 38, path.length());
        path.append("src/main/webapp/resources/curriculums/");
        String filename = file.getOriginalFilename();
        System.out.println(path + " " + filename);
        if (!file.isEmpty()) {
            String CURRICULUM = file.getOriginalFilename();
            File f = new File(path.toString(), CURRICULUM);
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
                f = new File(path.toString(), CURRICULUM);
                service_register.register(new Users(name, surname, password, nickname, email, phoneNumber, CURRICULUM, gender, aboutMe, birthDate, address));

            }

            file.transferTo(f);
            service_register.register(new Users(name, surname, password, nickname, email, phoneNumber, CURRICULUM, gender, aboutMe, birthDate, address));
        }
        System.out.println("controller");
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        return "login-page";
    }

    @RequestMapping("/alldevelopers")
    public String browseDevelopers(ModelMap model) {
        developerList = service_user.browseDevelopers();
        model.put("developerlist", developerList);
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        return "all-developers";
    }

    @RequestMapping(value = "/profilepage", method = RequestMethod.GET)
    public String viewDeveloperInfo(@RequestParam("nickname") String nickname, ModelMap model) {

        Users developer = new Users();
        developer = service_user.viewDeveloperInfo(nickname);
        //Project project=service_project.viewProjectInfo(id);
        checkSession();
        model.put("developer", developer);
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        //  utilities.UserSession.getUserData().getIdUser() to be used in my profile

        List<Project> developerProject = service_user.getDeveloperProjects(developer.getIdUser());
        model.put("developerProject", developerProject);
        
        List<Skills> skillsList = service_skill.showSkillsList();
        model.put("skillsList", skillsList);

      /*  List<Project> myprojectsCoord = service_user.getCoordProjects(developer.getIdUser());
        model.put("myprojectsCoord", myprojectsCoord);
        */
        return "profile-page";
    }

    @RequestMapping(value = "/viewMyProfile")
    public String viewMyProfile(ModelMap model) {

        Users developer = utilities.UserSession.getUserData();
        
        model.put("developer", developer);
        
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        
        ArrayList<Users> panel = new ArrayList<>();
        ArrayList<Users> applicationPanel = new ArrayList<>();
        ArrayList<Users> invitationPanel = new ArrayList<>();

        panel = service_user.offerPanelCoodinator();
        applicationPanel = service_user.applicationPanel(utilities.UserSession.getUserData().getIdUser());
        invitationPanel = service_user.invitationPanel(utilities.UserSession.getUserData().getIdUser());

        List<Skills> skillsList = service_skill.showSkillsList();
        model.put("skillsList", skillsList);
        
        model.put("applicationPanel", applicationPanel);
        model.put("offerPanel", panel);
        model.put("invitationPanel", invitationPanel);
        
        return "my-profile";
    }
    
    @RequestMapping(value = "/finishedTask" ,method = RequestMethod.POST)
    public String finishedTask(@RequestParam("coordinatorEmail") String cordEmail, ModelMap model) {
        String name= utilities.UserSession.getUserData().getName();
        String surname= utilities.UserSession.getUserData().getSurname();
        String email=utilities.UserSession.getUserData().getEmail();
        String msg = "The developer with the name: " + name +" "+ surname+ "and the email: " + email + " has finished his task";
        sendMessage(msg, cordEmail, "Task Finished!");
        return "my-profile";
    }

    @RequestMapping("/goToUpdate")
    public String goToUpdate(ModelMap model) {
        model.put("user", utilities.UserSession.getUserData());

        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        return "update-profile";
    }

    @RequestMapping(value = "/updateMyProfile", method = RequestMethod.POST)
    //@RequestParam("birthDate")Date birthDate,,@RequestParam("profilePhoto")MultipartFile profilePhoto,
    public String updateMyProfile(@RequestParam("name") String name,
            @RequestParam("password") String password,
            @RequestParam("surname") String surname,
            @RequestParam("email") String email,
            @RequestParam("phoneNumber") String phoneNumber,
            @RequestParam("curriculum") MultipartFile file,
            @RequestParam("gender") String gender,
            @RequestParam("aboutMe") String aboutMe,
            @RequestParam("address") String address,
            @RequestParam("birthDate") String birthDate,
            ModelMap model) throws IOException {
        // Users user; @RequestParam("curriculum")MultipartFile curriculum,
        //|| "".equals(birthDate)|| "".equals(curriculum)|| "".equals(profilePhoto)|| "".equals(aboutMe) || "".equals(address)

        if ("".equals(name) || "".equals(password) || "".equals(birthDate) || "".equals(surname) || "".equals(email) || "".equals(phoneNumber) || "".equals(gender)) {
            model.put("error", "You have to fill all the fields.");

            return "update-profile";
        }

        /*emailsList = service_user.checkEmail();

        if (emailsList.contains(email)) {
            model.put("error", "Email exists, choose another.");
            return "update-profile";
        }*/
        StringBuilder path = new StringBuilder(request.getServletContext().getRealPath("/"));

        path.delete(path.length() - 38, path.length());
        path.append("src/main/webapp/resources/curriculums/");
        String filename = file.getOriginalFilename();
        System.out.println(path + " " + filename);
        if (!file.isEmpty()) {
            String CURRICULUM = file.getOriginalFilename();
            File f = new File(path.toString(), CURRICULUM);
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
                f = new File(path.toString(), CURRICULUM);

                Users developer = new Users(utilities.UserSession.getUserData().getIdUser(), name, address, surname, password, utilities.UserSession.getUserData().getNickname(), email, phoneNumber, CURRICULUM, gender, aboutMe, birthDate);
                int i = service_user.updateMyProfile(developer);
            }

            file.transferTo(f);
            Users developer = new Users(utilities.UserSession.getUserData().getIdUser(), name, address, surname, password, utilities.UserSession.getUserData().getNickname(), email, phoneNumber, CURRICULUM, gender, aboutMe, birthDate);
            int i = service_user.updateMyProfile(developer);
            if (i == 1) {
                //  utilities.UserSession.setUserData();
                System.out.println("UPDATED");
            } else {
                System.out.print("ERROR UPDATING!");
            }
            //Users developer = new Users(utilities.UserSession.getUserData().getIdUser(), name, address, surname, password, utilities.UserSession.getUserData().getNickname(), email, phoneNumber, file, gender, aboutMe, birthDate);
            //  int i = service_user.updateMyProfile(developer);

            utilities.UserSession.setUserData(developer);
            System.out.println("Update Controller");
            model.put("developer", developer);
        }
        
        //= service_user.updateMyProfile(new Users(name, surname, password,email, phoneNumber, gender, aboutMe, birthDate, address));
        //utilities.UserSession.getUserData();
        Users developer = new Users(utilities.UserSession.getUserData().getIdUser(), name, address, surname, password, utilities.UserSession.getUserData().getNickname(), email, phoneNumber, filename, gender, aboutMe, birthDate);
       if(file.isEmpty()){
             developer.setCurriculum(utilities.UserSession.getUserData().getCurriculum());
        }
        int i = service_user.updateMyProfile(developer);

        utilities.UserSession.setUserData(developer);
        System.out.println("Update Controller");
        model.put("developer", developer);
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        return "my-profile";
    }
    
    @RequestMapping("/mytasks-projects")
    public String goToMyTasksAndProjects(ModelMap model) {
        model.put("developer", utilities.UserSession.getUserData());

        List<Project> developerProject = service_user.getDeveloperProjects(utilities.UserSession.getUserData().getIdUser());
        model.put("developerProject", developerProject);

        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        return "mytasks-projects";
    }
    
    
    @RequestMapping("/getCoordProjects")
    public String myprojectscoord(ModelMap model) {
        model.put("developer", utilities.UserSession.getUserData());

        List<Project> myprojectsCoord = service_user.getCoordProjects(utilities.UserSession.getUserData().getIdUser());
        model.put("myprojectsCoord", myprojectsCoord);
        
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        return "getCoordProjects";
    }

    @RequestMapping(value = "/finishedTask")
    public String finishedTask(@RequestParam("name") String name, @RequestParam("email") String email, @RequestParam("cordEmail") String cordEmail, ModelMap model) {
        String msg = "The developer with the name: " + name + "and the email: " + email + " has finished his task";
        sendMessage(msg, cordEmail, "Get Information");
        Users developer = utilities.UserSession.getUserData();
        model.put("developer", developer);
        return "my-profile";
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
    String getMessages(@RequestParam("idUser") Integer idUser, @RequestParam("idProject") Integer idProject,
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
    
    //panels

    @RequestMapping(value = "/panelCoordinator", method = RequestMethod.GET)
    public String showPanelCoordinator(ModelMap model) {
        ArrayList<Users> panel = new ArrayList<>();
        ArrayList<Users> applicationPanel = new ArrayList<>();
        ArrayList<Users> invitationPanel = new ArrayList<>();

        panel = service_user.offerPanelCoodinator();
        applicationPanel = service_user.applicationPanel(utilities.UserSession.getUserData().getIdUser());
        invitationPanel = service_user.invitationPanel(utilities.UserSession.getUserData().getIdUser());

        model.put("applicationPanel", applicationPanel);
        model.put("offerPanel", panel);
        model.put("invitationPanel", invitationPanel);

        return "panelCoordinator";
    }

    @RequestMapping(value = "/offerPanel", method = RequestMethod.GET, headers = "Accept=application/json")
    public @ResponseBody
    String getOfferPanel() {
        ArrayList<Users> panel = new ArrayList<>();
        panel = service_user.offerPanelCoodinator();
        return new Gson().toJson(panel);
    }

    @RequestMapping(value = "/applicationPanel", method = RequestMethod.GET, headers = "Accept=application/json")
    public @ResponseBody
    String getApplicationPanel(/*@RequestParam("idUserReceiver")Integer idUserReceiver, */ModelMap model) {
        ArrayList<Users> applicationPanel = new ArrayList<>();
        applicationPanel = service_user.applicationPanel(utilities.UserSession.getUserData().getIdUser());
        return new Gson().toJson(applicationPanel);
    }

    @RequestMapping(value = "/invitationPanel", method = RequestMethod.GET, headers = "Accept=application/json")
    public @ResponseBody
    String getInvitationPanel() {
        ArrayList<Users> invitationPanel = new ArrayList<>();
        invitationPanel = service_user.invitationPanel(utilities.UserSession.getUserData().getIdUser());
        return new Gson().toJson(invitationPanel);
    }

    @RequestMapping(value = "/proposalPanel", method = RequestMethod.GET, headers = "Accept=application/json")
    public @ResponseBody
    String getProposalPanel(ModelMap model) {
        ArrayList<Users> proposalPanel = new ArrayList<>();
        proposalPanel = service_user.proposalPanel(utilities.UserSession.getUserData().getIdUser());
        return new Gson().toJson(proposalPanel);
    }

    // inserts and updates to panels
    @RequestMapping(value = "/insertOfferPanelToApplication", method = RequestMethod.GET)
    //inser to tblCollaborationDoncs
    public @ResponseBody
    String insertOfferPanelToApplication(
            @RequestParam("idTask") Integer idTask,
            @RequestParam("idProject") Integer idProject,
            @RequestParam("idUserReceiver") Integer idUserReceiver,
            @RequestParam("idUserSender") Integer idUserSender,
            @RequestParam("status") String status,
            ModelMap model) {

        int response;

        if (idTask != 0 && idProject != 0 && idUserReceiver != 0 && idUserSender != 0) {

            status = "waiting";

            Users collaborationUser = new Users(idTask, idProject, idUserReceiver, idUserSender, status);

            response = service_user.insertOfferPanelToApplication(collaborationUser);

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
    
    @RequestMapping("/gotoregistrationpage")
    public String goToRegistration(ModelMap model) {
        checkSession();
        model.put("displaySession", displaySession);
        model.put("displayHomePage", displayHomePage);
        return "registration-page";
    }

    @RequestMapping(value = "/insertTaskDevelopersFromApplicationPanel", method = RequestMethod.GET)
    //inser to tblTaskDevelopers
    public @ResponseBody
    String insertTaskDevelopersFromApplicationPanel(
            @RequestParam("idTask") Integer idTask,
            @RequestParam("idUser") Integer idUser,
            ModelMap model) {

        int response;

        if (idTask != 0 && idUser != 0) {

            Users taskDeveloper = new Users(idUser, idTask);
            Users updateDev = new Users(utilities.UserSession.getUserData().getIdUser(), idTask, idUser, "accepted");

            service_user.updateCollaborationPanel(updateDev);
            response = service_user.insertTaskDevelopersFromApplicationPanel(taskDeveloper);

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
    
    @RequestMapping(value = "/insertTaskDevelopersFromProposalPanel", method = RequestMethod.GET)
    //inser to tblTaskDevelopers
    public @ResponseBody
    String insertTaskDevelopersFromProposalPanel(
            @RequestParam("idTask") Integer idTask,
            ModelMap model) {

        int response;

        if (idTask != 0) {

           // Users taskDeveloper = new Users(idTask, utilities.UserSession.getUserData().getIdUser());
            int idUser;
            idUser =  utilities.UserSession.getUserData().getIdUser();
            response = service_user.insertTaskDevelopersFromProposalPanel(idUser, idTask);

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

    @RequestMapping(value = "/updateCollaborationPanel", method = RequestMethod.GET)
    public String updateCollaborationPanel(
            @RequestParam("idUserSender") Integer idUserSender,
            @RequestParam("status") String status,
            @RequestParam("idTask") Integer idTask,
            ModelMap model) {
            
        Users user = new Users(status, idTask, idUserSender, utilities.UserSession.getUserData().getIdUser());
        service_user.updateCollaborationPanel(user);
        
        return "my-profile";
    }
    
    @RequestMapping(value = "/updateCollaborationPanelFromInvitation", method = RequestMethod.GET)
    public String updateCollaborationPanelFromInvitation(
            @RequestParam("idUserReceiver") Integer idUserReceiver,
            @RequestParam("status") String status,
            @RequestParam("idTask") Integer idTask,
            ModelMap model) {
            
        Users user = new Users(status, idTask, utilities.UserSession.getUserData().getIdUser(), idUserReceiver);
        service_user.updateCollaborationPanelFromInvitation(user);
        
        return "my-profile";
    }

    /* --------------- End Hilda -------------------- */
    
 /* --------------- Start Deyanira -------------------- */
    
    @RequestMapping("/goToAdministrator")
    public String goToAdministrator(ModelMap model) {
        List<Skills> skillsList = service_skill.showSkillsList();
        model.put("skillsList", skillsList);
        typeList=service_type.typeList();
        model.put("typesList", typeList);
        return "goToAdministrator";
    }
    
    @RequestMapping("/goToRegisterUserSkills")
    public String goToRegisterSkills(ModelMap model) {
        List<Skills> skillsList = service_skill.showSkillsList();
        model.put("skillsList", skillsList);
        return "goToRegisterUserSkills";
    }
    
    @RequestMapping(value="/registerUserSkills", method = RequestMethod.POST)
    public String registerUserSkills(@RequestParam("idSkill") int[] idSkills, @RequestParam("skillLevel") int[] levels, ModelMap model){
        int resultAddUserSkills;
        List<Skills> skillsList = service_skill.showSkillsList();
        model.put("skillsList", skillsList);        
        typeList=service_type.typeList();
        model.put("typesList", typeList);
        int idUser = service_user.lastUserInserted();
        model.put("user", service_user.viewUserInfo(idUser));
        model.put("typeList", typeList);
        model.put("skillList", service_skill.showSkillsList());

        service_user.insertUserSkills(idSkills, levels);

        model.put("user", service_user.viewUserInfo(idUser));
        model.put("skillsList", skillsList);
        model.put("message", "You have created a new task.");
        return "login-page";
    }
    
    @RequestMapping("/goToUserSkills")
    public String goToUserSkills(ModelMap model) {
        List<Skills> skillsList = service_skill.showSkillsList();
        model.put("skillsList", skillsList);
        typeList=service_type.typeList();
        model.put("typesList", typeList);
        return "goToUserSkills";
    }
         
    // Skill Controller        
    @RequestMapping(value = "/insertSkill", method = RequestMethod.POST)
    public String insertSkill(@RequestParam("skillName") String skillName, @RequestParam("idSkillFather") int idSkillFather,@RequestParam("idType") int[] idType, ModelMap model) {
        
        typeList=service_type.typeList();
        model.put("typesList", typeList);
        // insert skill
        Integer skill;       
        if ("".equals(skillName)|| idType.length>0) {
            model.put("error", "You have to select at least one type.");
        }
        for(int i=0;i<idType.length;i++){
            System.out.println(idType[i]);
        }                
        model.put("messageSkill", "Skill inserted successfully!");
        if (idSkillFather==0){
            skill = service_skill.insertSkill(new Skills(skillName));
        }else
        { skill = service_skill.insertSkillFather(new Skills(skillName,idSkillFather));
          
        }
        service_skill.insertTypeSkill(idType);
        List<Skills> skillsList = service_skill.showSkillsList();
        model.put("skillsList", skillsList);
        return "goToAdministrator";
    }   
    
    @RequestMapping("/skillsList")
    public void skillsList(ModelMap model){
        List<Skills> skillsList = service_skill.showSkillsList();
        model.put("skillsList", skillsList);
    }
    // Type Controller        
    @RequestMapping(value = "/insertType", method = RequestMethod.POST)
    public String insertType(@RequestParam("typeName") String typeName, ModelMap model) {
        
        Integer type;       
        if ("".equals(typeName)) {
            model.put("error", "You have to fill all the fields.");
        }
        type = service_type.insertType(new Type(typeName));
        model.put("messageType", "Type inserted successfully!");
        typeList=service_type.typeList();
        model.put("typesList", typeList);
        return "goToAdministrator";
    } 

    
 /* --------------- End Deyanira -------------------- */
}
