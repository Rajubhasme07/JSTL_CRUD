			<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
			    pageEncoding="ISO-8859-1"%>
			    
			 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
			<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql" %>
			<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
			<html>
			<head>
			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
			<title>Insert title here</title>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
			
			</head>
			<body>
			
			
			<sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost:3306/jstlopr" user ="root" password ="abc123"/>
			    
			    
			 <sql:query dataSource = "${snapshot}" var = "result">
				 SELECT * from register_details;
				 </sql:query>
			
			 <center><table  class="table" style='body:center;'>
			  <thead align="center">
			    <tr>
			    <th class="center" scope="col">Id</th>
			      <th class="center" scope="col">User Name</th>
			      <th   class="center" scope="col">User Email</th>
			      <th  class="center"  scope="col">User Email</th>
			      <th   class="center"  scope="col">Action</th>
			    </tr>
			  </thead>
			  
			  <tbody align="center">
			  <c:forEach var = "row" items = "${result.rows}">
			    <tr>
			    <td>${row.id}</td>
			      <td>${row.uname}</td>
			      <td>${row.uemail}</td>
			      <td>${row.upass}</td>
			      <td><a type="button"  class="btn btn-success"     href="edit.jsp?id=${row.id}">UPDATE</a>&nbsp;<a type="button"  class="btn btn-danger" href="delete.jsp?id=${row.id}">DELETE</a></td>
			    </tr>
			   </c:forEach>
			  </tbody>
			   
			</table></center>
			</body>
			</html>