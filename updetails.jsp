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
</head>
<script>
function ad()
{

	//alert("");
	document.updetails.action="uporder.jsp";
	document.updetails.submit();

}

</script>
<form name="updetails" method="get">

<body>

	<div id="company_name"></div>
		<div id="header_bg">
  			<div id="header_image"></div>
		</div>
	<div id="navigation_bg">
  <div id="navigation"><ul>
   <li></li>
   <li></li>
  <li><a href="emphome1.jsp">Home</a></li>
  <li><a href="delveryreport.jsp">Reports</a></li>
   <li><a href="updetails.jsp">Updates</a></li>
  <li><a href="logout.jsp">Logout</a></li>
  </ul></div>
</div>
<div id="content_01">
        <table width="906" align="center">
        <tr>
            <td><div id="content_01_image">
                      <div id="page_name">Update</div>
                </div>
            <div id="content_01_content"></div>
            </td>
        </tr>
        </table>
		
</div>

	<div id="content_vertical25">
		<table width="880">
    	<tr>
    	<td>
			
			<table align="center">
			<tr>
				<td width="202"></br>	</td>
			</tr>
					
			<tr >
				<td height="60"><div id="ppp">BILL NO</div></td>
				<td width="173"> : 
			    <input type="text" name="name1" maxlength="15"/></td>
			</tr>
			
			
			
			
			
			<tr>
				<td colspan=2></br></td>
			</tr>
	
			
			</table>
		</td>
		</tr>
	
			<tr><td  align="center" >
				<input type="button" name="add" value="   UPDATE   "  onclick="ad()" title="Click here to Save this Record">
              
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
<%
}
%>

</html>
