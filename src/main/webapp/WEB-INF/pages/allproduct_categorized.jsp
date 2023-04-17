<%--  

    Document   : ALLPRODUCTS 

    Created on : 14-Nov-2022, 10:51:22 AM 

    Author     : user1 

--%> 

<%@page import="com.admin.category"%>
<%@page import="java.util.List"%>
<%@page import="com.admin.products"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html> 

<html> 

    <head> 


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 

        <title>JSP Page</title> 

        <meta charset="UTF-8">  



        <meta http-equiv="X-UA-Compatible" content="IE=edge">  



        <meta name="viewport" content="width=device-width, initial-scale=1.0">  



        <style>

            @import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap');



            *{



                box-sizing: border-box;



                font-family: Arial, Helvetica, sans-serif;



            }









            body{



                display:block;



                margin:0px;



                padding: 0px;



            }



            /* Barre de navigation */



            nav{



                display:flex;



                flex-wrap:wrap;



                justify-content: space-between;



                padding: 10px;



                background-color: #fff;



                position: sticky;



                top: 0;



            }



            nav h1{



                font-size: 20px;



            }



            nav .onglets{



                display: flex;

                justify-content: center;
                align-items: center;
                flex-wrap:wrap;



            }



            nav .onglets p{



                font-size: 17px;



                margin-right: 10px;



                cursor:pointer;



            }



            nav .onglets input{



                margin: 8px 20px;



                padding: 15px;



                border-radius: 30px;



                border:none;



                background-color: #f2f2f2;



                outline:none;



                width:500px;



            }



            .enter{



                border:none;



                padding:10px;



                margin-right:20px;



                border-radius:20px;



            }











            .main{



                margin: 20px;



                margin-top: 80px;



                display:flex;



                flex-direction:column;



                justify-content:center;



                align-items:center;



            }


            /* Toutes les cartes */



            .trends{



                width:100%;



                height:200px;



            }



            .cards{



                display:flex;



                flex-wrap:wrap;



                margin-left:-200px;



                justify-content: space-between;







            }



            .cards .card{



                margin-right: 20px;



                cursor:pointer;



            }



            .cards .card img{



                width: 350px;



            }



            .cards .card .card-header{



                display: flex;



                flex-wrap:wrap;



                justify-content: space-between;



            }



            .cards .card .card-body p{



                margin-top: -10px;



            }



            footer {



                margin-top: 100px;



                background-color: #000;



                padding: 30px;



                color: #fff;



                display: flex;



                flex-wrap:wrap;



                justify-content: space-between;



            }



            footer .social-media{



                display: flex;



            }



            footer .social-media p{



                margin-right: 15px;



                border: 1px solid #fff;



                border-radius: 100%;



                padding: 5px;



                text-align:center;



                width: 20px;



                cursor:pointer;



            }

            @media screen and (max-width: 320px){



                nav .onglets .link, nav h1{



                    display:none;



                }



                .cards .card img{



                    width: 300px;



                }



            }

            .trends{



                background-color:black;



                padding-top:10px;



                margin-bottom:50px;



            }

            .container{



                width: 50%;



                height: 50%;



                padding-top: 15px;



                display: flex;



                flex-wrap: wrap;



                align-items: center;



                justify-content: space-around;



            }









            .container .card1{



                width:270px;



                overflow: hidden;



                text-align: center;



                /* margin-bottom: 10px; */



                border: 2px solid rgb(73, 73, 73);



                border-radius: 15px;



                box-shadow: 0 0 7px rgb(0, 0, 0.8);



            }









            .container .card1 .product-image{



                width: 200px;



                margin: 20px auto;









            }



            .container .card1 .product-image img{



                width: 100%;



                transform: 0.4s;



            }









            .container .card1 .product-image img:hover{



                transform: scale(1.1) ;



            }









            .container .card1 .product-info h4{



                font-size: 18px;



                padding: 0 20px;



                /* margin-bottom: 10px; */



            }









            .container .card1 .btn{



                width: 100%;



            }









            .container .card1 .btn button{



                width: 100%;



                padding: 10px;



                background: #000;



                border: 1px solid gray;



                outline: none;



                color: white;



                cursor: pointer;



                font-size: 20px;



                border-radius: 0 0 15px 15px ;



            }



        </style>     
        
        
        <%
         if(request.getSession()!=null){
        String session_name = (String) session.getAttribute("name");
            }
            %>
        
        
        
           

    </head> 

    <body> 

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" />  



        <!-- Barre de navigation -->  



        <nav>  
            <img class="mb-2 l-block " src="https://github.com/spoojari70/imageproject/blob/main/borcelle%20(crop).png?raw=true" alt="Logo" width="90" height="50"> 
            <div class="onglets">
                <% 
                    if(request.getSession().getAttribute("customer")!=null){
                    %>
                <p class="link">${customer.cust_address}</p>  
                <p class="link"><i class="fa fa-map-marker" aria-hidden="true"></i></p>  
               <% 
                   }else{
                   %>
                <p class="link">Location</p>  
                <p class="link"><i class="fa fa-map-marker" aria-hidden="true"></i></p>                  
                <%
                    }
                    %>
                <form>  
                    <input type="search" placeholder="Search">  
                    <button class=enter type=submit><i class="fa fa-search" aria-hidden="true"></i></button>  
                </form>
                <% 
                    if(request.getSession().getAttribute("customer")!=null){
                    %>
                <h1 style="padding-left:10px;">${customer.cust_name}</h1>
                <a href="cust_cart"><p style="margin:10px;"><i class="fas fa-shopping-cart"></i></p></a>
                <a href="logout_page" class="btn btn-sm btn-default"><span class="glyphicon glyphicon-log-out"></span> Logout</a>

                <% 
                    }
