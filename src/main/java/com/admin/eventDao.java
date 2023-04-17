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
public class eventDao {
    
    JdbcTemplate template;    

public void setTemplate(JdbcTemplate template) {    
    this.template = template;    
}    


public int addEvent(event e){
       String sql="insert into Event(e_name, e_start, e_end) values('"+e.getE_name()+"',TO_DATE('"+e.getStartDate()+"','YYYY/MM/DD'),TO_DATE('"+e.getEnd_date()+"' ,'YYYY/MM/DD') )";
//         String sql="insert into Event(e_id, e_name, e_start, e_end) values("+e.getE_id()+",'"+e.getE_name()+"',"+e.getStartDate()+","+e.getEnd_date()+" )";

       return template.update(sql);
}

 public List<event> getEvents(){
        return template.query("select * from Event",new RowMapper<event>(){    
            @Override
            public event mapRow(ResultSet rs, int row) throws SQLException {    
                event e=new event();
                    
                    e.setE_id(rs.getInt(1));
                    e.setE_name(rs.getString(2));
                    e.setStartDate(rs.getDate(3));
                    e.setEnd_date(rs.getDate(4));
    //            e.setCat_id(rs.getInt(1));
//                e.setP_id(rs.getInt(1));
//    //            e.setCat_name(rs.getString(2));
//                e.setP_name(rs.getString(2));
//                e.setCost(rs.getDouble(3));
//                e.setImgpath(rs.getString(4));
//                e.setCat(dao.getcategoryById(rs.getInt(5))); 
   
                return e;    
                }
            });
        }
 
 
        
        public int updateEvent(event p){
       String sql="update event Set E_NAME='"+p.getE_name()+"',E_START=TO_DATE('"+p.getStartDate()+"','YYYY/MM/DD'), E_END = TO_DATE('"+p.getEnd_date()+"' ,'YYYY/MM/DD') where e_id="+p.getE_id()+"";
       return template.update(sql);
    }
      
 
 
 
   public event geteventById(int id){    
    String sql="select * from event where e_id=?";    
    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<event>(event.class));    
}
 
 public int delete_event(int id){
     String sql="delete from event where e_id="+id;    
    return template.update(sql);    
}
    
 

}
