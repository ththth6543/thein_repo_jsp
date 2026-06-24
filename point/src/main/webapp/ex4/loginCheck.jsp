<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>

<%
    request.setCharacterEncoding("UTF-8");

    String userid = request.getParameter("userid");
    String password= request.getParameter("password");

    String url = "jdbc:postgresql://localhost:5432/hrd";
    String dbUser = "postgres";
    String dbPass = "1234";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try{
        Class.forName("org.postgresql.Driver");
        conn = DriverManager.getConnection(url, dbUser, dbPass);

        String sql = "select username from users where userid=? and password=?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, userid);
        pstmt.setString(2,password);
        rs = pstmt.executeQuery();

        if(rs.next()) {
            String username = rs.getString("username");
            session.setAttribute("loginUser", username);
            response.sendRedirect("mypage.jsp");

        } else {
            //로그인 실패시 message를 전달하면서 login.jsp로 이동.
            response.sendRedirect("login.jsp?msg=fail");
        }
    } catch(Exception e) {
        out.println("오류" + e.getMessage());
    } finally {
        //자원해제
        if(rs != null) try {
            rs.close();
        } catch(Exception e2) {
        }
        if(pstmt != null) try {
            pstmt.close();
        } catch(Exception e2) {
        }
        if(conn != null) try {
            conn.close();
        } catch(Exception e2) {
        }
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
    </head>
    <body>

    </body>
</html>