else{
                    %>
                <a href="login" ><i class="fa fa-user" aria-hidden="true" style="margin-right:20px;"></i></a><!-- comment -->
                <a href="register" > <i class="fa fa-user-plus" aria-hidden="true" style="margin-right:20px;"></i></a>          
                <%
                    }
                %>
            </div>  
        </nav>   
     

        
        
        
        <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="https://assets.ajio.com/cms/AJIO/WEB/18112022-unisex-d-main-p2-brands-4060.jpg" style="width:100%">
  <div class="text">.</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="https://assets.ajio.com/cms/AJIO/WEB/18112022-unisex-d-main-p4-brands-upto70.jpg" style="width:100%">
  <div class="text">.</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="https://assets.ajio.com/cms/AJIO/WEB/18112022-d-unisex-main-p1-brands-flat70.jpg" style="width:100%">
  <div class="text">.</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
 
<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 4000); // Change image every 2 seconds
}
</script>


        <div class="col-md-6">
        <form action="categorized" method=post modelAttribute = categorized_id >    
            <select name="cat_id" id="cars" placeholder="categories" style="padding:5px;border-width: 2px;border-radius: 5px;border-color:lightgrey; color:grey;margin-left: 40%;">
                <%
                    List<category> ob = (List<category>) request.getAttribute("list1");
                    for (category s : ob) {
                %>
                <!--                                                                                                                  <input type="number" name="cat_id">-->
                <option value ="<%=s.getCat_id()%>" ><%=s.getCat_name()%></option>

                <%
                    }
                %>
            </select>

            <button type="submit" value="add" style="padding:5px;border-width: 2px;border-radius: 5px;border-color:lightgrey; color:grey;">display</button>
        </form>
        </div>







        <div class="cards"> 
            
                <%
                    String path = (String) request.getAttribute("path");
                    List<products> ob1 = (List<products>) request.getAttribute("list");
                    for (products s : ob1) {
                        String wholePath = path + s.getImgpath();
                %>  
                <a href="hello123/<%=s.getP_id()%>">     
            <div class="container mt-5">
                <div class="card1">  
                    <div class="product-image">  
                        <img src=<%=s.getImgpath()%> style="width:200px;height:300px;">  
                    </div>  
                    <div class="product-info">  
                        <h4><%= s.getP_name()%></h4>  
                        <h4><%= s.getCost()%></h4> 
                    </div>
               </a>
                <a href="addTocart/<%=s.getP_id()%>">
                    <div class="btn">  
                        <button type="button">Add to Cart</button>  
                    </div>
                </a>
                </div> 
            </div>
                <%
                    }
                %>
            
        </div>    
    </div>  
</body> 



<footer>  



    <p>&copy; Pehnava & Co.</p>  



    <div class="social-media">  



        <p><i class="fab fa-facebook-f"></i></p>  



        <p><i class="fab fa-twitter"></i></p>  



        <p><i class="fab fa-instagram"></i></p>  



        <p><i class="fab fa-linkedin-in"></i></p>  



    </div>  



</footer>  

</html>  













































