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

               align-items: center;

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

                align-items: center;
                
                flex-wrap:wrap;

                justify-content: space-evenly;


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



                margin-left:10px;



                justify-content:space-evenly;







            }



            .cards .card{



                margin-right: 5px;
width:30%;


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
        
        
        
           

    </head> 

    <body> 

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" />  



        <!-- Barre de navigation -->  



        <nav>  
            <img class="mb-2 l-block " src="https://github.com/spoojari70/imageproject/blob/main/borcelle%20(crop).png?raw=true" alt="Logo" width="90" height="50"> 
            <div class="onglets">  
                <p class="link">Location</p>  
                <p class="link"><i class="fa fa-map-marker" aria-hidden="true"></i></p>  
                <form>  
                    <input type="search" placeholder="Search">  
                    <button class=enter type=submit><i class="fa fa-search" aria-hidden="true"></i></button>  
                </form>        
                <a href="login" ><i class="fa fa-user" aria-hidden="true" style="margin-right:20px;"></i></a><!-- comment -->
                <a href="register" > <i class="fa fa-user-plus" aria-hidden="true" style="margin-right:20px;"></i></a>
  
            </div>  
        </nav>   

        <div class=trends >       

        </div> 
