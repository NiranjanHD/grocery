<%@ page import="java.util.*"%>
<%@ page import=" java.lang.*"%>
<%@ page import ="java.io.*"%>
<%@ page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost/grocery","root","mysql");
	Statement stmt = con1.createStatement() ;
	ResultSet re=null;
	re=stmt.executeQuery("select * from emp");
	%>
<%
try
{
String ffname=null,ssname=null,uuname=null,ppwd=null,altno=null,eemail=null,ddob=null,ggender=null,mmno=null,cid=null,aaddr=null;
uuname= request.getParameter("name12");
int i=1000;
while(re.next())
{
 i++;
 if(uuname.equals(re.getString(4)))
 {
 	response.sendRedirect("invalidemp.jsp");
 }
}
	String us="EMP";
	String id=Integer.toString(i);
	String t1=null;
	t1=us+id;
	ffname= request.getParameter("name10");
	ssname= request.getParameter("name11");
	ppwd= request.getParameter("name13");
	eemail= request.getParameter("name14");
	ddob= request.getParameter("text7");
	//out.print(ddob);
	
	ggender= request.getParameter("name15");
	aaddr=request.getParameter("name16");
	mmno= request.getParameter("name17");
	altno= request.getParameter("name18");
stmt.execute("insert into emp(eid,efname,esname,euname,epwd,eemail,text7,egender,eadr,emno,ealtph,flag) value('"+t1+"','"+ffname+"','"+ssname+"','"+uuname+"','"+ppwd+"','"+eemail+"','"+ddob+"','"+ggender+"','"+aaddr+"','"+mmno+"','"+altno+"','0');");
	//stmt.execute("insert into sgnup1(cid,fname,sname,uname,pwd,email,dob,gender,adr,mno,altph,flag) value('"+t1+"','"+ffname+"','"+ssname+"','"+uuname+"','"+ppwd+"','"+eemail+"','"+ddob+"','"+ggender+"','"+aaddr+"','"+mmno+"','"+altno+"','0');");
stmt.execute("insert into password(passwd,flag,uname,utype) value('"+ppwd+"','0','"+uuname+"','employee');");

response.sendRedirect("empsuccess.jsp"); 
}
catch(Exception  e)
{
out.println(e);

}
%>