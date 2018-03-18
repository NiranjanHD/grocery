<html><head><title>NPLOGOUT</title></head>
<body>
<%
String sessionUser =" ";
session.invalidate();
response.sendRedirect("index.html"); 
%>
</body>
</html>