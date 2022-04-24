<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Grade Submission</title>
<link rel="stylesheet" href="css/bootstrap.css" />
</head>

<body style="background-color: lightblue">
 <a class="btn btn-dark float-end" href="<%= request.getContextPath() %>/StaffLogin.jsp" role="button"><b class="text-warning">LOGOUT</b></a>
 <div class="pt-5">
 <h3 class="mb-3 font-weight-normal text-center" >ENTER GRADE</h3>
 <form style="max-width: 350px;margin: auto;" action="<%= request.getContextPath() %>/Inserted.jsp">
   <label for="regisno" class="sr-only"></label>
   <input type="text" class="form-control" id="regisno" placeholder="Register No">
   
   <label for="CS001" class="sr-only"></label>
   <input type="text" class="form-control" id="CS001" placeholder="CS001">
   
   <label for="CS001" class="sr-only"></label>
   <input type="text" class="form-control" id="CS002" placeholder="CS002">
 
   <label for="CS003" class="sr-only"></label>
   <input type="text" class="form-control" id="CS003" placeholder="CS003">
   
   <label for="CS004" class="sr-only"></label>
   <input type="text" class="form-control" id="CS004" placeholder="CS004">
   
   <label for="CS005" class="sr-only"></label>
   <input type="text" class="form-control" id="CS005" placeholder="CS005">
   
   <label for="CS006" class="sr-only"></label>
   <input type="text" class="form-control" id="CS006" placeholder="CS006">
   
   <button type="submit" class="d-grid gap-2 col-12 mx-auto mt-4 btn btn-dark btn-lg text-warning">SUBMIT</button>
 </form>
 </div>
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
 <script src="js/bootstrap.js"></script>
</body>
</html>
 

