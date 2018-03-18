<%@ page import="java.util.*"%>
<%@ page import=" java.lang.*"%>
<%@ page import ="java.io.*"%>
<%@ page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost/grocery","root","mysql");
	Statement stmt = con1.createStatement() ;
	ResultSet re=null;
	
	%>
<%
try
{
String t1=null,t2=null;String id=null,gname=null,qty=null,amt=null,qamt=null;
int bq=0,q1=0,resqty=0;
id= request.getParameter("w5");
String k=id.substring(0,1);
	gname= request.getParameter("w1");
	qty= request.getParameter("w2");
	amt= request.getParameter("w3");
		qamt= request.getParameter("w4");
	out.println(k);
	out.println(gname);
		out.println(qty);
			out.println(amt);
				out.println(qamt);
					out.println(id);
re=stmt.executeQuery("select AVAIL from items where id='"+id+"'");
if(re.next())
{
bq=Integer.parseInt(re.getString(1));
}
q1=Integer.parseInt(qty);
resqty=bq-q1;
out.print(resqty);

stmt.execute("insert into cart(name,qty,oamt,qamt,id) value('"+gname+"','"+qty+"','"+amt+"','"+qamt+"','"+id+"');");
stmt.execute("update items set AVAIL='"+resqty+"' where id='"+id+"'");
if(k.equals("g"))
{
response.sendRedirect("shopgrains.jsp"); 
}
else if(k.equals("o"))
{
response.sendRedirect("shopoil.jsp"); 
}
else
response.sendRedirect("shopspices.jsp"); 

}
catch(Exception  e)
{
out.println(e);

}
%>