<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>이 파일은 first.jsp</h3>
	<jsp:include page="second.jsp">
		<jsp:param name="date" value="<%= new java.util.Date() %>" />
	</jsp:include>
	<p>Jakarta server page</p>
</body>
</html>