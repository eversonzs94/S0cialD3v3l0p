/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.entities;

import org.apache.ibatis.type.Alias;

/**
 *
 * @author wales
 */
@Alias("Skills")
public class Skills {
    
    private int idSkill;
    private String skillName;
    private int idSkillFather;
    private String[] skills;
        
    public Skills(){}  
    
    public Skills(String skillName, int idSkillFather, String[] skills ) {
        this.skillName = skillName;
        this.idSkillFather = idSkillFather;
        this.skills = skills;
    }
    
    public Skills(String skillName, int idSkillFather) {
        this.skillName = skillName;
        this.idSkillFather = idSkillFather;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
    }
        
    public int getIdSkill() {
        return idSkill;
    }

    public void setIdSkill(int idSkill) {
        this.idSkill = idSkill;
    }

    public String getSkillName() {
        return skillName;
    }

    public void setSkillName(String skillName) {
        this.skillName = skillName;
    }    
    
    public int getIdSkillFather() {
        return idSkillFather;
    }

    public void setIdSkillFather(int idSkillFather) {
        this.idSkillFather = idSkillFather;
    }

    public String[] getSkills() {
        return skills;
    }

    public void setSkills(String[] skills) {
        this.skills = skills;
    }
}
