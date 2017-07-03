/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.entities;

/**
 *
 * @author Tala
 */
public class Location {
    private int idLocation;
    private String city;
    private String country;

    public Location() {
    }

    public Location(int idLocation, String city, String country) {
        this.idLocation = idLocation;
        this.city = city;
        this.country = country;
    }

    public int getIdLocation() {
        return idLocation;
    }

    public void setIdLocation(int idLocation) {
        this.idLocation = idLocation;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
