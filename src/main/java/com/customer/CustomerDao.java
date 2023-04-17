/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.customer;

import com.admin.products;
import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import static oracle.net.aso.h.a;
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;    
import com.customer.customer;
import org.springframework.jdbc.core.BeanPropertyRowMapper;

/**
 *
 * @author user1
 */
public class CustomerDao {
    JdbcTemplate template;    
    
public void setTemplate(JdbcTemplate template) {    
    this.template = template;    
} 
//inserion in customer
public int add(customer c){   
   String sql="insert into customers(CUST_ID,CUST_NAME, CUST_PHONE,CUST_EMAIL,CUST_PWD,CUST_ADDRESS) values("+c.getCust_id()+",'"+c.getCust_name()+"',"+c.getCust_phone()+",'"+c.getCust_email()+"','"+c.getCust_pwd()+"','"+c.getCust_address()+"')";    
    return template.update(sql); 
}

//deletion in customer
public int delete(int CUST_ID){    
    String sql="delete from customers where id="+CUST_ID+"";    
    return template.update(sql);    
} 




public List<customer> getdata(){    
    return template.query("select * from customers",new RowMapper<customer>(){    
        public customer mapRow(ResultSet rs, int row) throws SQLException {    
            customer a=new customer();    
            
            a.setCust_id(rs.getInt(1)); 
            a.setCust_name(rs.getString(2)); 
            a.setCust_phone(rs.getLong(3));  
            a.setCust_email(rs.getString(4));  
            a.setCust_pwd(rs.getString(5));  
            a.setCust_address(rs.getString(6));  
               
            return a;    
        }    
    }); 


}  

    public boolean isValidCustomer(String email, String pwd) throws SQLException {
        
        String sql = "select * from customers where cust_email='"+email+"' and cust_pwd='"+pwd+"'";
        customer c = template.queryForObject(sql,new BeanPropertyRowMapper<customer>(customer.class));
        if(c!=null){
            return true;
        }
        else{
            return false;
        }
    }       
   
    public customer getCustomerByEmailId(String emailid){        
        String sql="select * from customers where cust_email=?";    
        return template.queryForObject(sql, new Object[]{emailid},new BeanPropertyRowMapper<customer>(customer.class));    
    }


}
