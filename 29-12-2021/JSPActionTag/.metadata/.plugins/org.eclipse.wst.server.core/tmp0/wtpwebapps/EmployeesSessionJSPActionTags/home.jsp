<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="emp" class="EmpSessJSPActionTag.Employee"/>
	<jsp:setProperty property="*" name="emp" />
	
	<h1>Welcome: <jsp:getProperty property="username" name="emp" /></h1>
	
	<div>
		Your registered details are:<br/>	
		Age: <jsp:getProperty property="age" name="emp" /><br/>
		City: <jsp:getProperty property="city" name="emp" /><br/>
		Gender: <jsp:getProperty property="gender" name="emp" /><br/>
		Email: <jsp:getProperty property="email" name="emp" /><br/>
	</div>
	<br/>	
	<jsp:include page="sample.jsp"></jsp:include>
	<br/>
	<a href="direct.jsp">Forward to logout.jsp</a>
	<br/>
	<jsp:text>
		This shows the footer	
	</jsp:text>
	<%int age = emp.getAge();
	%>
	<%= "\n Your age is:  "+ age %>
</body>
</html>