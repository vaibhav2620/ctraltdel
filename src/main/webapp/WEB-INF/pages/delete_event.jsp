<%@page import="java.util.List"%>
<%@page import="com.admin.event"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%-- 
    Document   : category-Display
    Created on : 11-Nov-2022, 11:35:01 AM
    Author     : user1
--%>


<%@page import="com.admin.category"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    
    <style>
        /*

Product Admin CSS Template

https://templatemo.com/tm-524-product-admin

        */
        
        form{
            padding-left: 50px;
            padding-top: 20px;
        }
        html {
            font-size: 16px;
            overflow-x: hidden;
        }
        body {
            font-family: Roboto, Helvetica, Arial, sans-serif;
            background-color: white;
            overflow-x: hidden;
        }
        a {
            transition: all 0.3s ease;
        }
        a:focus,
        a:hover {
            text-decoration: none;
        }
        button:focus {
            outline: 0;
        }
        .navbar-brand {
            display: flex;
            align-items: center;
        }
        .tm-site-icon {
            color: #656565;
        }
        .tm-site-title {
            display: inline-block;
            text-transform: uppercase;
            font-size: 2rem;
            font-weight: 750;
            color: #fff;
        }
        .navbar {
            height: 100px;
            background-color: #455c71;
            padding: 0;
        }
        .navbar .container {
            position: relative;
        }
        .tm-logout-icon {
            font-size: 1.5em;
        }
        .tm-mt-big {
            margin-top: 57px;
        }
        .tm-mb-big {
            margin-bottom: 60px;
        }
        .tm-mt-small {
            margin-top: 20px;
        }
        .tm-block-col {
            margin-bottom: 30px;
        }
        .tm-block {
            padding: 40px;
            -webkit-box-shadow: 1px 1px 5px 0 #455c71;
            -moz-box-shadow: 1px 1px 5px 0 #455c71;
            box-shadow: 1px 1px 5px 0 #455c71;
            min-height: 350px;
            height: 100%;
            max-height: 450px;
        }
        .tm-block-avatar,
        .tm-block-settings {
            max-height: none;
        }
        .tm-block-avatar {
            height: auto;
        }
        .tm-block-h-auto {
            min-height: 1px;
            max-height: none;
            height: auto;
        }
        .tm-block-scroll {
            overflow-y: scroll;
        }
        .tm-block-overflow {
            overflow: hidden;
        }
        .tm-block-title {
            font-size: 2.1rem;
            font-weight: 700;
            color: #fff;
            margin-bottom: 30px;
        }
        .nav-link {
            color: #fff;
            height: 100%;
            display: block;
            align-items: center;
            justify-content: center;
            flex-direction: center;
            font-size: 100%;
        }
        .nav-link > i {
            margin-bottom: 10px;
            margin-right: 0;
            font-size: 1.5rem;
        }
        .dropdown-item,
        .nav-link {
            padding: 15px 20px;
        }
        .dropdown-menu {
            font-size: 90%;
            color: #fff;
            background-color: #567086;
            border-radius: 0;
            padding-top: 10px;
            padding-bottom: 10px;
            min-width: auto;
        }
        .dropdown-item {
            color: #fff;
            padding: 15px 30px;
        }
        .navbar-nav .active > .nav-link,
        .navbar-nav .nav-link.active {
            background-color: none;
            color: #fff;
        }
        .navbar-nav .nav-link.active i {
            color: #fff;
        }
        .dropdown-item:focus,
        .dropdown-item:hover {
            background-color: #567086;
        }
        .navbar-nav a:hover,
        .navbar-nav a:hover i {
            color: #f5a623;
        }
        .nav-item {
            text-align: center;
        }
        .nav-item:last-child {
            margin-right: 0;
        }
        .dropdown-toggle::after {
            display: none;
        }
        .dropdown-menu {
            margin-top: 0;
            border: 0;
        }
        .tm-content-row {
            justify-content: space-between;
            margin-left: -20px;
            margin-right: -20px;
        }
        .tm-col {
            padding-left: 20px;
            padding-right: 20px;
            margin-bottom: 50px;
        }
        .tm-col-big {
            width: 39%;
        }
        .tm-col-small {
            width: 21.95%;
        }
        .tm-gray-circle {
            width: 80px;
            height: 80px;
            background-color: #aaa;
            border-radius: 50%;
            margin-right: 15px;
        }
        .tm-notification-items {
            overflow-y: scroll;
            height: 90%;
        }
        .tm-notification-item {
            padding: 15px;
            background-color: #4e657a;
            color: #fff;
            font-size: 95%;
            margin-bottom: 15px;
        }
        .tm-notification-item:last-child {
            margin-bottom: 0;
        }
        .tm-notification-link {
            color: #f5a623;
        }
        .tm-text-color-secondary {
            color: #bdcbd8;
        }
        .tm-small {
            font-size: 90%;
        }
        .table {
            background-color: #50697f;
            color: #fff;
            font-size: 85%;
            margin-bottom: 0;
        }
        thead {
            background-color: #486177;
            color: #fff;
        }
        .table thead th {
            border-bottom: 0;
        }
        .tm-status-circle {
            display: inline-block;
            margin-right: 5px;
            vertical-align: middle;
            width: 5px;
            height: 5px;
            border-radius: 50%;
            margin-top: -3px;
        }
        .moving {
            background-color: #9be64d;
            box-shadow: 0 0 8px #9be64d, inset 0 0 8px #9be64d;
        }
        .pending {
            background-color: #efc54b;
            box-shadow: 0 0 8px #efc54b, inset 0 0 8px #efc54b;
        }
        .cancelled {
            background-color: #da534f;
            box-shadow: 0 0 8px #da534f, inset 0 0 8px #da534f;
        }
        .tm-avatar {
            width: 345px;
        }
        .tm-avatar-container {
            position: relative;
            cursor: pointer;
            display: flex;
            align-items: center;
            flex-direction: column;
        }
        .tm-avatar-delete-link {
            position: absolute;
            left: 50%;
            top: 50%;
            margin-left: -25px;
            margin-top: -25px;
            z-index: 1000;
            padding: 14px;
            border-radius: 50%;
            background-color: rgba(57, 78, 100, 0.7);
            display: inline-block;
            width: 50px;
            height: 50px;
            text-align: center;
            display: none;
            transition: all 0.2s ease;
        }
        .tm-avatar-container:hover .tm-avatar-delete-link {
            display: block;
        }
        .tm-col-avatar {
            max-width: 425px;
            width: 37%;
            padding-left: 15px;
            padding-right: 15px;
        }
        .tm-col-account-settings {
            max-width: 822px;
            width: 63%;
            padding-left: 15px;
            padding-right: 15px;
        }
        .form-control {
            background-color: #54657d;
            color: #fff;
            border: 0;
        }
        .form-control:focus {
            background-color: #60738e;
            color: #fff;
            border-color: transparent;
            box-shadow: 0 0 0 0.1rem rgb(180, 206, 233, 0.5);
        }
        .form-group label {
            color: #fff;
            margin-bottom: 10px;
        }
        .tm-hide-sm {
            display: block;
        }
        .tm-list-group {
            counter-reset: myOrderedListItemsCounter;
            padding-left: 0;
        }
        .tm-list-group > li {
            list-style-type: none;
            position: relative;
            cursor: pointer;
            transition: all 0.3s ease;
            padding: 8px;
        }
        .tm-list-group > li:hover {
            color: #0266c4;
        }
        .tm-list-group > li:before {
            counter-increment: myOrderedListItemsCounter;
            content: counter(myOrderedListItemsCounter) ".";
            margin-right: 0.5em;
        }
        .tm-list {
            padding-left: 30px;
        }
        .tm-list > li {
            margin-bottom: 20px;
        }
        .form-control {
            padding: 19px 18px;
            border-radius: 0;
            height: 50px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .btn {
            border-radius: 0;
            padding: 13px 28px;
            transition: all 0.2s ease;
            max-width: 100%;
        }
        .btn-small {
            padding: 10px 24px;
        }
        .btn-primary {
            color: #fff;
            background-color: #f5a623;
            border: 2px solid #f5a623;
            font-size: 90%;
            font-weight: 600;
        }
        .btn-primary:active,
        .btn-primary:hover {
            color: #f5a623;
            background-color: transparent;
            border: 2px solid #f5a623;
        }
        .custom-file-input {
            cursor: pointer;
        }
        .custom-file-label {
            border-radius: 0;
        }
        .table td,
        .table th {
            border-top: 1px solid #415a70;
            padding: 15px 25px;
            vertical-align: middle;
        }
        .tm-table-small td,
        .tm-table-small th {
            padding-left: 12px;
            padding-right: 12px;
        }
        .table-hover tbody tr {
            transition: all 0.2s ease;
        }
        .table-hover tbody tr:hover {
            color: #a0c0de;
        }
        .tm-bg-primary-dark {
            background-color: #435c70;
            
       
                           
        }
        .tm-bg-gray {
            background-color: rgba(0, 0, 0, 0.05);
        }
        .tm-table-mt {
            margin-top: 66px;
        }
        .page-item:first-child .page-link {
            border-top-left-radius: 0;
            border-bottom-left-radius: 0;
        }
        .page-item:last-child .page-link {
            border-top-right-radius: 0;
            border-bottom-right-radius: 0;
        }
        .page-link {
            padding: 12px 18px;
        }
        .page-link,
        .page-link:hover {
            color: #000;
        }
        .page-item {
            margin-right: 18px;
        }
        .page-item:last-child {
            margin-right: 0;
        }
        .page-item.active .page-link {
            background-color: #e9ecef;
            border-color: #dee2e6;
            color: #000;
        }
        input[type="checkbox"] {
            cursor: pointer;
            -webkit-appearance: none;
            appearance: none;
            background-color: #394e64;
            background-position: center;
            border-radius: 50%;
            box-sizing: border-box;
            position: relative;
            box-sizing: content-box;
            width: 24px;
            height: 24px;
            transition: all 0.1s linear;
        }
        input[type="checkbox"]:checked {
            background: url(../img/check-mark.png) #394e64 center no-repeat;
        }
        input[type="checkbox"]:focus {
            outline: 0 none;
            box-shadow: none;
        }
        .tm-block-products {
            min-height: 725px;
        }
        .tm-block-product-categories {
            min-height: 650px;
        }
        .tm-product-table-container {
            max-height: 465px;
            margin-bottom: 15px;
            overflow-y: scroll;
        }
        .tm-product-table tr {
            font-weight: 600;
        }
        .tm-product-name {
            font-size: 0.5rem;
            font-weight: 400;
        }
        .tm-product-delete-icon {
            font-size: 1.1rem;
            color: #fff;
        }
        .tm-product-delete-link {
            padding: 10px;
            border-radius: 50%;
            background-color: #394e64;
            display: inline-block;
            width: 40px;
            height: 40px;
            text-align: center;
        }
        .tm-product-delete-link:hover .tm-product-delete-icon {
            color: #6d8ca6;
        }
        .custom-select {
            width: 100%;
            border: none;
            color: #acc6de;
            height: 50px;
            -webkit-appearance: none;
            -moz-appearance: none;
            -ms-appearance: none;
            -o-appearance: none;
            appearance: none;
            -webkit-border-radius: 0;
            -moz-border-radius: 0;
            -ms-border-radius: 0;
            -o-border-radius: 0;
            border-radius: 0;
            padding: 15px;
            background: url(../img/arrow-down.png) 98% no-repeat #50657b;
        }
        .custom-select:focus {
            outline: 0;
        }
        .tm-trash-icon {
            color: #6e6c6c;
            cursor: pointer;
        }
        .tm-trash-icon:hover {
            color: #9f1321;
        }
        .tm-footer {
            background-color: #567086;
            padding-top: 30px;
            padding-bottom: 30px;
            -webkit-box-shadow: 0 -3px 5px 0 rgba(69, 92, 113, 0.59);
            -moz-box-shadow: 0 -3px 5px 0 rgba(69, 92, 113, 0.59);
            box-shadow: 0 -3px 5px 0 rgba(69, 92, 113, 0.59);
        }
        .custom-select {
            height: 50px;
            border-radius: 0;
        }
        .tm-product-img-dummy {
            max-width: 100%;
            height: 240px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
            background: #aaa;
        }
        .tm-product-img-edit {
            max-width: 100%;
            position: relative;
        }
        .tm-product-img-edit i {
            display: none;
            position: absolute;
        }
        .tm-product-img-edit:hover i {
            display: block;
        }
        .tm-upload-icon {
            background: #455c71;
            width: 55px;
            height: 55px;
            border-radius: 50%;
            text-align: center;
            padding-top: 15px;
            font-size: 22px;
        }
        .tm-login-col {
            max-width: 470px;
        }
        .navbar-toggler {
            border-color: #708da8;
            box-shadow: rgba(255, 255, 255, 0.1) 0 1px 1px 2px;
            border-radius: 0;
            padding: 10px 15px;
            transition: all 0.2s ease;
        }
        .navbar-toggler:hover {
            border-color: #f5a623;
            color: #f5a623;
        }
        .tm-nav-icon {
            color: #fff;
        }
        .navbar-toggler:hover .tm-nav-icon {
            color: #f5a623;
        }
        ::-webkit-scrollbar {
            width: 8px;
            height: 8px;
        }
        ::-webkit-scrollbar-track {
            background: #394f62;
        }
        ::-webkit-scrollbar-thumb {
            background: #6d8da6;
        }
        ::-webkit-scrollbar-thumb:hover {
            background: #8ab5d6;
        }

        .tm-footer-link {
            color: white;
        }

        .tm-footer-link:hover,
        .tm-footer-link:focus {
            color: #aacbea;
        }

        @media (min-width: 1200px) {
            .navbar-expand-xl .navbar-nav .nav-link {
                padding-left: 35px;
                padding-right: 35px;
            }
            .navbar-collapse {
                height: 100%;
            }
        }
        @media (min-width: 992px) {
            .navbar-expand-lg .navbar-nav .nav-link {
                padding: 15px 20px;
            }
        }
        @media (max-width: 1275px) and (min-width: 1200px) {
            .nav-item {
                margin-right: 15px;
            }
        }
        @media (max-width: 1350px) {
            .nav-item {
                margin-right: 1px;
            }
        }
        @media (max-width: 1199px) {
            .tm-col-big,
            .tm-col-small {
                width: 49.65%;
            }
            .navbar-collapse {
                padding: 0;
                box-shadow: rgba(255, 255, 255, 0.1) 0 1px 1px 1px;
                position: absolute;
                top: 72px;
                right: 20px;
                width: 200px;
                z-index: 1000;
            }
            .dropdown-menu {
                text-align: center;
            }
            .nav-link {
                color: #fff;
                background-color: #567086;
                padding: 15px;
                flex-direction: row;
            }
            .nav-link > i {
                font-size: 1rem;
                margin-right: 10px;
                margin-bottom: 0;
            }
            .nav-item {
                margin-right: 0;
            }
            .tm-block-taller {
                max-height: 520px;
            }
        }
        @media (max-width: 1199.98px) {
            .navbar-expand-xl > .container,
            .navbar-expand-xl > .container-fluid {
                padding-left: 15px;
                padding-right: 15px;
            }
            .navbar-collapse {
                right: 15px;
            }
        }
        @media (max-width: 991px) {
            .tm-col-big,
            .tm-col-small {
                width: 100%;
                min-height: 383px;
                height: auto;
            }
            .tm-block {
                padding: 30px;
            }
        }
        @media (max-width: 767px) {
            .tm-col-account-settings,
            .tm-col-avatar {
                width: 100%;
                max-width: 100%;
            }
            .tm-block-avatar {
                display: flex;
                flex-direction: column;
            }
            .tm-avatar {
                align-self: center;
            }
            .tm-hide-sm {
                display: none;
            }
        }
        @media (max-width: 633px) {
            .page-item {
                margin-top: 10px;
            }
            .custom-select {
                background-position: 96%;
            }
        }
        @media (max-width: 574px) {
            .navbar-collapse {
                top: 47px;
            }
            .navbar {
                height: 50px;
            }
            .tm-site-title {
                font-size: 1.4rem;
                margin-left: 7px;
            }
            .tm-site-icon {
                font-size: 2em;
            }
        }
        @media (max-width: 480px) {
            .tm-mt-big {
                margin-top: 45px;
            }
            .tm-mb-big {
                margin-bottom: 45px;
            }
            #barChart,
            #lineChart {
                max-height: 350px;
            }
        }


    </style>
    <body>

        <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="UTF-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <meta http-equiv="X-UA-Compatible" content="ie=edge" />
            <title>Product Page - Admin HTML Template</title>
            <link
                rel="stylesheet"
                href="https://fonts.googleapis.com/css?family=Roboto:400,700"
                />
            <!-- https://fonts.google.com/specimen/Roboto -->
            <link rel="stylesheet" href="css/fontawesome.min.css" />
            <!-- https://fontawesome.com/ -->
            <link rel="stylesheet" href="css/bootstrap.min.css" />
            <!-- https://getbootstrap.com/ -->
            <link rel="stylesheet" href="css/templatemo-style.css">
            <link rel="stylesheet" href="<c:url value="\resources\css\catstyle.css" />">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/fontawesome.min.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/v5-font-face.min.css">
            <!--
                Product Admin CSS Template
                https://templatemo.com/tm-524-product-admin
            -->
        </head>

        <body id="reportsPage">
