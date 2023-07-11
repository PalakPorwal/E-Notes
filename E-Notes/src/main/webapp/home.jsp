<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
UserDetails user2=(UserDetails)session.getAttribute("user");
if(user2==null)
{
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error","Please Login...");
}

%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_component/allcss.jsp" %>
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid p-0">
<%@include file="all_component/navbar.jsp" %>
<div class="card py-5">
<div class="card-body text-center">
<img alt="" src="img/paper.jpeg" class="img-fluid mx-auto" style="max-width:300px">
<h1>START TAKING YOUR NOTES</h1>
<a href="addNotes.jsp" class="btn btn-outline-primary">Start Here</a>
</div>
</div>
</div>
</body>
</html>