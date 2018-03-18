<%@ page import="java.util.*"%>
<%@ page import=" java.lang.*"%>
<%@ page import ="java.io.*"%>
<%@ page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost/grocery","root","mysql");
	Statement stmt = con1.createStatement() ;
	ResultSet re=null;
	re=stmt.executeQuery("select * from items");
	%>
<%
try
{
String t1=null,t2=null,t3=null;String categ=null,gname=null,qty=null,amt=null,avail=null;
categ= request.getParameter("cate");
	gname= request.getParameter("name1");
	qty= request.getParameter("qty");
	amt= request.getParameter("amt");
	avail=request.getParameter("noa");
	int i=1,j=1,k=1;
	out.print(categ);
	if(categ.equals("Grains"))
	{
	out.print("grains");
	while(re.next())
{
 i++;
}
String us="g";
String us1="gg";
String us2="ggg";
String id=Integer.toString(i);
//String t1=null;
t1=us+id;
t2=us1+id;
t3=us2+id;
	}
	else if(categ.equals("Oil"))
	{
	out.print("Oil");
	while(re.next())
{
 j++;
}
String us="o";
String us1="oo";
String us2="ooo";
String id=Integer.toString(j);
//String t1=null;
t1=us+id;
t2=us1+id;
t3=us2+id;
	}
	else 
	{
	out.print("spices");
	while(re.next())
{
 k++;
}
String us="s";
String us1="ss";
String us2="sss";
String id=Integer.toString(k);
//String t1=null;
t1=us+id;
t2=us1+id;
t3=us2+id;
	}
	out.print(t1);

	stmt.execute("insert into items(category,grainname,qty,amt,id,id1,avail,id2) value('"+categ+"','"+gname+"','"+qty+"','"+amt+"','"+t1+"','"+t2+"','"+avail+"','"+t3+"');");
	
response.sendRedirect("adminaddsuccess.jsp"); 
}
catch(Exception  e)
{
out.println(e);

}
%>