<!--            <nav class="navbar navbar-expand-xl">
                <div class="container h-100">
                    <a class="navbar-brand" href="index.html">
                        <h1 class="tm-site-title mb-0">Product Admin</h1>
                    </a>
                    <button
                        class="navbar-toggler ml-auto mr-0"
                        type="button"
                        data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                        >
                        <i class="fas fa-bars tm-nav-icon"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mx-auto h-100">
                            <li class="nav-item">
                                <a class="nav-link" href="coupon.html">
                                    <i class="fa fa-percent"></i> Coupons
                                    <span class="sr-only">(current)</span>
                                </a> 
                            </li>
                             <li class="nav-item dropdown">
                              <a
                                class="nav-link dropdown-toggle"
                                href="#"
                                id="navbarDropdown"
                                role="button"
                                data-toggle="dropdown"
                                aria-haspopup="true"
                                aria-expanded="false">
                                <i class="far fa-file-alt"></i>
                                <span> Reports <i class="fas fa-angle-down"></i> </span>
                              </a>
                              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Daily Report</a>
                                <a class="dropdown-item" href="#">Weekly Report</a>
                                <a class="dropdown-item" href="#">Yearly Report</a>
                              </div>
                            </li> 
                            <li class="nav-item">
                                <a class="nav-link active" href="products_display">
                                    <i class="fas fa-shopping-cart"></i> Products
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="Event_display">
                                    <i class="far fa-user"></i> Events
                                </a>
                            </li>
                            <li class="nav-item dropdown">
                                <a
                                    class="nav-link dropdown-toggle"
                                    href="#"
                                    id="navbarDropdown"
                                    role="button"
                                    data-toggle="dropdown"
                                    aria-haspopup="true"
                                    aria-expanded="false">
                                    <i class="fas fa-cog"></i>
                                    <span> Settings <i class="fas fa-angle-down"></i> </span>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="#">Profile</a>
                                    <a class="dropdown-item" href="#">Billing</a>
                                    <a class="dropdown-item" href="#">Customize</a>
                                </div>
                            </li>
                        </ul>
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link d-block" href="login.html">
                                    Admin, <b>Logout</b>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            
            -->
            
            
            <nav class="navbar navbar-expand-xl">
                <div class="container h-100">
                    <a class="navbar-brand" href="index.html">
                        <h1 class="tm-site-title mb-0">Product Admin - Delete Event</h1>
                    </a>

