
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to online GROCERRIE shopping</title>
<link href="style.css" rel="stylesheet" type="text/css" />

<script language="javascript" src="alfunctions.js">
</script>
<script>
function td()
{
	if(empty1(feedback))
	{
		document.feedback.action="savefeed.jsp"
  	  	document.feedback.submit();
	}
}
</script>
</head>

<%
	String sessionUser = (String) session.getAttribute("logname");

	if((sessionUser==null) || (sessionUser.equals("")))
	{
		%> <div style="height:600px;"> <p style="padding-top:200px; padding-left:100px;"><font size="+1" color="#FFFFFF"> <% 
		out.println("No user logged in Please LOGIN"); %>	</font><a href="login.html">Login</a> </p></div><%

	}
	else 
	{ %>
<body>
<form name="feedback" method="post">

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
                      <div id="page_name">Feedback</div>
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

<div id="content_02">
    <table width="880">
    <tr>
    <td>
		<div id="content_05_image"></div>
		<div id="content_03_text"><h1><b><em>Enter your feedback</em></b></h1>
  		
    	<table align="center">
			<tr>
				<td width="202"></br>	</td>
			</tr>
			
			
			<tr >
				<td height="60"><div id="ppp">* Enter your user name</div></td>
				<td width="173"> : 
			    <input type="text" name="fd1" maxlength="15"/></td>
			</tr>
			
			<tr >
				<td height="60"><div id="ppp">* Enter Subject</div></td>
				<td width="173"> : 
			    <input type="text" name="fd2" maxlength="15"/></td>
			</tr>
			
			<tr>
				<td height="60"><div id="ppp">* Write your Feedback</div> </td>
				<td width="173"> : 
			    <textarea rows="4" cols="16" name="fd3"></textarea></td>
			</tr>
			
			<tr>
				<td height="60"><div id="ppp">Enter E-MAIL id</div> </td>
				<td width="173"> : 
			    <input type="text" name="fd4" maxlength="30"/></td>
			</tr>
			
			<tr>
				<td height="60"><div id="ppp">*Phone</div> </td>
				<td width="173"> : 
			    <input type="text" name="phone" maxlength="10"/></td>
				
			</tr>
			
			
			
			
			
			
			
			<tr>
				<td colspan=2></br></td>
			</tr>
	
			<tr>
				<td align="center"><input type="button" value="Submit" onclick="td()"/></td>
				<td align="center"><input type="reset" value=" Reset "/></td>
			</tr>
			<td><br></br><p>Note : * MANDATORY feilds</p></td>
			<tr>
				<td colspan=5></br></td>
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
<%}%>
</html>
