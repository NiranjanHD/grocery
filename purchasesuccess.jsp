<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to online GROCERRIE shopping</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<%
	String sessionUser = (String) session.getAttribute("logname");

	if((sessionUser==null) || (sessionUser.equals("")))
	{
		%> <div style="height:600px;"> <p style="padding-top:200px; padding-left:100px;"><font size="+1" color="#FFFFFF"> <% 
		out.println("No user logged in Please LOGIN"); %>	</font><a href="login.html">Login</a> </p></div><%

	}
	else 
	{ 
%>
<form name="purchasesuccess" method="get" action="customerprod.jsp">
</head>
<body>

	<div id="company_name"></div>
		<div id="header_bg">
  			<div id="header_image"></div>
		</div>
		<div id="navigation_bg">
  <div id="navigation"><ul>
  <li><a href="customerhome.jsp">Home</a></li>
  <li><a href="stores.jsp">Stores</a></li>
  <li><a href="customerprod.jsp">Products</a></li>
  <li><a href="feedback.jsp">Feedback</a></li>
  <li><a href="logout.jsp">Logout</a></li>
  </ul></div>
</div>
<div id="content_01">
        <table width="906" align="center">
        <tr>
            <td><div id="content_01_image">
                      <div id="page_name">Ordr succes</div>
                </div>
            	<div id="content_01_content"></div>
            </td>
        </tr>
        </table>
</div>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
 Connection dbcon=null;String a = null;
String ee=null;
ee=request.getParameter("e"); 
System.out.print(ee);
//System.out.println("dhfjdhfjhsfjkhdsfkjsh");
String nam=null,pws=null;
try
{


//re=stmt.executeQuery("select *from sgnup where='gggg'");

    Class.forName("com.mysql.jdbc.Driver");
	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost/grocery","root","mysql");
	Statement stmt = con1.createStatement() ;
	Statement stmt1 = con1.createStatement() ;
	ResultSet rs=null;
	ResultSet re=null;
	re=stmt1.executeQuery("select * from purchase");
	
	
    rs=stmt.executeQuery("select billno,uid from purchase where flag='0' ");

while(rs.next())
{ 
 
nam=rs.getString("billno");
pws=rs.getString("uid");
}
out.print(nam);
//stmt1.execute("update sgnup set flag='1' where where cid='"+nam+"'");
//while(re.next())
//{
//nam=re.getString("cid");
//pws=re.getString("uname");
//}
}
catch(Exception  e)
{
out.println(e);
}
%>
<div id="content_vertical25">
 <table align="center" height="300px">
 	<tr>
	  <td width="448"><h1>Your Order succefully taken your delivery will be done with in 24 hours time.....!!!</h1></td>
	</tr>
  	<tr>
				<td align="center"> <font color="#CCCC00" size="+1">BILL ID  </font></td>
				<td width="354" align="center"><font color="#CCCC00" size="+1">CUSTOMER ID</font></td>
	</tr>
			<tr>
				<td align="center"><input type="text" value="<%=nam%>" readonly="" /></td>
				<td align="center"><input type="text" value="<%=pws%>" readonly="" /></td>
			</tr>
  	<tr>
		<td align="right"><input type="submit" name="submit" value="        OK         " /></td>
	</tr>
	
  </table>
</div>

<div id="fotter">
all copy rights reserved.<br />
Designed By <a href="http://www.OGC.com" title="grocery">www.OGS.com</a>

</div>
</body>
<%
}
%>
</html>
