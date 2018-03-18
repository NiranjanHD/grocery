
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to online GROCERRIE shopping</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script>
function td()
{
	
		document.signupinsert.action="savedata1.jsp"
  	  	document.signupinsert.submit();
	
}
</script>

</head>

<body>
<form name="signupinsert" method="get" >

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
	re=stmt1.executeQuery("select * from sgnup");
	
	
    rs=stmt.executeQuery("select cid ,uname from sgnup where flag='0' ");

while(rs.next())
{ 
 
nam=rs.getString("cid");
pws=rs.getString("uname");
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
%><div id="company_name"></div>
<div id="header_bg">
  <div id="header_image"></div>
</div>
<div id="navigation_bg">
  <div id="navigation"><ul>
  <li><a href="index.html">Home</a></li>
  <li><a href="aboutus.html">About us</a></li>
  <li><a href="product.html">Products</a></li>
  <li><a href="signup.jsp">Sign Up</a></li>
  <li><a href="contactus.html">Contact us</a></li>
  </ul></div>
</div>
<div id="content_01">

        <table width="906" align="center">
		
        <td height="43"><tr>
            <td height="59"><td align="center"><div id="content_01_image">
                      <div id="page_name">Sign up success</div>
                </div>
            <div id="content_01_content">
                <table>
			<tr>
				<td><font color="#CCCC00" size="+1">CUSTOMER ID  </font></td>
				<td><font color="#CCCC00" size="+1"> USER NAME   </font></td>
			</tr>
			<tr>
				<td><input type="text" value="<%=nam%>" readonly="" /></td>
				<td><input type="text" value="<%=pws%>" readonly="" /></td>
			</tr>
		<div id="content_02_image"></div>
		<div id="content_02_text"><h1><b><em><marquee>THANK YOU FOR SIGNING UP....!! PLEASE LOGIN</marquee></em></b></h1>
  		
    	
	    </div>
			<tr>
               	<td colspan="2" align="center" style="color:#CC0000;font-size:18px"></td><br>
				<center>U HAVE SUCCESSFULY SIGNED UP.....!!!!!!</center>
				<td align="center"><font color="#CCCC00" size="+1"><a href="login.html">LOGIN</a></font></td>
				
			</tr>
     </td>
     </tr>
	</table>
            </div>
            </td>
        </tr>
        </table>
</div>

    <div id="fotter">
all copy rights reserved.<br />
Designed By <a href="http://www.OGC.com" title="grocery">www.OGS.com</a>

</div>
</form>
</body>
</html>
