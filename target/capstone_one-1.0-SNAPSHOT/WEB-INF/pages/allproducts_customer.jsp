<%-- 
    Document   : ALLPRODUCTS
    Created on : 14-Nov-2022, 10:51:22 AM
    Author     : user1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 

    <meta http-equiv="X-UA-Compatible" content="IE=edge"> 

    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap'); 
        
<!-- CSS only -->
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


ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a, .dropbtn {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

li.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1;}

.dropdown:hover .dropdown-content {
  display: block;
}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a grey background color */
.prev:hover, .next:hover {
  background-color: #f1f1f1;
  color: black;
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

  margin-left:50px; 

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
    </head>
    <body>
        
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" /> 

  <!-- Barre de navigation --> 

  <jsp:include page="/WEB-INF/pages/navBar.jsp"/>

  
  <ul>
  <li><a href="#home">Home</a></li>
  <li><a href="#news">Trending</a></li>
 
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Category</a>
    <div class="dropdown-content">
      <a href="#">Link 1</a>
      <a href="#">Link 2</a>
      <a href="#">Link 3</a>
    </div>
  </li>
  <li><a href="#news">About Us</a></li>
  
</ul>

<h3> </h3>
<p> </p>

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

  <div class=trends >      
  </div>
  
    <div class="cards"> 

      <div class="container mt-5"> 

        <div class="card1"> 

            <div class="product-image"> 

                <img src="https://apisap.fabindia.com/medias/20030627-1.jpg?context=bWFzdGVyfGltYWdlc3wxMDg2MzR8aW1hZ2UvanBlZ3xoOTkvaGNlLzkwOTM4NTUxMTczNDIvMjAwMzA2MjdfMS5qcGd8MWI0YTNkMzk3YzYwOWJkMzMyNTk3ZjI2YTZjZGZlMmI2ZGQ2OThjYzI3MDk2YjBiNmEyM2MxNzhkNGI4Yjg5YQ" alt="img"> 

            </div> 

            <div class="product-info"> 

                <h4>Dress 1</h4> 

                <h4>Rs45,445</h4> 

            </div> 

            <div class="btn"> 

                <button type="button">Add to Cart</button> 

            </div> 

            </div> 

        </div> 

       

      <div class="container"> 

        <div class="card1"> 

            <div class="product-image"> 

                <img src="https://apisap.fabindia.com/medias/20030602-1.jpg?context=bWFzdGVyfGltYWdlc3w3ODU3MnxpbWFnZS9qcGVnfGhmYS9oNjUvOTA4ODc2MzEwMTIxNC8yMDAzMDYwMl8xLmpwZ3wxYjJhZTQ0YTI2YWUzOTE2MjUwMzI4MzU2NzEzN2JkNDNjZjQ0MmJiN2I5ZGY3ZDA4N2QxOTI1ZTI4ZmJiZmFh" alt="img"> 

            </div> 

            <div class="product-info"> 

                <h4>Dress 2</h4> 

                <h4>Rs4,45,645</h4> 

            </div> 

            <div class="btn"> 

                <button type="button">Add to Cart</button> 

            </div> 

            </div> 

        </div> 

 
 
 

        <div class="container"> 

          <div class="card1"> 

              <div class="product-image"> 

                  <img src="https://apisap.fabindia.com/medias/10742724-1.jpg?context=bWFzdGVyfGltYWdlc3w4NTA3MHxpbWFnZS9qcGVnfGhmMy9oZWIvOTA4ODc1Njg0MjUyNi8xMDc0MjcyNF8xLmpwZ3w2MWRkNTU4ZGZhZTllZDU3Mjg4MGI1ZjhkMmZkYjMzOGQ5YjA4MTVhYTdiOWJiNzhiNDg2NjY0MDVjYjY1ZjVm" alt="img"> 

              </div> 

              <div class="product-info"> 

                  <h4>Dress 3</h4> 

                  <h4>Rs98,485</h4> 

              </div> 

              <div class="btn"> 

                  <button type="button">Add to Cart</button> 

              </div> 

              </div> 

          </div> 

 
 

          <div class="container"> 

            <div class="card1"> 

                <div class="product-image"> 

                    <img src="https://apisap.fabindia.com/medias/10719194-1.jpg?context=bWFzdGVyfGltYWdlc3w1MzQ3MTR8aW1hZ2UvanBlZ3xoMjQvaDczLzkwODcxNDk1MDY1OTAvMTA3MTkxOTRfMS5qcGd8ZmUxNmJmZDk3ZGU0MjY1ZTkxMGZiYTViMDljYTVmMGQ2MTdhM2YyY2Y3YjliZGU0YTYxZGMyOTYwZGQxMzNmMw" alt="img"> 

                </div> 

                <div class="product-info"> 

                    <h4>Dress 4</h4> 

                    <h4>Rs98,485</h4> 

                </div> 

                <div class="btn"> 

                    <button type="button">Add to Cart</button> 

                </div> 

                </div> 

            </div> 

 

            <div class="container"> 

              <div class="card1"> 

                  <div class="product-image"> 

                      <img src="https://apisap.fabindia.com/medias/20030721-1.jpg?context=bWFzdGVyfGltYWdlc3wxMzM3MzB8aW1hZ2UvanBlZ3xoZjAvaGI4LzkwODQwNjgxMDIxNzQvMjAwMzA3MjFfMS5qcGd8MzZiMjkyYzMzMzNkN2E5YTBlNGE0ODkyY2IyMjk1NWI0NzkwZjljZmMwMWNmYjQ4YTgzOWE3M2ZmYWI1MWE3MA" alt="img"> 

                  </div> 

                  <div class="product-info"> 

                      <h4>Dress 2</h4> 

                      <h4>Rs4,45,645</h4> 

                  </div> 

                  <div class="btn"> 

                      <button type="button">Add to Cart</button> 

                  </div> 

                  </div> 

              </div> 

 
 
 

              <div class="container"> 

                <div class="card1"> 

                    <div class="product-image"> 

                        <img src="https://apisap.fabindia.com/medias/10706391-1.jpg?context=bWFzdGVyfGltYWdlc3wxODQxMzh8aW1hZ2UvanBlZ3xoMGUvaGM3Lzg5MjI1NzgyNTU5MDIvMTA3MDYzOTFfMS5qcGd8ZTc3NTA3MGIzOWI0YTQ2NjNlYTg3MTNkMGUxYjE5NGY1OTZhOTQzNGI0Y2ZlMDE3ZDk2OWU2MjIyZTA2YmUwZQ" alt="img"> 

                    </div> 

                    <div class="product-info"> 

                        <h4>Dress 2</h4> 

                        <h4>Rs4,45,645</h4> 

                    </div> 

                    <div class="btn"> 

                        <button type="button">Add to Cart</button> 

                    </div> 

                    </div> 

                </div> 

    </div>            

 
 

      </div>   

     </div> 
     <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 
     </body>

     <footer> 

    <p>&copy; Contact +91 82827642</p> 

    <div class="social-media"> 

      <p><i class="fab fa-facebook-f"></i></p> 

      <p><i class="fab fa-twitter"></i></p> 

      <p><i class="fab fa-instagram"></i></p> 

      <p><i class="fab fa-linkedin-in"></i></p> 

    </div> 

  </footer> 

  </html> 
       
    






    

   


 

 

   

   

 