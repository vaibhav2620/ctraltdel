/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.admin;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

/**
 *
 * @author user1
 */
@Controller
public class adminController {
    @Autowired
    categorydao dao;
    @Autowired
    productsDao pdao;
    @Autowired
    eventDao Edao;
    @Autowired
    couponDao Cdoa;

    
//    ----------------------Admin--------------------------------------
    
  
        @RequestMapping("/adminLogin")   
    public String viewadminhome(Model m){    
  
        return "admin_login";    
    } 
    
    
    
    
    @RequestMapping("/home")   
    public String viewemp(Model m){    
        List<category> list=dao.getCategory();    
        m.addAttribute("list",list);  
        return "category_Display";    
    } 
    
    @RequestMapping("/add_category")   
    public String addcategory(){    
        return "category_form";    
    } 
    
    
    @RequestMapping(value="/insertCategory",method = RequestMethod.POST)
    public String save(@ModelAttribute("cat") category cat){
        dao.addCategory(cat);
        return "redirect:/home";
    }
    
    @RequestMapping("/delete_cat")   
    public String deletecategory(Model m){
        List<category> list=dao.getCategory();    
        m.addAttribute("list",list);
        return "delete_category";    
    } 
    
    
    @RequestMapping(value="/del_category",method = RequestMethod.POST)
    public String delete(@ModelAttribute("delete_cat") category delete_cat){
        dao.delete(delete_cat.getCat_id());
        return "redirect:/home";
    }
    
    @RequestMapping("/products_display")   
    public String viewproducts(Model m){    
        List<products> list=pdao.getProducts();    
        m.addAttribute("list",list);  
        return "product_display";    
    } 
    
    @RequestMapping("/add_Product")   
    public String addproduct_display(Model m){ 
         List<category> list=dao.getCategory();    
        m.addAttribute("list",list);  
        return "add_product";    
    } 
    
    
    @RequestMapping(value="/insetProduct",method=RequestMethod.POST)
    public String addproduct(@RequestParam("P_name") String p_name,@RequestParam("Price") int price,@RequestParam("cat_id") int cat_id,@RequestParam("imagePath") CommonsMultipartFile file,HttpSession s){
        byte[] data =  file.getBytes();
        String path = s.getServletContext().getRealPath("/")+"WEB-INF"+File.separator+"resources"+File.separator+"images"+File.separator+file.getOriginalFilename();
        System.out.println(path);
        String str_path ="WEB-INF"+File.separator+"resources"+File.separator+"images"+File.separator+file.getOriginalFilename();
        String img_path ="resources"+File.separator+"images"+File.separator+file.getOriginalFilename();

        products p1 = new products();
//        p1.setP_id(p_id);
        p1.setP_name(p_name);
        p1.setCost(price);
        p1.setImgpath(img_path);
        p1.setCat(dao.getcategoryById(cat_id));
        pdao.addProducts(p1);
        try{
            try (FileOutputStream fos = new  FileOutputStream(path)) {
                fos.write(data);
                fos.close();
            } 
            try (FileOutputStream fos1 = new  FileOutputStream(str_path)) {
                fos1.write(data);
                fos1.close();
            } 
            
        }
        catch(IOException e){
            System.out.println(e);
        }

        return "redirect:/products_display";
    }
    
    @RequestMapping("/delete_Product")   
    public String deleteproduct(Model m){
        List<products> list=pdao.getProducts();    
        m.addAttribute("list",list); 
        return "product_delete";    
    } 
    
    @RequestMapping(value="/del_product",method = RequestMethod.POST)
    public String deleteprod(@ModelAttribute("delete_prod") products delete_prod){
        pdao.deleteprod(delete_prod.getP_id());
        return "redirect:/products_display";
    }

        @RequestMapping("/Event_display")   
       public String Display_Event(Model m){    
           List<event> list=Edao.getEvents();    
           m.addAttribute("list",list);  
           return "Event_display";    
       } 
       @RequestMapping("/add_event")   
       public String add_Event(){    
           return "add_event";    
       } 

       @RequestMapping(value="/event_insert",method = RequestMethod.POST)
       public String saveEvent(@ModelAttribute("evt")event evt,@RequestParam("e_start")Date d1,@RequestParam("e_end")Date d2){

                   event eadd = new event();
//                   eadd.setE_id(evt.getE_id());
                   eadd.setE_name(evt.getE_name());
                   eadd.setStartDate(d1);
                   eadd.setEnd_date(d2);


           Edao.addEvent(eadd);
           return "redirect:/Event_display";
       }

       @RequestMapping("/delete_Event")   
       public String deleteevent(Model m){
           List<event> list=Edao.getEvents();    
           m.addAttribute("list",list); 
           return "delete_event";    
       } 

    @RequestMapping(value="/del_event",method = RequestMethod.POST)
    public String delete__event(@ModelAttribute("delete_event") event delete_event){
        Edao.delete_event(delete_event.getE_id());
        return "redirect:/Event_display";
    }

   
       @RequestMapping("/coupon_display")   
       public String displayCoupons(Model m){
           List<coupon> list= Cdoa.getCoupons();    
           m.addAttribute("list",list); 
           return "coupons";    
       } 

       @RequestMapping("/add_coupon")   
       public String displayADDCoupons(Model m){
           List<event> list=Edao.getEvents();    
           m.addAttribute("EVENTS",list); 
          List<category> CATEGORY_LIST=dao.getCategory();    
            m.addAttribute("CATEGORY",CATEGORY_LIST);   
           return "add_coupon";    
       } 

