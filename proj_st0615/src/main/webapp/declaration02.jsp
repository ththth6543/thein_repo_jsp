<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Declaration</title>
</head>
<body>
	<%!int sum(int a, int b) {
		return a + b;
	}%>
	
	<%
	out.println("2 + 3 = " + sum(2, 3));
	%>
</body>
</html>