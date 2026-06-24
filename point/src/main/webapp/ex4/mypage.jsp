<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // 로그인 안했으면 로그인 페이지로 강제 이동
    String loginUser = (String) session.getAttribute("loginUser");
    if (loginUser == null){
        response.sendRedirect("login.jsp");
        return;
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>my page</title>
    </head>
    <body>
        <h2>마이페이지</h2>
        <p>hello, <b><%= loginUser %>!</b></p>
        <a href="logout.jsp">로그아웃</a>
    </body>
</html>