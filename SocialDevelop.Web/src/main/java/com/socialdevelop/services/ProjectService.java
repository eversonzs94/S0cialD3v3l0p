/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.services;

import com.socialdevelop.entities.Project;
import com.socialdevelop.mappers.ProjectMapper;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

@Service
public class ProjectService {

    @Autowired
    ProjectMapper mapper;

    public List<Project> browseProjects() {
        return mapper.browseProjects();
    }

    public Project viewProjectInfo(int id) {
        return mapper.viewProjectInfo(id);

    }

    public void addProject(Project project) {
        mapper.addProject(project);
    }

    public Integer isInvolvingInProject(Integer idProject, Integer idUser) {
        try {
            return mapper.isInvolvingInProject(idProject, idUser);
        } catch (DataAccessException ex) {
            return -1;
        }
    }

}
