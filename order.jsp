
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
	out.print(sessionUser);%>
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
<script>
function ad()
{
	document.itemdetails.action="savepurchase.jsp";
document.itemdetails.submit();
}
</script>
<script>
function g(a,d,e,k)
{
var v=document.getElementById(d).value;
if(v=="select")
{
document.getElementById(k).disabled=true;
document.getElementById(e).value="";
}
else{
//alert(e);
document.getElementById(k).disabled=false;
//alert(v);
var v1=v*a;
//alert(v1);
document.getElementById(e).value=v1;
}
}
function val(z1,z2,z3,z4)
{
if(document.getElementById(z1).checked)
{
//alert(z1);
//alert(document.getElementById(z2).value);
//alert(z3);
//alert(document.getElementById(z4).value);

document.getElementById("w1").value=z1;
document.getElementById("w2").value=document.getElementById(z2).value;

document.getElementById("w3").value=z3;
document.getElementById("w4").value=document.getElementById(z4).value;
document.getElementById("w5").value=z2;
//alert(document.getElementById("w1").value);
document.itemdetails.action="savecart.jsp";
document.itemdetails.submit();
}
/*document.itemdetails.action="";
document.itemdetails.submit();*/
}
function val1(q1)
{
if(document.getElementById(q1).checked)
{
alert("uncheck");
}
else
{
var r=confirm("Do you want to Drop this item from Your CART.?");
	if(r==true)
	{
		document.getElementById("w1").value=q1;
		
		document.itemdetails.action="delcart.jsp";
		document.itemdetails.submit();
	}
//alert("");}
}}
</script>
<form name="itemdetails" method="get">
<body onload="first()">

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
                      <div id="page_name">Product</div>
                </div>
            
            </td>
        </tr>
        </table>
</div>
<div id="content_vertical">
    <table width="332">
    <tr>
		
    	<td width="320">
		<div id="navigation_bg">
		<div id="navigation">
  		
    	<table align="left">
		<ul>
  						<tr><td width="530"><li><a href="shopgrains.jsp">Grains</a></li></td></tr>
 						<tr><td><li><a href="shopoil.jsp">Oils</a></li></td></tr>
						<tr><td><li><a href="shopspices.jsp">Spices</a></li></td></tr>
  		<td width="10"></ul>
		</table>
	    </div>

     	</td>
	 
     </tr>
	
	</table>
</div>
    
<div id="content_vertical">
 <table width="880">
   <tr>
    <td><div id="content_03_text">
  		
<%@ page  language="java" import="java.sql.*" %>

<%@ page  language="java" import="java.util.*" %>

<h1><b><em>Products in Your Cart</em></b></h1>
  		
