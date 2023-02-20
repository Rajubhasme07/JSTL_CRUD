<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
url="jdbc:mysql://localhost:3306/jstlopr" user ="root" password ="abc123"/>

      <sql:update dataSource="${snapshot}" var="con">
            UPDATE register_details SET uname=?,uemail=?,upass=? where id=?
            <sql:param value="${param.upname}" />
            <sql:param value="${param.upemail}" />
            <sql:param value="${param.uppass}" />
            <sql:param value="${param.id}" />
        </sql:update>
        <jsp:include page="showjsp.jsp" />
</body>
</html>