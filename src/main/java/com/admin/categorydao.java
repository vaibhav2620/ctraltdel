/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.admin;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author user1
 */
public class categorydao {
    JdbcTemplate template;    

public void setTemplate(JdbcTemplate template) {    
    this.template = template;    
}    

public int addCategory(category c){
       String sql="insert into Category(cat_id,cat_name) values('"+c.getCat_id()+"','"+c.getCat_name()+"')";
       return template.update(sql);
}

public int delete(int id){
     String sql="delete from Category where cat_id="+id;    
    return template.update(sql);    
}

public List<category> getCategory(){
    return template.query("select * from Category",new RowMapper<category>(){    
        public category mapRow(ResultSet rs, int row) throws SQLException {    
            category e=new category();    
            e.setCat_id(rs.getInt(1));
            e.setCat_name(rs.getString(2));
            return e;    
            }
        });
    }

  public category getcategoryById(int id){    
    String sql="select * from category where cat_id=?";    
    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<category>(category.class));    
}

}

