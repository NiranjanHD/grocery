// JavaScript Document<%@ page import="java.util.*"%>
<%@ page import=" java.lang.*"%>
<%@ page import ="java.io.*"%>
<%@ page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost/grocery","root","mysql");
	Statement stmt = con1.createStatement() ;
	ResultSet re=null;
//	re=stmt.executeQuery("select * from sgnup");
	%>
<%
try
{/*
String ffname=null,ssname=null,uuname=null,ppwd=null,altno=null,eemail=null,ddob=null,ggender=null,mmno=null,cid=null,aaddr=null;
uuname= request.getParameter("f3");
int i=1000;
while(re.next())
{
 i++;
 if(uuname.equals(re.getString(4)))
 {
 	response.sendRedirect("invaliduser.jsp");
 }
}
String us="CUST";
String id=Integer.toString(i);
String t1=null;
t1=us+id;*/
String qty1,amt1;
	qty1= request.getParameter("Qty");
	amt1= request.getParameter("Amt");
stmt.execute("insert into avo(qty,amt) value('"+qty1+"','"+amt1+"');");
	//stmt.execute("insert into sgnup1(cid,fname,sname,uname,pwd,email,dob,gender,adr,mno,altph,flag) value('"+t1+"','"+ffname+"','"+ssname+"','"+uuname+"','"+ppwd+"','"+eemail+"','"+ddob+"','"+ggender+"','"+aaddr+"','"+mmno+"','"+altno+"','0');");
//stmt.execute("insert into password(passwd,flag,uname,utype) value('"+ppwd+"','0','"+uuname+"','customer');");

response.sendRedirect("successfulavo.jsp"); 
}
catch(Exception  e)
{
out.println(e);

}
%>