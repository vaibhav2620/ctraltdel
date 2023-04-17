<%-- 
    Document   : delete_category
    Created on : 11-Nov-2022, 3:08:39 PM
    Author     : user1
--%>

<%@page import="com.admin.coupon"%>
<%@page import="java.util.List"%>
<%@page import="com.admin.category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        
        <form method="post" action="del_Coupon" modelAttribute="delete_coupon">    
        <table >    
         <tr>  
            <td>ID : </td> 
            <td>
            <select name="coupon_id" id="cars">
            <% 
            List<coupon> ob = (List<coupon>) request.getAttribute("list");
            for (coupon s : ob) {
            %>
<!--                                                                                                                  <input type="number" name="cat_id">-->
<option value ="<%=s.getCoupon_id()%>" ><%=s.getCoupon_name()%></option>
                                                                                                                        <!--                                        <tr>  
   
                                                                                                                                                                </tr> -->
                        
                        
            <%
               }

            %>
            </select>
            </td>
          
         </tr>
         <tr>   
          <td><input type="submit" value="Delete"  /></td>    
         </tr>    
        </table>    
       </form> 
        
        
    </body>
</html>
