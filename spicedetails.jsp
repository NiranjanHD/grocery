
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
function cs()
{	
	var s=document.itemdetails.items;
	
	
			if(s=="Vegetables")
			{
					document.itemdetails.action="index.html";
					document.itemdetails.submit();
			}
			
}
</script>
<form name="itemdetails" method="post">
<body>
	<div id="company_name"></div>
		<div id="header_bg">
  			<div id="header_image"></div>
		</div>
		<div id="navigation_bg">
  			<div id="navigation">
			<ul>
				  <li><a href="customerhome.jsp">Home</a></li>
				  <li><a href="stores.jsp">Stores</a></li>
				  <li><a href="customerprod.jsp">Products</a></li>
				  <li><a href="feedback.jsp">Feedback</a></li>
				  <li><a href="logout.jsp">Logout</a></li>
  			</ul>
			</div>
		</div>
<div id="content_01">
        <table width="906" align="center">
        <tr>
            <td><div id="content_01_image">
                      <div id="page_name">Spices detls</div>
                </div>
            <div id="content_01_content"></div>
            </td>
        </tr>
        </table>
	</div>
<div id="content_vertical">
    <table width="332">
    <tr>
		
    	<td width="320">
		<div id="navigation_bg1">
		<div id="navigation">
  		
    	<table align="left">
		<ul>
  						<tr><td width="530"><li><a href="vegdetails.jsp">Grains</a></li></td></tr>
 						<tr><td><li><a href="oildetails.jsp">Oils</a></li></td></tr>
						<tr><td><li><a href="spicedetails.jsp">Spices</a></li></td></tr>
  		<td width="10"></ul>
		</table>
	    </div>

     	</td>
	 
    </tr>
	</table>
</div>

<div id="content_vertical">
    <table width="332">
    <tr>
		
    	<td width="320">
		<div id="navigation">
  		    	
		<%@ page  language="java" import="java.sql.*" %>
		<%@ page  language="java" import="java.util.*" %>
		<%
				Connection dbcon=null;String a = null;
				try
				{  
				String connectionURL = "jdbc:mysql://localhost/grocery";
							String Qry="select *from items where category='Spices'";
			
				Class.forName("com.mysql.jdbc.Driver");
							dbcon = DriverManager.getConnection(connectionURL, "root", "mysql");
				PreparedStatement pst=dbcon.prepareStatement(Qry);
				ResultSet rs = pst.executeQuery();
		%> 

   		<table align="left">
		<ul>
  				<tr><td width="200"><li><h1>Spices</h1></li></td><td width="200"><li><h1>Qty(Kgs)</h1></li></td><td width="200"><li			 				><h1>Amount</h1></li></td></tr>
		<%
	        while(rs.next())
	        {
				a = rs.getString(1);
        %>
		
				<tr height="30%">	
				<td width="5%" align=left><font color="#FFFFFF"><b><%=rs.getString(2)%></b></font></td>
				<td width="5%" align=left><font color="#FFFFFF"><b><%=rs.getString(3)%></b></font></td>
				<td width="5%" align=left><font color="#FFFFFF"><b><%=rs.getString(4)%></b></font></td>
				
		
 		</ul>
				<tr><td> </td></tr>
				<tr><td> </td></tr>
				<tr><td> </td></tr>
		<%
		    }
		%>
        </TABLE>

     	</td>
	 </tr>
	 </table>

     <%
            }
          	catch(Exception d)
        	{
		    	out.println(d);
	            out.println("cannot display the records");
			}
     %>
    
</div>

<div id="fotter">
all copy rights reserved.<br />
Designed By <a href="http://www.OGC.com" title="grocery">www.OGS.com</a>

</div>
</body>
</form>
<%
}
%>
</html>
