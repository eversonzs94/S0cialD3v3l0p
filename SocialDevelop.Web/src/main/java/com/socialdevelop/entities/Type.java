/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.entities;

import java.util.List;
import org.apache.ibatis.type.Alias;

/**
 *
 * @author evers
 */
@Alias("Type")
public class Type {
    private int idType;
    private String typeName;
    private List<Skills> skillList;

    public Type(){
    }

    public Type(int idType, String typeName, List<Skills> skillList) {
        this.idType = idType;
        this.typeName = typeName;
        this.skillList = skillList;
    }
    
    public Type(int idType, String typeName) {
        this.idType = idType;
        this.typeName = typeName;
    }
    
    public Type(String typeName) {
        this.typeName = typeName;
    }

    public int getIdType() {
        return idType;
    }

    public void setIdType(int idType) {
        this.idType = idType;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public List<Skills> getSkillList() {
        return skillList;
    }

    public void setSkillList(List<Skills> skillList) {
        this.skillList = skillList;
    }
}
