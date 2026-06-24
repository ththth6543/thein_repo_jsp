<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>방명록</title>
    </head>
    <body>
        <h2>방명록</h2>

        <form action="save.jsp" method="post">
            이름 : <input type="text" name="name"> <br> 메시지 :
            <textarea name="message" row="3" cols="40"></textarea>
            <br> <input type="submit" value="저장하기">
        </form>

        <hr>

        <%
    String url = "jdbc:postgresql://localhost:5432/hrd";
    String user = "postgres";
    String password = "1234";

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    String sql = "select * from guestbook order by id desc;";

    try {
        Class.forName("org.postgresql.Driver");
        conn = DriverManager.getConnection(url, user, password);
        stmt = conn.createStatement();
        rs = stmt.executeQuery(sql);

        while (rs.next()) {

%>
        <div style="border: 1px solid #ccc; margin: 10px; padding: 10px">
            <b><%=rs.getString("name")%></b> <span
            style="color: gray; font-size: 0.9em"><%=rs.getTimestamp("reg_date")%></span><br>
            <%=rs.getString("message")%>
        </div>
        <%

    }

    } catch (Exception e) {
        out.println("<p>오류가 발생했습니다. : " + e.getMessage() + "</p>");
    } finally {
        if (rs != null)
        try {
            rs.close();
        } catch (Exception e) {
        }
        if (stmt != null)
        try {
            stmt.close();
        } catch (Exception e) {
        }
        if (conn != null)
        try {
            conn.close();
        } catch (Exception e) {
        }
    }

%>
    </body>
</html>