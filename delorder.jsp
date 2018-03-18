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
String ee=null;
ee=request.getParameter("e"); 

stmt.execute("delete from purchase where billno='"+ee+"' ");
response.sendRedirect("orderreport.jsp");

}
catch(Exception  e)
{
out.println(e);
//response.sendRedirect("staffdup.html");
}
%>// JavaScript Document