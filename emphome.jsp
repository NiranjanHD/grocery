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
	{ %>
</head>
<body>

<div id="company_name"></div>
<div id="header_bg">
  <div id="header_image"></div>
</div>
<div id="navigation_bg">
  <div id="navigation"><ul>
  <li><a href="emphome.jsp">Home</a></li>
  <li><a href="adminadd.jsp">Stores</a></li>
  <li><a href="oildetailsup.jsp">Updates</a></li>
  <li><a href="reports.jsp">Reports</a></li>
  <li><a href="logout.jsp">Logout</a></li>
  </ul></div>
</div>
<div id="content_01">
        <table width="906" align="center">
        <tr>
            <td><div id="content_01_image">
                      <div id="page_name">Admin Home</div>
                </div>
            <div id="content_01_content">
                <table>
                   <tr>
                   <td>&nbsp;</td>
                   </tr>
                </table>
            </div>
            </td>
        </tr>
        </table>
</div>

<div id="content_vertical25">
  <tr>
	 	<td colspan=5 align="right"><p><font color="#FF66FF"><marquee>Welcome to OGC.......!!!</marquee></font></p></td>
		<font color="#FFFFFF"><%	out.println("Welcome :"+sessionUser); %></font>
		<div id="prdlist_imagecust"></div>
		<td><p>User of this type is used to manage the website and customer information</p><br></td>
		<td><p>User will know the status of the customer delivery and updates of the customer information and other usefull updates on the website will be managed by this type of user </p></td>
		<tr><h1><b><em>CLICK THIS LINK TO ADD THE EMPLOYEE</em></b></h1><a href="empreg.jsp">EMP ADD</a></tr>
		
  </tr>
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
