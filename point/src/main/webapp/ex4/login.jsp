<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    if(session.getAttribute("loginUser") != null) {
        response.sendRedirect("mypage.jsp");
        return;
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>sign in</title>
    </head>
    <body>
        <h2>sign in</h2>
        <% String msg = request.getParameter("msg"); %>
        <%
    if("fail".equals(msg)) {

%>
        <p style="color:red"> wrong id or password</p>
        <% } %>

        <form action="loginCheck.jsp" method="post">
            ID : <input type="text" name="userid"><br><br>
            password : <input type="password" name="password"><br><br>
            <input type ="submit" value="로그인">
        </form>
    </body>
</html>