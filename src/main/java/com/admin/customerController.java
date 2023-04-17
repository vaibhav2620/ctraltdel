/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.admin;

import com.customer.CartDao;
import com.customer.CartdetailsDao;
import com.customer.CustomerDao;
import com.customer.cart;
import com.customer.cartdetails;
import com.customer.customer;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.request;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author User
 */
@Controller
public class customerController {
    
    @Autowired
    CustomerDao Dao;
    @Autowired
    categorydao dao;
    @Autowired
    productsDao pdao;
    @Autowired
    CustomerDao cdao;
    @Autowired
    CartDao cartDao;
    @Autowired
    CartdetailsDao CDdao;
    @Autowired
    couponDao Coupondoa;
    
    
    @RequestMapping("/l")   
    public String Display_allProduct(Model m,HttpSession s){  
        String path = s.getServletContext().getRealPath("/");
//        path = path+File.separator;
        m.addAttribute("path",path);
        List<products> list=pdao.getProducts();    
        m.addAttribute("list",list);  
        List<category> list1=dao.getCategory();    
        m.addAttribute("list1",list1);  

        return "allproduct";    
    } 
    
        @RequestMapping("/landing")   
    public String Display_allProduct_css(Model m,HttpSession s){  
        String path = s.getServletContext().getRealPath("/");
//        path = path+File.separator;
        m.addAttribute("path",path);
        List<products> list=pdao.getProducts();    
        m.addAttribute("list",list);  
        List<category> list1=dao.getCategory();    
        m.addAttribute("list1",list1);  

        return "allproducts_customer";    
    } 
    
    
    
    
    
    
    
    @RequestMapping("register")
    public String DisplayRegisterPage(){
        return "RegisterPage";
    }
    
     
    @RequestMapping("login")
    public String DisplayLoginPage(){
        return "login_page";
    }
    
    
//----------------------------------------    
    
    
    @RequestMapping(value="/hello123/{id}")    
    public String singleProduct(@PathVariable("id")int id, Model m){    
        products pro = pdao.getProductsById(id);    
        m.addAttribute("pro",pro);  
        return "singleproduct";    
    }
    
   @RequestMapping(value = "/insert" ,method = RequestMethod.POST)
   public String insert(@ModelAttribute("register")customer c){
        cdao.add(c);
        cart cart = new cart();
        cart.setCust_id(c.getCust_id());
        cartDao .add(cart);
        return "redirect:/l";
    }
    
   @RequestMapping(value = "/login_customer" ,method = RequestMethod.POST)
   public String login(@RequestParam("cust_email")String email,@RequestParam("cust_pwd")String pwd,HttpSession s,Model m){
       try{ 
            boolean isCustomer =  cdao.isValidCustomer(email,pwd);
            customer c = cdao.getCustomerByEmailId(email);
            if(isCustomer){
                s.setAttribute("customer", c);
                s.setAttribute("cart_id", c);
     //         m.addAttribute("customer",c);
                return  "redirect:/l";   
            }
            else{
                String ss = "Enter Valid Email and Password";
                s.setAttribute("error_login",ss);
                return "redirect:/login";
            }
       }
        catch(Exception sq){
                String ss = "Enter Valid Email and Password";
                s.setAttribute("error_login",ss);
            return "redirect:/login";       
            }      
         
       
   }
        
    
   
    @RequestMapping("logout_page")
    public String DisplayLogoutPage(HttpSession s){
        s.invalidate();
        return "redirect:/l";
    }
 
   @RequestMapping("addTocart/{P_id}")
    public String addToCart(@PathVariable("P_id")int id,HttpSession s){
        
        if(s.getAttribute("customer")!=null){
            customer SC = (customer) s.getAttribute("customer");
            cartdetails cd = new cartdetails();
            
            cd.setCart_id(cartDao.getCartBycustId(SC.getCust_id()).getCart_id());
            int min = 100;  
            int max = 400;  
            int cdid =Integer.parseInt( (int)(Math.random()*(max-min+1)+min)+""+cd.getCart_id());
            cd.setId(cdid);
            cd.setQuantity(1);
            cd.setP_id(id);
            CDdao.add(cd);
        }
        return "redirect:/cust_cart";
        
    }
 
    
    
        

    
    
    
    
    
    
    
    @RequestMapping("/cust_cart")
    public String Displaycart(Model m,HttpSession s){
        customer c1 =(customer) s.getAttribute("customer");
        cart cc = cartDao.getCartBycustId(c1.getCust_id());
        
        List<cartdetails> list = CDdao.getcartdetailsBycustomer(cc.getCart_id());
        List<coupon> coupon_list= Coupondoa.getCoupons();    
        m.addAttribute("coupon_list",coupon_list); 
//        List<cartdetails> list = CDdao.getcartdetailsBycustomer();
        List<products> prod_list = new ArrayList<products>();
        
        for(cartdetails c:list){
             prod_list.add(pdao.getProductsById( c.getP_id()));
        }
        m.addAttribute("prod_list",prod_list);
        m.addAttribute("cartDetails",list);
        
        return "cart";
    }

    
    

   @RequestMapping(value = "/billingPage" ,method = RequestMethod.POST)
   public String BillingpageDisplay(@RequestParam("fullPrice")int fullprice,@RequestParam("Discount")int discount,Model m){
       
       m.addAttribute("fullprice",fullprice);
       m.addAttribute("Discount",discount);

        
        
        return "BillingPage";
    }
    
    
   
   
   @RequestMapping("test")
   public String test(){
       
       return "test";
   }
   
}