<!--                            <li class="nav-item dropdown">
                                <a
                                    class="nav-link dropdown-toggle"
                                    href="#"
                                    id="navbarDropdown"
                                    role="button"
                                    data-toggle="dropdown"
                                    aria-haspopup="true"
                                    aria-expanded="false">
                                    <i class="fas fa-cog"></i>
                                    <span> Settings <i class="fas fa-angle-down"></i> </span>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="#">Profile</a>
                                    <a class="dropdown-item" href="#">Billing</a>
                                    <a class="dropdown-item" href="#">Customize</a>
                                </div>
                            </li>-->
                        </ul>
                        <ul class="navbar-nav">
                            <li class="nav-item">
<!--                                <a class="nav-link d-block" href="login.html">
                                    Admin, <b>Logout</b>
                                </a>-->
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>






<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form method="post" action="del_event" modelAttribute="delete_event">    
        <table >    
         <tr>    
          <td> </td>  
         Event :  <select name  ="e_id"><!-- comment -->
             
            <%

                List<event> ob = (List<event>) request.getAttribute("list");
                for (event s : ob){
            %>   
             <option value ="<%=s.getE_id()%>"><%=s.getE_name()%></option><!-- comment -->
            <%
                }
            %>
         </select>
          
          <!--<td><input type = text placeholder="Enter id" name="e_id" /></td>-->  
         </tr>
         <tr><td><br></td></tr>
         <tr>   
          <td><input type="submit" value="Delete" /></td>    
         </tr>    
        </table>    
       </form> 
        
        
    </body>
</html>
