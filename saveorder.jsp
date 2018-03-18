<%@ page import="java.util.*" %>
 <%@ page import="java.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost/grocery","root","mysql");
	Statement stmt = con1.createStatement() ;
	ResultSet re=null;
	Statement stmt1 = con1.createStatement() ;
	ResultSet re1=null;
	
	%>
<%
try
{
String slno=null,name=null,subject=null,phone=null,email=null,feed=null,date=null;
int i=5000;
while(re.next())
{
 i++;
}
String us="OGC";
String id=Integer.toString(i);
String t1=null;
t1=us+id;

//out.println(date1);
uid=request.getParameter("uid");
uname=request.getParameter("uname");
addrs=request.getParameter("addrs");
mop=request.getParameter("mop");
//email=request.getParameter("date");
re1=stmt1.executeQuery("select * from cart");
while(re1.next())
{
stmt.execute("insert into purchase(billno,uid,uname,address,mop,pname,pqty,oamt,qamt,flag) value('"+t1+"','"+uid+"','"+uname+"','"+addrs+"','"+mop+"','"+re1.getString(1)+"','"+re1.getString(2)+"','"+re1.getString(3)+"','"+re1.getString(4)+"','0');");
}
response.sendRedirect("index.html"); 
}
catch(Exception  e)
{
out.println(e);
//response.sendRedirect("dup.html");
}
%>