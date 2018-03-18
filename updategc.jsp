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

	alert("");
	document.stk.action="updateoil.jsp";
	document.stk.submit();

}

</script>
<script>
function ad1()
{
	document.stk.action="oildetailsup.jsp"
	document.stk.submit();
}
</script>
<form name="stk" method="get">

<body>

	<div id="company_name"></div>
		<div id="header_bg">
  			<div id="header_image"></div>
		</div>
	<div id="navigation_bg">
  		<div id="navigation">
		<ul>
			  <li><a href="emphome.jsp">Home</a></li>
			  <li><a href="stores.jsp">Stores</a></li>
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
                      <div id="page_name">Update</div>
                </div>
            <div id="content_01_content"></div>
            </td>
        </tr>
        </table>
		
</div>
		<%@ page import="java.sql.*" %>
		<%@ page import="java.util.*" %>
		<%

					int i=0;
					String category=null,grainname=null,qty=null,amt=null,ee=null;
					try{
				
							Class.forName("com.mysql.jdbc.Driver");
							Connection con1=DriverManager.getConnection("jdbc:mysql://localhost/grocery","root","mysql");
							Statement stmt = con1.createStatement() ;
							ResultSet re=null;
							ee=request.getParameter("e"); 
							//re=stmt.executeQuery("select * from stock where stno ='"+ee+"' ");
						  
							re=stmt.executeQuery("select *from items where grainname='"+ee+"' ");
					
							if(re.next())
							{
							
								category=re.getString("category");
								grainname=re.getString("grainname");
								//qty=re.getString("qty");
								amt=re.getString("amt");
							}
				
				}
				catch(Exception  e)
				{
				out.println(e);
				}
				%>
				
	<div id="content_vertical25">
		<table width="880">
    	<tr>
    	<td>
			<h1><%out.print(ee);%></h1>
			<table align="center">
			<tr>
				<td width="202"></br>	</td>
			</tr>
			<tr>
				<td height="60"><div id="ppp">* Select Category</div></td>
				<td width="173"> : 
			    <select name="cate">
				 <option value="<%=category%>"><%=category%></option>
				</select></td>
			</tr>
			
			<tr >
				<td height="60"><div id="ppp">* Enter Name of the Product</div></td>
				<td width="173"> : 
			    <input type="text" name="name1" maxlength="15" value="<%=grainname%>" /></td>
			</tr>
			
			<tr>
				<td height="60"><div id="ppp">Quantity</div> </td>
				<td width="173"> :
				<input type="text" name="qty" maxlength="30" value="1" /></td>
			</tr>
			
			<tr>
				<td height="60"><div id="ppp">Enter Amount</div> </td>
				<td width="173"> : 
			    <input type="text" name="amt" maxlength="30" value="<%=amt%>"/></td>
			</tr>
			
			
			
			
			<tr>
				<td colspan=2></br></td>
			</tr>
	
			
			</table>
		</td>
		</tr>
	
			<tr><td  align="center" >
				<input type="button" name="add" value="   SAVE   "  onclick="ad()" title="Click here to Save this Record">
               <input type="button" name="edt" value="  CANCEL  " onClick="ad1()"title="Click here to Return back with out Saving">
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
