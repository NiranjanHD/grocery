<%@ page import="java.util.*"%>
<%@ page import=" java.lang.*"%>
<%@ page import ="java.io.*"%>
<%@ page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost/grocery","root","mysql");
	Statement stmt = con1.createStatement() ;
	ResultSet re=null;
	re=stmt.executeQuery("select * from sgnup");
	%>
<%
try
{
String ffname=null,ssname=null,uuname=null,ppwd=null,rrpwd=null,eemail=null,ddob=null,ggender=null,mmno=null,cid=null,aaddr=null,flag=null;
int i=1000;
while(re.next())
{
 i++;
}
String us="CUST";
String id=Integer.toString(i);
String t1=null;
t1=us+id;
	ffname= request.getParameter("f1");
	ssname= request.getParameter("f2");
	uuname= request.getParameter("f3");
	ppwd= request.getParameter("p1");
	rrpwd= request.getParameter("p2");
	eemail= request.getParameter("e1");
	ddob= request.getParameter("e2");
	ggender= request.getParameter("slt");
	aaddr=request.getParameter("addr");
	mmno= request.getParameter("m1");
   // flag= request.getString("flag");
	/*stmt.execute("insert into sgnup(cid,fname,sname,uname,pwd,rpwd,email,dob,gender,adr,mno,flag) value('"+t1+"','"+ffname+"','"+ssname+"','"+uuname+"','"+ppwd+"','"+rrpwd+"','"+eemail+"','"+ddob+"','"+ggender+"','"+aaddr+"','"+mmno+"','0');");*/
//stmt.execute("insert into password(passwd,flag,uname,utype) value('"+ppwd+"','0','"+uuname+"','customer');");
/*stmt.execute("insert into sgnup1(cid,fname,sname,uname,pwd,rpwd,email,dob,gender,adr,mno,flag) value('"+t1+"','"+ffname+"','"+ssname+"','"+uuname+"','"+ppwd+"','"+rrpwd+"','"+eemail+"','"+ddob+"','"+ggender+"','"+aaddr+"','"+mmno+"','0');");*/
//stmt.execute("update sponser1 set lastname='"+lastname+"',address='"+address+"',city='"+city+"',state='"+state+"',homeph='"+homeph+"',altph='"+altph+"' where slno='"+ee+"'");
stmt.execute("update sgnup1 set flag='1' where cid='"+t1+"'");
response.sendRedirect("index.html"); 
}
catch(Exception  e)
{
out.println(e);

}
%>