<%@ page import="java.util.*"%>
<%@ page import=" java.lang.*"%>
<%@ page import ="java.io.*"%>
<%@ page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost/grocery","root","mysql");
	Statement stmt = con1.createStatement() ;
	ResultSet re=null;
	re=stmt.executeQuery("select * from purchase");
	%>
<%
try
{
String bil=null,userid=null,name=null,adr=null,mopp=null,pname=null,pqty=null,oamt=null,qamt=null;

int i=8000;
while(re.next())
{
 i++;
 
}
String us="BIll";
String id=Integer.toString(i);
String t1=null;
t1=us+id;
	userid= request.getParameter("total1");
	name= request.getParameter("uid");
	adr= request.getParameter("addrs");
	mopp= request.getParameter("mop");
	pname= request.getParameter("n");
	pqty= request.getParameter("n1");
	oamt=request.getParameter("n2");
	qamt= request.getParameter("n3");

stmt.execute("insert into purchase(billno,uid,uname,address,mop,pname,pqty,oamt,qamt,flag) value('"+t1+"','"+name+"','"+userid+"','"+adr+"','"+mopp+"','"+pname+"','"+pqty+"','"+oamt+"','"+qamt+"','0');");
	//stmt.execute("insert into sgnup1(cid,fname,sname,uname,pwd,email,dob,gender,adr,mno,altph,flag) value('"+t1+"','"+ffname+"','"+ssname+"','"+uuname+"','"+ppwd+"','"+eemail+"','"+ddob+"','"+ggender+"','"+aaddr+"','"+mmno+"','"+altno+"','0');");
//stmt.execute("insert into password(passwd,flag,uname,utype) value('"+ppwd+"','0','"+uuname+"','customer');");

response.sendRedirect("purchasesuccess.jsp"); 
}
catch(Exception  e)
{
out.println(e);

}
%>