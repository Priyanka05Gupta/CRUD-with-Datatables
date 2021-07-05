<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
    label {
        display: inline-block;
        width: 200px;
        margin: 5px;
        text-align: left;
    }
    input:required {
  		border: 1px dashed red;
	}
    input[type=text], input[type=password], select {
        width: 200px;  
    }
    input[type=radio] {
        display: inline-block;
        margin-left: 45px;
    }
    input[type=checkbox] {
        display: inline-block;
        margin-right: 190px;
    }  
     
    button {
        padding: 10px;
        margin: 10px;
    }
</style>

<meta charset="ISO-8859-1">
<!-- REFERENCE CODE ------https://www.codejava.net/frameworks/spring-boot/spring-boot-form-handling-tutorial-with-spring-form-tags-and-jsp -->
<title>Employee Update Form</title>
<link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">  
      <script src="http://code.jquery.com/jquery-1.10.2.js"></script>  
      <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>  
  
      <!-- Javascript -->  
      <script>  
         $(function() {  
            $( "#datepicker-1" ).datepicker();  
         });  
      </script>  
</head>
<body>
    <div align="center">
        <h2>Employee Update Form</h2>
<!-- Spring form tags -->
        <form:form action="update" method="post" modelAttribute="emp">
<%--         	<form:label path="id">Id:</form:label> --%>
            <form:hidden path="id"/><br/>
            
            <form:label path="first_name">First name:</form:label>
            <form:input path="first_name" minlength="2" required="true"/><br/>
            
             <form:label path="last_name">Last name:</form:label>
            <form:input path="last_name" minlength="2" required="true"/><br/>
             
            <form:label path="joining_date">Joining Date:</form:label>
            <form:input path="joining_date" id="datepicker-1" required="true" date="true" dateITA="true"/><br/>
             
            <form:label path="salary">Salary:</form:label>
            <form:input path="salary" required="true"/><br/>      
 
            <form:label path="gender">Gender:</form:label>
            <form:select path="gender" items="${gender}" /> <br/>
                         
            <form:label path="city">City:</form:label>
            <form:select path="city" items="${city}" /><br/>
                     
            <form:button>Update</form:button>
        </form:form>
    </div>
</body>
</html>