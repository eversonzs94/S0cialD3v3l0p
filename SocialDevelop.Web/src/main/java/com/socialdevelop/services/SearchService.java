package com.socialdevelop.services;

import com.socialdevelop.entities.Project;
import com.socialdevelop.entities.Users;
import com.socialdevelop.mappers.SearchMapper;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

@Service
public class SearchService {
    @Autowired SearchMapper mapper;
    
    public List<Project> searchProject(String keyword){
        System.out.println("'%"+keyword+"%'");
        return mapper.searchProject("%"+keyword+"%");   
    }
    
    public List<Project> searchProjectMultipleKeywords(String[] keywords)
    {
        
        if (keywords.length==1)
        {
            return mapper.searchProject('%'+keywords[0]+'%');
        }
        else
        {
            for (String keyword:keywords)
            {   
                try{
                   mapper.addKeyword(keyword,0);
                }catch(DataAccessException ex){
                }     
            }
            List<Project> projects=mapper.searchProjectMultipleKeywords();
            mapper.deleteKeywords();
            return projects;
        }
    }
    
    public  List<Users> searchDevelopers(String[] skills,int[] levels)
    {
        for (int i = 0; i < skills.length; i++)
        {
            ////here check if it is empty 
            if (!skills[i].isEmpty())
            {    
                try{
                   mapper.addKeyword(skills[i],levels[i]);
                }catch(DataAccessException ex){
                   
                }     
            }
                
        }
        List<Users> users=mapper.searchDevelopers();
        mapper.deleteKeywords();
        return users;
    }
    
}
