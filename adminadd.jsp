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
<script language="javascript" src="alfunctions.js">
</script>
<script>
function ad()
{
	if(validate_add(adminadd))	
	{
		document.adminadd.action="saveadminadd.jsp";
		document.adminadd.submit();
	}
}
</script>
<form name="adminadd" method="get">
<body>
<div id="company_name"></div>
	<div id="header_bg">
  		<div id="header_image"></div>
	</div>
		<div id="navigation_bg">
  			<div id="navigation">
			<ul>
  				<li><a href="emphome.jsp">Home</a></li>
  				<li><a href="adminadd.jsp">Stores</a></li>
  				<li><a href="oildetailsup.jsp">Updates</a></li>
  				<li><a href="reports.jsp">Reports</a></li>
  				<li><a href="logout.jsp">Logout</a></li>
  			</ul>
			</div>
		</div>
	<div id="content_01">
        <table width="906" align="center">
        <tr>
            <td><div id="content_01_image">
                      <div id="page_name">Add Items</div>
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

<div id="content_vertical35">
	<table width="880">
    <tr>
    <td>	
			<table align="center">
			<tr>
				<td width="202"></br>	</td>
			</tr>
			<tr><h1><b><em>Enter items for the categories</em></b></h1></tr>
			<tr><h1><b><em>CLICK THIS LINK TO ADD THE OFFERS UPDATES</em></b></h1><a href="avo.jsp">OFFERS</a></tr>
			
			<tr>
			 	<td height="60"><div id="ppp">* Select Category</div></td>
				<td width="173"> : 
			    <select name="cate">
				<option value="select1">----------Select----------</option>
				<option value="Grains">Grains</option>
				<option value="Oil">Oil</option>
				<option value="Spices">Spices</option>
				</select></td>
			</tr>
			
			<tr >
				<td height="60"><div id="ppp">* Enter Name of the Product</div></td>
				<td width="173"> : 
			    <input type="text" name="name1" maxlength="15" onblur="isalpha(name1)"/></td>
			</tr>
			
			<tr>
				<td height="60"><div id="ppp">* Enter Quantity</div> </td>
				<td width="173"> :
				<input type="text" name="qty" maxlength="30" value="1" readonly="true"/></td>
			</tr>
			
			<tr>
				<td height="60"><div id="ppp">Enter Amount</div> </td>
				<td width="173"> : 
			    <input type="text" name="amt" maxlength="30" onblur="num(noa)"/></td>
			</tr>
			
			<tr>
				<td height="60"><div id="ppp">Enter No Of Availibility</div> </td>
				<td width="173"> : 
			    <input type="text" name="noa" maxlength="30" onblur="num(noa)"/></td>
			</tr>
			
			
			<tr>
				<td colspan=2></br></td>
			</tr>
	
			<tr>
				<td align="center"><input type="button" value="Submit" onclick="ad()"/></td>
				<td align="center"><input type="reset" value=" Reset "/></td>
			</tr>
			</table>
			
	</td>
	</tr>
	<tr><td align="center"><h1><b><em>CLICK THIS LINK TO DELETE THE OFFERS UPDATES</em></b></h1><a href="avodelete.jsp">OFFERS</a></td></tr>
	
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
</form>
</html>
