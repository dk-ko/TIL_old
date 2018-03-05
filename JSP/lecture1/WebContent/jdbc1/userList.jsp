<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, lecture1.jdbc1.*"%>
<%
	List<User> list = UserDAO.findAll();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body { font-family: 굴림체;}
thead th { background-color: #eee;}
table.table { width: 700px;}
</style>

<title>Insert title here</title>
</head>
<body>
<div class="container">
<h1>사용자목록</h1>
<table class="table table-bordered table condensed">
 <thead>
  <tr>
   <td>아이디</td>
   <td>이름</td>
   <td>이메일</td>
   <td>학과</td>
   <td>사용자유형</td>
  </tr>
 </thead>
 <tbody>
 <% for(User user : list){ %>
 <tr>
  <td><%= user.getUserid() %></td>
  <td><%= user.getName() %></td>
  <td><%= user.getEmail() %></td>
  <td><%= user.getDepartmentId()==4 ? "소프트웨어공학과" : "기타" %></td>
  <td><%= user.getUserType() %></td>
 </tr>
<% } %>
 </tbody>
</table>
</div>

</body>
</html>