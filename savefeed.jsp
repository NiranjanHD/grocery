<%@ page import="java.util.*" %>
 <%@ page import="java.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost/grocery","root","mysql");
	Statement stmt = con1.createStatement() ;
	ResultSet re=null;
	re=stmt.executeQuery("select * from feedback");
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
String us="FEED";
String id=Integer.toString(i);
String t1=null;
t1=us+id;

java.util.Date g= new java.util.Date() ;
	int mm=g.getMonth();
	int dd=g.getDate();
	int yy=g.getYear();
	yy=yy+1900;
	mm=mm+1;
	int m=mm;
	String m2=Integer.toString(m);
	
	int d=dd;
	String d2=Integer.toString(d);
	
	int y=yy;
	String y2=Integer.toString(y);
	
	
	int m1=mm+1;
	String dm=Integer.toString(m1);
	//out.println(d);
	//out.println(m);
	//out.println(y);
     //String date1=d2+-+m+-+yy;  
	 String date1=y2+-+m+-+d;  
//out.println(date1);
name=request.getParameter("fd1");
subject=request.getParameter("fd2");
feed=request.getParameter("fd3");
email=request.getParameter("fd4");
phone=request.getParameter("phone");
//email=request.getParameter("date");

stmt.execute("insert into feedback(slno,name,subject,message,email,phone,date) value('"+t1+"','"+name+"','"+subject+"','"+feed+"','"+email+"','"+phone+"','"+date1+"');");

response.sendRedirect("index.html"); 
}
catch(Exception  e)
{
out.println(e);
//response.sendRedirect("dup.html");
}
%>