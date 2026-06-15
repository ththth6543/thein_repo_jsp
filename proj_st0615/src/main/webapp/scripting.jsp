<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2>Scripting Tag</h2>
    <%!
    int count = 3;
    String makeItLower(String data) {
        return data.toLowerCase();
    }
    %>

    <%
    for(int i = 0; i< 5; i++) {
        out.println("java server pages " + i + ".<br>");
    }
    %>

    <%= makeItLower("Hello JSP!") %>
</body>
</html>