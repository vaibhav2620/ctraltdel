/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.admin;

/**
 *
 * @author User
 */
public class coupon {
    
    private int coupon_id;
    private String coupon_name;
    private event E;
    private category cat;
    private int discount;

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public int getCoupon_id() {
        return coupon_id;
    }

    public void setCoupon_id(int coupon_id) {
        this.coupon_id = coupon_id;
    }

    public String getCoupon_name() {
        return coupon_name;
    }

    public void setCoupon_name(String coupon_name) {
        this.coupon_name = coupon_name;
    }

    public event getE() {
        return E;
    }

    public void setE(event E) {
        this.E = E;
    }

    public category getCat() {
        return cat;
    }

    public void setCat(category cat) {
        this.cat = cat;
    }

    @Override
    public String toString() {
        return "coupon{" + "coupon_id=" + coupon_id + ", coupon_name=" + coupon_name + ", E=" + E + ", cat=" + cat + '}';
    }
    
    
}
