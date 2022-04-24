<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" >
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.css" rel="stylesheet"/>
<title>Staff Login</title>
</head>

<body style="background-color: lightblue">
 
 <!-- <a href="<%= request.getContextPath() %>/home.jsp"><b>Home</b></a>&nbsp;
 <a href="<%= request.getContextPath() %>/StudentLogin.jsp"><b>StudentLogin</b></a>&nbsp;
 <a href="<%= request.getContextPath() %>/StaffLogin.jsp"><b>StaffLogin</b></a> -->
 
 <nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="<%= request.getContextPath() %>/home.jsp" >
    <span style="color: #fd7e14">University</span> <span style="color: white"> of </span> <span style="color: green">India</span>
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active text-warning" aria-current="page" href="<%= request.getContextPath() %>/home.jsp">Home</a>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-warning" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Academics
          </a>
          <ul class="dropdown-menu bg-dark" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item text-warning" href="#">UG Courses</a></li>
            <li><a class="dropdown-item text-warning" href="#">PG Courses</a></li>
            <li><a class="dropdown-item text-warning" href="#">Research</a></li>
          </ul>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-warning" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Departments
          </a>
          <ul class="dropdown-menu bg-dark" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item text-warning" href="#">Aeronautical</a></li>
            <li><a class="dropdown-item text-warning" href="#">Civil</a></li>
            <li><a class="dropdown-item text-warning" href="#">Computer Science</a></li>
            <li><a class="dropdown-item text-warning" href="#">Electronics and Communication</a></li>
            <li><a class="dropdown-item text-warning" href="#">Electrical and Electronics</a></li>
            <li><a class="dropdown-item text-warning" href="#">Information Technology</a></li>
            <li><a class="dropdown-item text-warning" href="#">Mechanical</a></li>
          </ul>
        </li>
                
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-warning" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            GradePortal
          </a>
          <ul class="dropdown-menu bg-dark" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item text-warning" href="<%= request.getContextPath() %>/StudentLogin.jsp">StudentLogin</a></li>
            <li><a class="dropdown-item text-warning" href="<%= request.getContextPath() %>/StaffLogin.jsp">StaffLogin</a></li>
          </ul>
        </li>
        
        <li class="nav-item">
          <a class="nav-link text-warning"  href="<%= request.getContextPath() %>/Contact.jsp">Contact</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
 
 <div class="text-center mt-5">
   <%
     String error = (String)request.getAttribute("Error");
     if(error!=null){%>
    	 <h4><%= error %></h4>
   <% }
   %>

   <h1 class="h3 mb-3 font-weight-normal" >Staff Login</h1>
   <form style="max-width: 350px;margin: auto;" action="<%= request.getContextPath() %>/Login">
     <label for="input3" class="sr-only"></label>
     <input type="text" name="sid" class="form-control" id="input3" placeholder="Staff ID">
     
     <label for="pass" class="sr-only"></label>
      <input type="password" name="pass" class="form-control" id="pass" placeholder="Password">
   
     <button type="submit" class="d-grid gap-2 col-12 mx-auto mt-4 btn btn-dark btn-lg text-warning">Log in</button>
   </form>
 </div>
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
 <script src="js/bootstrap.js"></script>
</body>
</html>