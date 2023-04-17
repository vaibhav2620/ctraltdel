<%@page import="java.util.List"%>
<%@page import="com.admin.products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Chivo&family=Poppins:wght@300;400;500;600;700&family=Rosario:wght@400;700&family=Source+Code+Pro&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <title>All Products - RedStore</title>
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
/* navigation */ 
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




a{
    text-decoration: none;
    color: #555;
}

p{
    color: #555;
}

.container{
    max-width: 1300px;
    margin: auto;
    padding-left: 25px;
    padding-right: 25px;
}

.row{
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    justify-content: space-around;
}

.col-2{
    flex-basis: 50%;
    min-width: 300px;
}

.col-2 img{
    max-width: 100%;
    max-height: 100%;
    padding: 50px 0;
}

.col-2 h1{
    font-size: 50px;
    line-height: 60px;
    margin: 25px 0;
}

.btn{
    display: inline-block;
    background: #ff523b;
    color: #fff;
    padding: 8px 30px;
    margin: 30px 0;
    border-radius: 30px;
    transition: 0.5s; 
}

.btn:hover{
    background: #563434;
}

.header{
    background: radial-gradient(#fff,#ffd6d6);
}

.header .row{
    margin-top: 70px;
}

.categories{
    max-width: 1800px;
    margin: 70px 0;
}

.col-3{
    flex-basis: 30%;
    min-width: 250px;
    margin-bottom: 30px;
}

.col-3 img{
    width: 100%;
}

.small-container{
    max-width: 1080px;
    margin: auto;
    padding-left: 25px;
    padding-right: 25px;
}

.col-4{
    flex-basis: 25%;
    padding: 10px;
    min-width: 200px;
    margin-bottom: 50px;
    transition: 0.5s;
}

.col-4 img{
    width: 100%;
}

.fa{ 
    font-family: 'FontAwesome' !important; 
}

.title{
    text-align: center;
    margin: 0 auto 80px;
    position: relative;
    line-height: 60px;
    color: #555;
}

.title::after{
    content: '';
    background: #ff523b;
    width: 80px;
    height: 5px;
    border-radius: 5px;
    position: absolute;
    bottom: 0;
    left: 50%;
    transform: translate(-50%);
}

h4{
    color: #555;
    font-weight: normal;
}

.col-4 p{
    font-size: 14px;
}

.rating .fa{
    color: #ff523b;
}

.col-4:hover{
    transform: translate(-5px);
}

.offer{
    background: radial-gradient(#fff,#ffd6d6);
    margin-top: 80px;
    padding: 30px 0;
}

.col-2 .offer-img{
    padding: 50px;
}

small{
    color: #555;
}

.testimonial{
    padding: 100px;
}

.testimonial .col-3{
    text-align: center;
    padding: 40px 20px;
    box-shadow: 0 0 20px 0px rgba(0, 0, 0, 0.1);
    cursor: pointer;
    transition: 0.5s;
}

.testimonial .col-3 img{
    width: 50px;
    margin-top: 20px;
    border-radius: 50px;
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

.copyright{
    text-align: center;
}

.menu-icon{
    width: 28px;
    margin-left: 20px;
    display: none;
}

.row-2{
    justify-content: space-between;
    margin: 100px auto 50px;
}

select{
    border: 1px solid #ff523b;
    padding: 5px;
}

select:focus{
    outline: none;
}

.page-btn{
    margin: 0 auto 80px;

}

.page-btn span{
    display: inline-block;
    border: 1px solid #ff523b;
    margin-left: 10px;
    width: 40px;
    height: 40px;
    text-align: center;
    line-height: 40px;
    cursor: pointer;
}

.page-btn span:hover{
    background:#ff523b;
    color: #fff;
}

.single-product{
    margin-top: 80px;
}

.single-product .col-2 img{
    padding: 0;
}

.single-product .col-2{
    padding: 20px;
}

.single-product h4{
    margin: 20px 0;
    font-size: 22px;
    font-weight: bold;
}

.single-product select{
    display: block;
    padding: 10px;
    margin-top: 20px;
}

.single-product input{
    width: 50px;
    height: 40px;
    padding-left: 10px;
    font-size: 20px;
    margin-right: 10px;
    border: 1px solid #ff523b;
}

input:focus{
    outline: none;
}


.single-product .fa{
    color: #ff523b;
    margin-left: 10px;
}

.small-img-row{
    display: flex;
    justify-content: space-between;
}

.small-img-col{
    flex-basis: 24%;
    cursor: pointer;
}

.cart-page{
    margin: 80px auto;
}

table{
    width: 100%;
    border-collapse: collapse;
}

.cart-info{
    display: flex;
    flex-wrap: wrap;
}

th{
    text-align: left;
    padding: 5px;
    color: #fff;
    background: #ff523b;
    font-weight: normal;
}

td{
    padding: 10px 5px;
}

td input{
    width: 40px;
    height: 30px;
    padding: 5px;
}

td a{
    color: #ff523b;
    font-size: 12px;
}

td img{
    width: 80px;
    height: 80px;
    margin-right: 10px;
}

.total-price{
    display: flex;
    justify-content: flex-end;
}

.total-price table{
    border-top: 3px solid #ff523b;
    width: 100%;
    max-width: 400px;
}

td:last-child{
    text-align: right;
}

th:last-child{
    text-align: right;
}

.account-page{
    padding: 50px 0;
    background: radial-gradient(#fff,#ffd6d6);
}

.form-container{
    background: #fff;
    width: 300px;
    height: 400px;
    position: relative;
    text-align: center;
    padding: 20px 0;
    margin: auto;
    /* box-shadow: 0 0 20px 0px rgba(0, 0, 0, 0.1); */
    overflow: hidden;
}

.form-container span{
    font-weight: bold;
    padding: 0 10px;
    color: #555;
    cursor: pointer;
    width: 100px;
    display: inline-block;
}

.form-btn{
    display: inline-block;
}

.form-container form{
    max-width: 300px;
    padding: 0 20px;
    position: absolute;
    top: 130px;
    transition: transform 1s;
}

form input{
    width: 100%;
    height: 30px;
    margin: 10px 0;
    padding: 0 10px;
    border: 1px solid #ccc;
}

form .btn{
    width: 100%;
    border: none;
    cursor: pointer;
    margin: 10px 0;
}

form .btn:focus{
    outline: none;
}

#LoginForm{
    left: -300px;
}

#RegForm{
    left: 0;
}

form a{
    font-size: 12px;
}

#Indicator{
    width: 100px;
    border: none;
    background: #ff523b;
    height: 3px;
    margin-top: 8px;
    transform: translateX(100px);
    transition: transform 1s;
}





@media only screen and (max-width: 800px){
    nav ul{
        position: absolute;
        top: 70px;
        left: 0;
        background: #333;
        width: 100%;
        overflow: hidden;
        transition: max-height 0.5s;
    }

    nav ul li{
        display: block;
        margin-right: 50px;
        margin-top: 10px;
        margin-bottom: 10px;
    }

    nav ul li a{
        color: #fff;
    }
    .menu-icon{
        display: block;
        cursor: pointer;
    }
}

@media only screen and (max-width: 600px){
    .row{
        text-align: center;
    }

    .col-2, .col-3, .col-4{
        flex-basis: 100%;
    }

    .single-product .row{
        text-align: left;
    }

    .single-product .col-2{
        padding: 20px 0;
    }

    .single-product h1{
        font-size: 26px;
        line-height: 32px;
    }

    .cart-info{
        display: none;
    }

}
</style>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

</head>
<body>
    

 
    <div class="container">
        <nav>   
            <img class="mb-2 l-block " src="https://github.com/spoojari70/imageproject/blob/main/borcelle%20(crop).png?raw=true" alt="Logo" width="90" height="50">
           
            <div class="onglets">
                
                
                <% 
                    if(request.getSession().getAttribute("customer")!=null){
                    %>

              <p class="link">${customer.cust_address}</p> 
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
    </div>

    <!-- single product details -->
        <%
//            String path = (String)request.getAttribute("pro");
            products ob = (products) request.getAttribute("pro");
            String path = ob.getImgpath();
//            for (products s : ob) {
//            String wholePath = path+s.getImgpath();

       

        %>
        
    <div class="small-container single-product">
        <div class="row">
            <div class="col-2">
                <img src="/capstone_one/<c:url value="<%=ob.getImgpath()%>"/>" width="100%" id="ProductImg">
                    
                <div class="small-img-row">
                    
                </div>


            </div>
            <div class="col-2">
                <h1><%= ob.getP_name()%></h1>
                
                <h4>₹<%=ob.getCost()%></h4>
                <select>
                    <option>Select-Size</option>
                    <option>XXL</option>
                    <option>XL</option>
                    <option>L</option>
                    <option>M</option>
                    <option>S</option>
                </select>
                <input type="number" value="1">
                <a href="../addTocart/<%=ob.getP_id()%>" class="btn">Add To Cart</a>

                <h3>Product Details <i class="fa fa-indent"></i></h3>
                <br>
                <p>Give your summer wardrobe a style upgrade with the ZARA Men's Shirt. Team it with a pair of shorts for morning workout or a denims for an evening out with the guys.</p>

            </div>

           <div class="small-container single-product">
   
   
                    <div class="col-2">
  
        <a href="happy">
            <div class="products_info">  
                <h4></h4>  
            </div> 
             </a> 
                    </div>





        </div>
    </div>

<!-- title -->
<div class="small-container">

</div>

<!-- products -->

<div class="small-container">


</div>
</div>




          
        </div>
        
        
    </div>
</div>

<!-- js for toggle menu -->

<script>
    var MenuItems = document.getElementById("MenuItems");

    MenuItems.style.maxHeight = "0px";

    function menutoggle(){
        if(MenuItems.style.maxHeight == "0px")
        {
            MenuItems.style.maxHeight = "200px";
        }
        else 
        {
            MenuItems.style.maxHeight = "0px";
        }
    }
</script>

<!-- js for product gallery -->

<script>
    let ProductImg = document.getElementById("ProductImg");
    let SmallImg = document.getElementsByClassName ("small-img");

        SmallImg[0].onclick = function()
        {
            ProductImg.src = SmallImg[0].src;
        }
        SmallImg[1].onclick = function()
        {
            ProductImg.src = SmallImg[1].src;
        }
        SmallImg[2].onclick = function()
        {
            ProductImg.src = SmallImg[2].src;
        }
        SmallImg[3].onclick = function()
        {
            ProductImg.src = SmallImg[3].src;
        }

</script>

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







