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
import com.customer.cartdetails;

/**
 *
 * @author user1
 */
public class CartdetailsDao {
       JdbcTemplate template;    
    
public void setTemplate(JdbcTemplate template) {    
    this.template = template;    
} 



//inserion in customer
public int add(cartdetails d){   
    String sql="insert into cartdetails(CD_id,cart_id,p_id,quantity) values("+d.getId()+","+d.getCart_id()+","+d.getP_id()+","+d.getQuantity()+")";    
    return template.update(sql); 
}





//deletion in customer
public int delete(int id){    
    String sql="delete from cartdetails where id="+id+"";    
    return template.update(sql);    
} 
    public List<cartdetails> getdata(){    
        return template.query("select * from cartdetails",new RowMapper<cartdetails>(){    
            public cartdetails mapRow(ResultSet rs, int row) throws SQLException {    
                cartdetails d=new cartdetails();    

                d.setId(rs.getInt(1)); 
                d.setCart_id(rs.getInt(2)); 
                d.setP_id(rs.getInt(3));  
                d.setQuantity(rs.getInt(4));  


                return d;    
            }    
        }); 





    }  


           public List<cartdetails> getcartdetailsBycustomer(int cart_id){
        String sql="select * from products where cat_id=?";
        return  template.query("select * from cartdetails where cart_id=?",new Object[]{cart_id},new RowMapper<cartdetails>(){    
            @Override
            public cartdetails mapRow(ResultSet rs, int row) throws SQLException {    
                cartdetails e=new cartdetails();

//                e.setId(rs.getInt(1));
//                e.setCart_id(rs.getInt(2));
//                e.setP_id(rs.getInt(3));
//                e.setQuantity(rs.getInt(4));
                
                e.setCart_id(rs.getInt(1));
                e.setQuantity(rs.getInt(2));
                e.setCart_id(rs.getInt(3));
                e.setP_id(rs.getInt(4));
//                
                
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
    
}
