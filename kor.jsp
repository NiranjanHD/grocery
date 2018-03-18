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
                      <div id="page_name">Stores</div>
                </div>
            <div id="content_01_content"></div>
            </td>
        </tr>
        </table>
</div>

<div id="content_vertical">
  <table width="900">
    <tr>
 	  <td width="61" align="left"><p><h1>Stores</h1></p></td>
		<td width="100"><p><a href="stores.jsp">Malleshwaram</a></p></td>
		<td width="80"><p><a href="raj.jsp">Rajajinagar</a></p></td>
		<td width="150"><p><a href="basva.jsp">Basaveshwaranagar</a></p></td>
		<td width="85"><p><a href="viji.jsp">Vijayanagar</a></p></td>
		<td width="95"><p><a href="hampi.jsp">Hampinagar</a></p></td>
		<td width="100"><p><a href="kamla.jsp">Kamalanagar</a></p></td>
		<td width="110"><p><a href="basa.jsp">Basavanagudi</a></p></td>
		<td width="80"><p><a href="kor.jsp">Kormangla</a></p></td>
  </tr>
  </table>
  <table>
  <tr> <h1>Kormangla</h1>
  <td align="left"><p>
 
  </p></td>
 <p>
	   				Office no.82,<br>
	   				downtown center,Banerghata road,<br>
	   				sector 53,bangalore-570086(india)<br>
	   				<br>T.no : +91-9000008011 (or) 
	   Write us at www.ogc.com </p>
	   
  </tr>
  <tr>
  <td><div id="itemslist7"></div></td>
  </tr>
  </table>
</div>

<div id="fotter">
all copy rights reserved.<br />
Designed By <a href="http://www.OGC.com" title="grocery">www.OGS.com</a>

</div>
</body>
<%
}%>
</html>
