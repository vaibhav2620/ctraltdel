/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.admin;

/**
 *
 * @author user1
 */
public class products {
    private int p_id;
    private String p_name;
    private double cost;
    private String imgpath;
    private category cat;

    @Override
    public String toString() {
        return "products{" + "p_id=" + p_id + ", p_name=" + p_name + ", cost=" + cost + ", imgpath=" + imgpath + ", cat=" + cat + '}';
    }

    public int getP_id() {
        return p_id;
    }

    public void setP_id(int p_id) {
        this.p_id = p_id;
    }

    public String getP_name() {
        return p_name;
    }

    public void setP_name(String p_name) {
        this.p_name = p_name;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public String getImgpath() {
        return imgpath;
    }

    public void setImgpath(String imgpath) {
        this.imgpath = imgpath;
    }

    public category getCat() {
        return cat;
    }

    public void setCat(category cat) {
        this.cat = cat;
    }
    
}
