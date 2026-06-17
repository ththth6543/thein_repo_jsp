<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String n1 = request.getParameter("num1");
    String n2 = request.getParameter("num2");
    String op = request.getParameter("operator");

    double num1 = Double.parseDouble(n1);
    double num2 = Double.parseDouble(n2);
    double result = 0;
    String err = "";

    if (op.equals("+")) {
        result = num1 + num2;
    } else if (op.equals("-")) {
        result = num1 - num2;
    } else if (op.equals("*")) {
        result = num1 * num2;
    } else if (op.equals("/")) {
        if (num2 == 0) {
            err = "0으로는 나눌 수 없습니다.";
        } else {
            result = num1 / num2;
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
        <h2>계산 결과</h2>

        <%
    if(!err.isEmpty()) {

%>
        <p style="color:red"><%= err %></p>
        <%

    } else {

%>
        <p><%= num1 %> <%= op %> <%= num2 %> = <%= result %></p>
        <% } %>

        <br>
        <a href="hello.jsp">다른 계산 하러 가기</a>
    </body>
</html>