       @RequestMapping("/insert_coupon")
       public String insertCoupons(@ModelAttribute("AC")coupon c,@RequestParam("cat_id")int cat_id,@RequestParam("E_id")int E_id){
           
           coupon c1 = new coupon();
           c1.setCoupon_id(c.getCoupon_id());
           c1.setCoupon_name(c.getCoupon_name());
           c1.setCat(dao.getcategoryById(cat_id));
           c1.setE(Edao.geteventById(E_id));
           c1.setDiscount(c.getDiscount());
           Cdoa.addcoupon(c1);
           return "redirect:/coupon_display";
       }
       
       @RequestMapping(value="/delete_coupon_display")
        public String deletecouponDisplay(Model m){
        List<coupon> list= Cdoa.getCoupons();    
        m.addAttribute("list",list); 
        return "delete_coupon";
    }
       
       
       
       @RequestMapping(value="/del_Coupon",method = RequestMethod.POST)
        public String deletecoupon(@RequestParam("coupon_id")int id){
        Cdoa.deleteCoupon(id);
        return "redirect:/coupon_display";
    }
       

       
       @RequestMapping("update_product/{id}")
       public String UpdateProduct_display(@PathVariable("id")int id,Model m){
            List<category> list=dao.getCategory();    
            m.addAttribute("list",list);  
            products p1 = pdao.getProductsById(id);
            m.addAttribute("product",p1);
           return "update_product";
       }
    
    
    
       
    @RequestMapping(value="updateProduct",method=RequestMethod.POST)
    public String updateproduct(@RequestParam("P_ID") int p_id,@RequestParam("P_name") String p_name,@RequestParam("Price") int price,@RequestParam("cat_id") int cat_id,@RequestParam("imagePath") CommonsMultipartFile file,HttpSession s){
        byte[] data =  file.getBytes();
        String path = s.getServletContext().getRealPath("/")+"WEB-INF"+File.separator+"resources"+File.separator+"images"+File.separator+file.getOriginalFilename();
        System.out.println(path);
        String str_path ="WEB-INF"+File.separator+"resources"+File.separator+"images"+File.separator+file.getOriginalFilename();
        String img_path ="resources"+File.separator+"images"+File.separator+file.getOriginalFilename();

        products p1 = new products();
        p1.setP_id(p_id);
        p1.setP_name(p_name);
        p1.setCost(price);
        p1.setImgpath(img_path);
        p1.setCat(dao.getcategoryById(cat_id));
        pdao.updateProduct(p1);
        try{
            try (FileOutputStream fos = new  FileOutputStream(path)) {
                fos.write(data);
                fos.close();
            } 
            try (FileOutputStream fos1 = new  FileOutputStream(str_path)) {
                fos1.write(data);
                fos1.close();
            } 
            
        }
        catch(IOException e){
            System.out.println(e);
        }

        return "redirect:/products_display";
    }
       
    
       @RequestMapping("update_Event/{id}")
       public String UpdateEvent_display(@PathVariable("id")int id,Model m){  
            event e1 = Edao.geteventById(id);
            m.addAttribute("Event",e1);
           return "update_Event";
       }
    
       
       @RequestMapping(value="/event_update",method = RequestMethod.POST)
       public String UpdateEvent(@ModelAttribute("evt")event evt,@RequestParam("e_start")Date d1,@RequestParam("e_end")Date d2){

                   event eadd = new event();
                   eadd.setE_id(evt.getE_id());
                   eadd.setE_name(evt.getE_name());
                   eadd.setStartDate(d1);
                   eadd.setEnd_date(d2);


           Edao.updateEvent(eadd);
           return "redirect:/Event_display";
       }   
    
    
    
    
       
       
    
    
    
//    ----------------------------Customer --------------------------------------------
    
    
    
    
    
    
    
    
//        @RequestMapping("/l")   
//    public String Display_allProduct(Model m,HttpSession s){  
//        String path = s.getServletContext().getRealPath("/");
////        path = path+File.separator;
//        m.addAttribute("path",path);
//        List<products> list=pdao.getProducts();    
//        m.addAttribute("list",list);  
//        List<category> list1=dao.getCategory();    
//        m.addAttribute("list1",list1);  
//
//        return "allproduct";    
//    } 
    
//    
//    @RequestMapping("login")
//    public String DisplayLoginPage(){
//        return "login_page";
//    }
//    
    
//    @RequestMapping("register")
//    public String DisplayRegisterPage(){
//        return "RegisterPage";
//    }
//    
    
    
  
   @RequestMapping("/categorized")   
    public String Display_categorized(@RequestParam("cat_id")int id,Model m){  
//        List<products> list=pdao.getProducts();    
//        m.addAttribute("list",list); 

        List<products> list=pdao.getProductsByCategory(id);    
        m.addAttribute("list",list);  
        List<category> list1=dao.getCategory();    
        m.addAttribute("list1",list1); 
        return "allproduct_categorized";    
    } 
    
    
//           @RequestMapping(value="/categorized",method = RequestMethod.POST)
//       public String display(@ModelAttribute("categorized_id")int id){
//
//           Edao.addEvent(eadd);
//           return "redirect:/Event_display";
//       }
//    
//    
    
    
}














//        event eadd = new event();
//        eadd.setE_id(evt.getE_id());
//        eadd.setE_name(evt.getE_name());
//        eadd.setStartDate(d1);
//        eadd.setEnd_date(d2);