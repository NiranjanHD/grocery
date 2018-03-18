<%@ page import="java.util.*" %>
 <%@ page import="java.sql.*" %>

		<%
Class.forName("com.mysql.jdbc.Driver");
	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost/grocery","root","mysql");
	Statement stmt = con1.createStatement() ;
	ResultSet re=null;
	%>
<%
try
{
String category=null,grainname=null,qty=null,amt=null,ee=null;
category=request.getParameter("cate");
grainname=request.getParameter("name1");
qty=request.getParameter("qty");

amt=request.getParameter("amt");
//amt=request.getParameter("amt");
//out.println(grainname);
stmt.execute("update items set qty='"+qty+"' ,amt='"+amt+"' where grainname='"+grainname+"' ");
response.sendRedirect("oildetailsup.jsp");
}
catch(Exception  e)
{
out.println(e);
//response.sendRedirect("duppub.html");
}


%>