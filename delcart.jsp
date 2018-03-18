<%@ page import="java.util.*" %>
 <%@ page import="java.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost/grocery","root","mysql");
	Statement stmt = con1.createStatement() ;
	ResultSet re=null;
	//ResultSet re1=null;
	%>
<%
try
{
String ee=null,qty=null;
int bq=0,q1=0,resqty=0;
ee=request.getParameter("w1"); 
qty=request.getParameter("qt");
//system.out.println(eee);
re=stmt.executeQuery("select AVAIL from items where id='"+ee+"'");
if(re.next())
{
bq=Integer.parseInt(re.getString(1));
}
q1=Integer.parseInt(qty);
resqty=bq+q1;
out.print(resqty);

stmt.execute("update items set AVAIL='"+resqty+"' where id='"+ee+"'");

stmt.execute("delete from cart where id='"+ee+"' ");
response.sendRedirect("shopgrains.jsp");

}
catch(Exception  e)
{
out.println(e);
//response.sendRedirect("staffdup.html");
}
%>