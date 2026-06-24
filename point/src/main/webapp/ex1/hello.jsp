<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>인사페이지: 결과</title>
    </head>
    <body>
        <h1>hello world</h1>

        <%
    String name = request.getParameter("username");
    if (name == null || name.trim().isEmpty()) {
        name = "익명";
    }

%>

        <h2>안녕하세요, <%=name %>님</h2>
    </body>
</html>