/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.admin;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author User
 */
public class couponDao {
        JdbcTemplate template;
        @Autowired
        eventDao edao;
        @Autowired
        categorydao dao;
public void setTemplate(JdbcTemplate template) {    
    this.template = template;    
}



    public List<coupon> getCoupons(){
        return template.query("select * from coupon",new RowMapper<coupon>(){    
            @Override
            public coupon mapRow(ResultSet rs, int row) throws SQLException {    
                coupon e=new coupon();

                e.setCoupon_id(rs.getInt(1));
                e.setCoupon_name(rs.getString(2));
                e.setE(edao.geteventById(rs.getInt(3)));
                e.setCat(dao.getcategoryById(rs.getInt(5)));
                e.setDiscount(rs.getInt(4));
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

    public int addcoupon(coupon e){
       String sql="insert into coupon(C_ID,C_NAME,E_ID,CAT_ID,discount) values("+e.getCoupon_id()+",'"+e.getCoupon_name()+"',"+e.getE().getE_id()+","+e.getCat().getCat_id()+","+e.getDiscount()+")";
//         String sql="insert into Event(e_id, e_name, e_start, e_end) values("+e.getE_id()+",'"+e.getE_name()+"',"+e.getStartDate()+","+e.getEnd_date()+" )";
       return template.update(sql);
}
   
    public int deleteCoupon(int id){
     String sql="delete from coupon where coupon_id="+id;    
    return template.update(sql);    
}

  
}
