package com.socialdevelop.services;

import com.socialdevelop.entities.Project;
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
                   mapper.addKeyword(keyword);
                }catch(DataAccessException ex){
                    continue;
                }     
            }
            List<Project> projects=mapper.searchProjectMultipleKeywords();
            mapper.deleteKeywords();
            return projects;
        }
    }
    
}
