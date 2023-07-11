<%@page import="com.User.Post"%>
<%@page import="com.Db.DBConnect"%>
<%@page import="com.Dao.PostDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
UserDetails user1 = (UserDetails) session.getAttribute("user");
if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("login-error", "Please Login...");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Notes</title>

<%@include file="all_component/allcss.jsp"%>
</head>
<body>

	<%
	Integer noteid = Integer.parseInt(request.getParameter("note_id"));
	PostDao post=new PostDao(DBConnect.getConn());
	Post p=post.getDataById(noteid);
	%>

	<%@include file="all_component/navbar.jsp"%>

	<h1 class="text-center">Edit Your Notes</h1>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<form action="NoteEditServlet" method="post">

					<input type="hidden" value=<%=noteid%> name="noteid">
					<div class="form-group">


						<label for="exampleInputEmail1">Enter Title</label>
						 <input
							type="text" class="form-control" name="title" value="<%=p.getTitle()%>"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							required="required"  />
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">Enter Content</label>
						<textarea rows="9" cols="" class="form-control" name="content" 
							required="required" ><%=p.getContent() %></textarea>
					</div>

					<div class="container text-center">
						<button type="submit" class="btn btn-primary">Edit Note</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>