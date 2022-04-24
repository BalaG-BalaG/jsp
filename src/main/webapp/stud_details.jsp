<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" >
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css" />

<!-- <meta http-equiv="refresh" content="10;url=<%= request.getContextPath() %>/StudentLogin.jsp" > -->
<title>Student Details</title>

<style>
 table, tr, th, td {
    border: 1px solid black;
    
 }
</style>
</head>
<body style="background-color: lightblue">
    <a class="btn btn-dark btn-sm float-end" href="<%= request.getContextPath() %>/StudentLogin.jsp" role="button"><b class="text-warning">LOGOUT</b></a>
	<%
       Object regno = request.getAttribute("reg");
	   Object name = request.getAttribute("name");
	   Object email = request.getAttribute("email");
	   Object mob = request.getAttribute("mob");
	   Object dob = request.getAttribute("date");
	   
	   Object c1 = request.getAttribute("c1");
	   Object c2 = request.getAttribute("c2");
	   Object c3 = request.getAttribute("c3");
	   Object c4 = request.getAttribute("c4");
	   Object c5 = request.getAttribute("c5");
	   Object c6 = request.getAttribute("c6");
    %>
    <div class="pt-5">
    <h1 class="row justify-content-center">Student Details</h1>
 
    <div  style="max-width: 500px;margin: auto;">
    <table class="table table-dark table-striped  table-responsive">
     <tr class="text-warning">
      <th>RegisterNo</th>
      <td><%=regno%></td>
     </tr>
     <tr class="text-warning">
      <th>Name</th>
      <td><%=name%></td>
     </tr>
     <tr class="text-warning">
      <th>Email</th>
      <td><%=email%></td>
     </tr>
     <tr class="text-warning">
      <th>MobileNo</th>
      <td><%=mob%></td>
     </tr>
     <tr class="text-warning">
      <th>DateOfBirth</th>
      <td><%=dob%></td>
     </tr>
    </table>
    </div>
    <br>
    <div>
    <h1 class="row justify-content-center">SEM1 RESULT</h1>
    
    <div  style="max-width: 600px;margin: auto;">
     <table class="table table-dark table-striped table-responsive">
     <tr class="text-warning">
      <th>SUBJECT_CODE</th>
      <th>GRADE</th>
     </tr>
     <tr class="text-warning">
      <td>CS001</td>
      <td><%=c1%></td>
     </tr>
     <tr class="text-warning">
      <td>CS002</td>
      <td><%=c2%></td>
     </tr>
     <tr class="text-warning">
      <td>CS003</td>
      <td><%=c3%></td>
     </tr>
     <tr class="text-warning">
      <td>CS004</td>
      <td><%=c4%></td>
     </tr>
     <tr class="text-warning">
      <td>CS005</td>
      <td><%=c5%></td>
     </tr>
     <tr class="text-warning">
      <td>CS006</td>
      <td><%=c6%></td>
     </tr>
     </table>
     </div>
    </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>
