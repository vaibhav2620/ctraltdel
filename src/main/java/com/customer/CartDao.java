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
import com.customer.cart;
  
/**
 *
 * @author user1
 */
public class CartDao {
       JdbcTemplate template;    
    
public void setTemplate(JdbcTemplate template) {    
    this.template = template;    
} 
//inserion in customer
    public int add(cart c){   
        int cartId = Integer.parseInt(c.getCust_id()+""+c.getCust_id());
       String sql="insert into cart(CART_ID,CUST_ID) values("+cartId+","+c.getCust_id()+")";    
        return template.update(sql); 
    }
//deletion in customer
    public int delete(int cart_id){    
        String sql="delete from cart where id="+cart_id+"";    
        return template.update(sql);    
    } 
    public List<cart> getdata(){    
        return template.query("select * from cart",new RowMapper<cart>(){    
            public cart mapRow(ResultSet rs, int row) throws SQLException {    
                cart c =new cart();    

                c.setCust_id(rs.getInt(2)); 
                c.setCart_id(rs.getInt(1)); 


                return c;    
            }    
        }); 


    }
    
    
          public cart getCartBycustId(int id){    
    String sql="select * from cart where cust_id=?"; 
     List<cart> list =  template.query(sql,new Object[]{id},new RowMapper<cart>(){    
            @Override
            public cart mapRow(ResultSet rs, int row) throws SQLException {    
                cart e=new cart();

                e.setCart_id(rs.getInt(1));
                e.setCust_id(rs.getInt(2));

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
//    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<products>(products.class));    
return list.get(0);
      }
    
    
}