<TABLE align=left cellSpacing=3 cellPadding=0 width="100%" border=00>
<input type="hidden" name="w1" id="w1">
<input type="hidden" name="w2" id="w2">
<input type="hidden" name="w3" id="w3">
<input type="hidden" name="w4" id="w4">
<input type="hidden" name="w5" id="w5">
  <TBODY>
  <TR>
  <font color="#990033">
    <TD vAlign=top align=middle width="70%">
    <TABLE cellSpacing=3 cellPadding=2 width="100%" border=00>
        <TBODY>
        <TR vAlign=top align=left>
        <TD>        
       <TABLE  cellSpacing=03 cellPadding=03 width="100%" border=00>
            <table border=0 width="90%" height="9%" >	

 <%
        Connection dbcon1=null;String t = null,t1=null,t2=null,t4=null;
		int tot=0,t3=0;
		String r=null,r1=null,r2=null;
        try
	    {
		Class.forName("com.mysql.jdbc.Driver");
          
		String connectionURL = "jdbc:mysql://localhost/grocery";
              		String Qry1="select *from cart";
	
	  	    		dbcon1 = DriverManager.getConnection(connectionURL, "root", "mysql");
		PreparedStatement pst1=dbcon1.prepareStatement(Qry1);
		ResultSet rs1 = pst1.executeQuery();
		
   		String Qry2="select *from sgnup where uname='"+sessionUser+"' ";
   		dbcon1 = DriverManager.getConnection(connectionURL, "root", "mysql");
		PreparedStatement pst2=dbcon1.prepareStatement(Qry2);
		ResultSet rs2 = pst2.executeQuery();


%>
   <TABLE border=2  width="85%" bordercolor="black"> 
        <tr height="20%">
		<td  width="15%" ><font color="#FFFFFF"  face="times new roman" size=3><b> NAME</td>
		<td  width="15%" ><font color="#FFFFFF"  face="times new roman" size=3><b>QUANTITY</td> 
		<td  width="15%" ><font color="#FFFFFF"  face="times new roman" size=3><b>ORIGINAL AMOUNT</td> 
		<td  width="15%" ><font color="#FFFFFF"  face="times new roman" size=3><b>QUANTITY AMOUNT </td> 
	</font>
		<br/>
        <%
	        while(rs1.next())
	        {
			 
t = rs1.getString(1);
t1= rs1.getString(2);
t2=rs1.getString(3);
t3=Integer.parseInt(rs1.getString(4));
tot=tot+t3;
t4=rs1.getString(5);
        %>
		
         <tr height="30%">	
		 
		<td width="5%" align=left><font color="#666666"><b><%=t%></td>
		<td width="5%" align=left><font color="#666666"><b><%=t1%></td>
		<td width="5%" align=left><font color="#666666"><b><%=t2%></td>
		<td width="5%" align=left><font color="#666666"><b><%=t3%></td>
		</b></font>
       <%
       	       }
			   if(rs2.next())
			{
				r=rs2.getString(1);
				r1=rs2.getString(9);
			}
			
       %>
        </TABLE>
		 <table width="880">
    <tr>
    <td>
	<table>
			<tr>
				<td width="202"></br>	</td>
			</tr>
        </center><br /><br /><br />
		<tr><td><font color="#FFFFFF"><strong>Payable Amount :</font>&nbsp;&nbsp;</td><td><input type="text" name="total" readonly="true" value="<%=tot%>" size="15"/><br /><br /><br /></td></tr>
<tr><td><font color="#FFFFFF"><strong>User ID :</font>&nbsp;&nbsp;</td><td><input type="text" name="uid" readonly="true" value="<%=r%>" size="15"/><br /><br /><br /></td></tr>
<tr><td><font color="#FFFFFF"><strong>Address :</font>&nbsp;&nbsp;</td><td><input type="text" name="addrs" readonly="true1" value="<%=r1%>" size="15"/><br /><br /><br /></td></tr>
<tr><td><font color="#FFFFFF"><strong>Mode of Payment :</font>&nbsp;&nbsp;</td><td><input type="radio" name="mop" value="Cash On Delivery" checked="checked" />Cash On Delivery<input type="radio" name="mop" value="Pay by Card(Debit/Credit)" />Pay by Card(Debit/Credit)
<br /><br /><br /></td></tr>
<input type="hidden" name="n" value="<%=t%>">
<input type="hidden" name="n1" value="<%=t1%>">
<input type="hidden" name="n2" value="<%=t2%>">
<input type="hidden" name="n3" value="<%=t3%>">
<tr><td><input type="button" name="purchase" value="  Purchase  " onclick="ad()"/> </td></tr>

<font color="#FF0000"><h3>* Delivery will take in 24Hours</h3></font>
     <%
                      }
				catch(Exception d2)
        		 {
		   out.println(d2);
	                    out.println("cannot display the records");
         		}
     %>
    
  </table>
   </td>
     </tr>
	</table>
  </table>
        <TBODY>
        </TBODY>
       </TABLE>
      <BR>
      </TD>
      </TR>
      </TBODY>
      </TABLE>
      </TD>
      <TD vAlign=top align=middle width="5%">
      </TD>
     </TR>
	</TBODY>
	</TABLE>

<div id="fotter">
all copy rights reserved.<br />
Designed By <a href="http://www.OGC.com" title="grocery">www.OGS.com</a>

</div>

</form>
<%
}
%>
</body></html>
