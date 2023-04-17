

<%-- 
    Document   : loginpage
    Created on : 14-Nov-2022, 4:04:35 PM
    Author     : user1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>  
    <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
    rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Pehenav & Co.</title>

    </head>
     <body>
    <div class="container">
      <div class="py-10 text-center" > 
        <img class="mb-4 d-block mx-auto" src="https://raw.githubusercontent.com/spoojari70/imageproject/main/borcelle%20(1).png" alt="Logo" width="160" height="160">
        <h2>Register</h2>
        <p class="lead">Please fill in this form to create an account.</p>
    </div>
    </div>
    <form action="insert" method="post" class="form active" id="register" modelAttribute = register commandName="userForm">
        <div class="mx-auto" style="width: 70%;">
          <div class="row g-10 ">
            <div class="col-10 col-lg-10  ">
              <h4 class="mb-3">Create your account</h4>
              <form class="needs-validation" novalidate>
                <div class="row g-3">
                    <div class="col-12">
                    <label for="Id" class="form-label">Id</label>
                    <input type="text" name= "cust_id" class="form-control" id="cust_id" placeholder=" Enter Id" value="" required>
                    <div class="invalid-feedback">
                      Valid id is required.
                    </div>
                   <div class="col-12">
                    <label for="Name" class="form-label">Name</label>
                    <input type="text" name= "cust_name" class="form-control" id="cust_name" placeholder="Full name" value="" required>
                    <div class="invalid-feedback">
                      Valid Name is required.
                    </div>
                  </div>
                 
                 <div class="col-12">
                    <label for="Contact Number" class="form-label">Contact Number <span class="text-muted"></span></label>
                    <input type="number" name= "cust_phone"class="form-control" id="cust_phone" placeholder="+91" required>
                    <div class="invalid-feedback">
                      Please enter a valid phone number for shipping updates.
                    </div>
                  </div>

                 <div class="col-12">
                    <label for="email" class="form-label">Email <span class="text-muted"></span></label>
                    <input type="email"name= "cust_email" class="form-control" id="cust_email" placeholder="email@example.com" required>
                    <div class="invalid-feedback">
                      Please enter a valid email address for shipping updates.
                    </div>
                  </div>

                  <div class="col-12">
                    <label for="password" class="form-label">Password <span class="text-muted"></span></label>
                    <input type="password" name= "cust_pwd" class="form-control" id="cust_pwd" placeholder="Strong password needed" required>
                    <div class="invalid-feedback">
                      Please enter a valid password.
                    </div>
                  </div>
     
                  <div class="col-12">
                    <label for="address" class="form-label">Address</label>
                    <input type="text" name= "cust_address"class="form-control" id="cust_address" placeholder="Enter City" required>
                    <div class="invalid-feedback">
                      Please enter your shipping address.
                    </div>
                  </div>
                </div>
     
                <hr class="my-6">
     
                <button class="w-100 btn btn-primary btn-lg" type="submit">Continue Shopping </button>
              </form>
            </div>
          </div>
        </div>

        </main>
     
        <footer class="my-5 pt-5 text-muted text-center text-small">
          <p class="mb-1">&copy; 2017–2021 PEHENAVA & CO.</p>
          <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Privacy</a></li>
            <li class="list-inline-item"><a href="#">Terms</a></li>
            <li class="list-inline-item"><a href="#">Support</a></li> 
          </ul>
        </footer>
      </div>
     
     
          <script src="/docs/5.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
     
            <script src="form-validation.js"></script>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>
</html>

