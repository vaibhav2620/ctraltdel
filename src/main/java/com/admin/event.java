/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.admin;

import java.sql.Date;
import javax.persistence.Column;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author user1
 */
public class event {
    private int e_id;
    private String e_name;
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date start_date;
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private Date end_date;
    
    

   
    public Date getStartDate() {
        return start_date;
    }

    public void setStartDate(Date date) {
        this.start_date = date;
    }

    public int getE_id() {
        return e_id;
    }

    public void setE_id(int e_id) {
        this.e_id = e_id;
    }

    public String getE_name() {
        return e_name;
    }

    public void setE_name(String e_name) {
        this.e_name = e_name;
    }

    public Date getEnd_date() {
        return end_date;
    }

    public void setEnd_date(Date end_date) {
        this.end_date = end_date;
    }
}
