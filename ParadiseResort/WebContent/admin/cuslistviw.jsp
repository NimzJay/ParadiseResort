<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link rel="stylesheet" href="/css/dash.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer List View</title>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-xs-12 col-sm-12">
                <div class="row">
                    <div class="col-md-2 col-xs-12 col-sm-12">
                        <section>
                            <div class="wrapper">
                                <div class="sidebar">
                                    <div class="profile">
                                        <img src="/sas.png" alt="profile_picture">
                                        <h3>Anamika Roy</h3>
                                        <p>Designer</p>
                                    </div>
                                    <ul>
                                        <li>
                                            <a href="./dashboard.html" >
                                                <span class="icon"><i class="fas fa-home"></i></span>
                                                <span class="item">Home</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="active">
                                                <span class="icon"><i class="fas fa-desktop"></i></span>
                                                <span class="item">Customer List View</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <span class="icon"><i class="fas fa-user-friends"></i></span>
                                                <span class="item">Add New Customer</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <span class="icon"><i class="fas fa-sign-out-alt"></i></span>
                                                <span class="item">Log-out</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>

                            </div>
                        </section>
                    </div>
                    <div class="col-md-10">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="view">
                                            <div class="view_table">
                                                <h1><b>Customer List</b></h1>
                                                <p>All Customers are Listed Here. You can perform <b>Edit</b> or <b>Delete</b>.</p>
                                                <table>
                                                    <tr>
                                                        <th>
                                                            First Name
                                                        </th>
                                                        <th>
                                                            Second Name
                                                        </th>
                                                        <th>
                                                             Email 
                                                        </th>
                                                        <th>
                                                            Contact Number
                                                        </th>
                                                        <th>
                                                            Rooms Booked
                                                        </th>
                                                        <th>
                                                            Payemnt
                                                        </th>
                                                        <th>
                                                            Edit
                                                        </th>
                                                        <th>
                                                            Delete
                                                        </th>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>