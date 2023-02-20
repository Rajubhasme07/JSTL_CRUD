<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

      

<sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
url="jdbc:mysql://localhost:3306/jstlopr" user ="root" password ="abc123"/>


<sql:update dataSource="${snapshot}" var="count">

INSERT INTO register_details (uname,upass,uemail) VALUES (?,?,?)

<sql:param value="${param.uname }"/>
<sql:param value="${param.upass }"/>
<sql:param value="${param.uemail }"/>
</sql:update>

<c:if test="${count>=1}">
<font size="5" color='green'> Congratulations ! Data inserted
successfully.</font>
<a href="showjsp.jsp">Show Details</a>
</c:if>

<c:if test="${exception!=null}">
<c:out value="Unable to insert data in database." />
</c:if>

</body>
</html>