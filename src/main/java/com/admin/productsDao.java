/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.admin;

import com.customer.customer;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


/**
 *
 * @author user1
 */
public class productsDao {
    
    JdbcTemplate template;    
    @Autowired
    categorydao dao ;
    
    public void setTemplate(JdbcTemplate template) {    
        this.template = template;    
    }    
    
    public List<products> getProducts(){
        return template.query("select * from products",new RowMapper<products>(){    
            @Override
            public products mapRow(ResultSet rs, int row) throws SQLException {    
                products e=new products();

    //            e.setCat_id(rs.getInt(1));
                e.setP_id(rs.getInt(1));
    //            e.setCat_name(rs.getString(2));
                e.setP_name(rs.getString(2));
                e.setCost(rs.getDouble(3));
                e.setImgpath(rs.getString(4));
                e.setCat(dao.getcategoryById(rs.getInt(5))); 
                return e;    
                }
            });
        }
    
    public int addProducts(products p){
       String sql="insert into products(P_NAME,price,IMGPATH,CAT_ID) values('"+p.getP_name()+"',"+p.getCost()+",'"+p.getImgpath()+"',"+p.getCat().getCat_id()+")";
       return template.update(sql);
    }
    
    public int deleteprod(int id){
     String sql="delete from products where P_id="+id;    
    return template.update(sql);    
}

      public products getProductsById(int id){    
    String sql="select * from products where p_id=?"; 
     List<products> list =  template.query(sql,new Object[]{id},new RowMapper<products>(){    
            @Override
            public products mapRow(ResultSet rs, int row) throws SQLException {    
                products e=new products();

    //            e.setCat_id(rs.getInt(1));
                e.setP_id(rs.getInt(1));
    //            e.setCat_name(rs.getString(2));
                e.setP_name(rs.getString(2));
                e.setCost(rs.getDouble(3));
                e.setImgpath(rs.getString(4));
                e.setCat(dao.getcategoryById(rs.getInt(5))); 
                return e;    
                }
            });
//    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<products>(products.class));    
return list.get(0);
      }
    
    
    
    
        public List<products> getProductsByCategory(int id){
        String sql="select * from products where cat_id=?";
        return  template.query("select * from products where cat_id=?",new Object[]{id},new RowMapper<products>(){    
            @Override
            public products mapRow(ResultSet rs, int row) throws SQLException {    
                products e=new products();

    //            e.setCat_id(rs.getInt(1));
                e.setP_id(rs.getInt(1));
    //            e.setCat_name(rs.getString(2));
                e.setP_name(rs.getString(2));
                e.setCost(rs.getDouble(3));
                e.setImgpath(rs.getString(4));
                e.setCat(dao.getcategoryById(rs.getInt(5))); 
                return e;    
                }
            });
        }

        
       public int updateProduct(products p){
       String sql="update products Set P_NAME='"+p.getP_name()+"',price="+p.getCost()+",IMGPATH='"+p.getImgpath()+"',CAT_ID="+p.getCat().getCat_id()+" where p_id="+p.getP_id()+"";
       return template.update(sql);
    }
        
        
        
    
}
