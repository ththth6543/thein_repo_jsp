<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    //delete session
    session.invalidate();

    //redirect to login page
    response.sendRedirect("login.jsp");

%>