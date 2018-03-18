
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
function g(a,d,e,k,jj)
{
var v=document.getElementById(d).value;
var n=parseInt(v);
var n1=parseInt(jj);
//alert(jj);
if(v=="select")
{
document.getElementById(k).disabled=true;
document.getElementById(e).value="";
}
else{
//alert(e);
document.getElementById(k).disabled=false;
//document.getElementById(jj).disabled=false;
//alert(v);
var v1=v*a;
//alert(v1);
//alert("v"+v);
//alert("jj"+jj);
	if(n<=n1)
	{
	var v2=jj-v;
	document.getElementById(e).value=v1;
	//alert(document.getElementById(jj));
	document.getElementById(jj).value=v2;
	//alert(document.getElementById(jj).value);
	}
	else 
	{
	alert("Selected items are more than the Stocks..!");
	}

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
function val1(q1,q2)
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
		document.getElementById("qt").value=q2;
		document.itemdetails.action="delcart.jsp";
		document.itemdetails.submit();
	}
//alert("");}
}}
</script>
<script>
function pur()
{
	if(document.itemdetails.total.value==0)
	{
		alert("Please Drop any items into Cart to Purchase..!!");
	}
	else
	{
	document.itemdetails.action="order.jsp";
	document.itemdetails.submit(); }
}
</script>

<form name="itemdetails" method="get">
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
		<div id="navigation_bg1">
		<div id="navigation">
  		
    	<table align="left">
		<ul>
		<tr><td width="530"><li><a href="shopgrains.jsp">Grains</a></li></td></tr>
 						<tr><td><li><a href="shopoil.jsp">Oils</a></li></td></tr>
						<tr><td><li><a href="shopspices.jsp">Spices</a></li></td></tr>
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
      <h1><b><em>Enter details to buy</em></b></h1>
  		<%@ page  language="java" import="java.sql.*" %>

<%@ page  language="java" import="java.util.*" %>

<TABLE align=left cellSpacing=3 cellPadding=0 width="100%" border=00>
<input type="hidden" name="w1" id="w1">
<input type="hidden" name="w2" id="w2">
<input type="hidden" name="w3" id="w3">
<input type="hidden" name="w4" id="w4"> 
<input type="hidden" name="w5" id="w5">
<input type="hidden" name="qt" id="qt">

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
        Connection dbcon=null;String a = null,a1=null,b=null,c=null,d=null,j=null;
        try
	    {  
		String connectionURL = "jdbc:mysql://localhost/grocery";
              		String Qry="select *from items where category='Spices'";
					String Qry1="select *from avo";
	
	
	  	Class.forName("com.mysql.jdbc.Driver");
            		dbcon = DriverManager.getConnection(connectionURL, "root", "mysql");
		PreparedStatement pst=dbcon.prepareStatement(Qry);
		ResultSet rs = pst.executeQuery();
		PreparedStatement pst11=dbcon.prepareStatement(Qry1);
		ResultSet rs11 = pst11.executeQuery();


%>
        <center> <a href="admin.jsp"> BACK </a>       
        <TABLE border=2  width="110%" bordercolor="black" > 
        <tr height="20%">
		<td  width="15%" ><font color="#FFFFFF"  face="times new roman" size=3><b> NAME</td>
		<td  width="15%" ><font color="#FFFFFF"  face="times new roman" size=3><b>QUANTITY</td> 
		<td  width="15%" ><font color="#FFFFFF"  face="times new roman" size=3><b>ORIGINAL AMOUNT</td> 
		<td  width="15%" ><font color="#FFFFFF"  face="times new roman" size=3><b>QUANTITY AMOUNT </td> 
		<!--<td  width="15%" ><font color="#FFFFFF"  face="times new roman" size=3><b>IN STOCK</td> 
		<td  width="15%" ><font color="#FFFFFF"  face="times new roman" size=3><b>STOCK</td> -->
	</font>
		<br/>
		
        <% 
		    while(rs11.next())
			{
			 // qq=rs11.getString(1);
			  //qq1=rs11.getString(2);
		   %>
		   
		    <marquee direction="left" >BUY <%=rs11.getString(1)%> KG OF ANY ITEM GET <%=rs11.getString(2)%>Rs OFF </marquee>
           <% }  
			
	        while(rs.next())
	        {
			 
a = rs.getString(1);
a1= rs.getString(2);
b=rs.getString(4); 
c=rs.getString(5);
d=rs.getString(6);
j=rs.getString(7);
		if(j.equals("0"))
		{%>
			<script>
			document.getElementById('a1').disabled=true;
        </script>
		<% }%>
         <tr height="30%">	
		 
		<td width="5%" align=left><font color="#666666"><b><input type="checkbox" name="<%=a1%>" id="<%=a1%>" onclick="val('<%=a1%>','<%=c%>','<%=b%>','<%=d%>')" disabled="true"/>&nbsp;&nbsp;<%=a1%></td>
		<td width="5%" align=left><font color="#666666"><b><select id="<%=c%>" onchange="g('<%=b%>','<%=c%>','<%=d%>','<%=a1%>','<%=j%>')">
		<option value="select">select</option>
		<option value="1">1</option>
		<option value="3">3</option>
		<option value="5">5</option>
		<option value="10">10</option>
		</select></td>
		<td width="5%" align=left><font color="#666666"><b><input type="text" name="<%=b%>" value="<%=b%>" readonly="true"/></td>
		<td width="5%" align=left><font color="#666666"><b><input type="text" name="<%=d%>" id="<%=d%>" readonly="true"/></td>
		
			
       <%
       	       }
       %>
        </TABLE>
        </center><br /><br /><br /><br /><br /><br /> 
     <%
                      }
          	catch(Exception d1)
        		 {
		   out.println(d1);
	                    out.println("cannot display the records");
         		}
     %>
    
  
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
        try
	    {  
		String connectionURL = "jdbc:mysql://localhost/grocery";
              		String Qry1="select *from cart";
	
	  	Class.forName("com.mysql.jdbc.Driver");
            		dbcon1 = DriverManager.getConnection(connectionURL, "root", "mysql");
		PreparedStatement pst1=dbcon1.prepareStatement(Qry1);
		ResultSet rs1 = pst1.executeQuery();

%>
       <font color="#FFFFFF"><strong>Un-Tick to Remove from Cart</font>
        <TABLE border=5  width="85%" bordercolor="black"> 
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
		 
		<td width="5%" align=left><font color="#666666"><b><input type="checkbox" name="<%=t4%>" id="<%=t4%>" onclick="val1('<%=t4%>','<%=t1%>')" checked="checked"/>&nbsp;&nbsp;<%=t%></td>
		<td width="5%" align=left><font color="#666666"><b><%=t1%></td>
		<td width="5%" align=left><font color="#666666"><b><%=t2%></td>
		<td width="5%" align=left><font color="#666666"><b><%=t3%></td>
		</b></font>
       <%
       	       }
       %>
        </TABLE>
        </center><br /><br /><br />
		<font color="#FFFFFF">Total Amount</font>&nbsp;&nbsp;<input type="text" name="total" readonly="true" value="<%=tot%>" size="5"/><br /><br /><br />
<input type="button" name="order" value="Purchase" onclick="pur()"/> 
     <%
                      }
          	catch(Exception d2)
        		 {
		   out.println(d2);
	                    out.println("cannot display the records");
         		}
     %>
    
  
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

<h4><font color="#FFFFFF">Would you like to shop <a href="shopoil.jsp"><h2><font color="#FFCC00">OIL</a></h2></h4>
<h4><font color="#FFFFFF">Would you like to shop <a href="shopspices.jsp"><h2><font color="#FFCC00">SPICES</a></h2></h4>
<div id="fotter">
all copy rights reserved.<br />
Designed By <a href="http://www.OGC.com" title="grocery">www.OGS.com</a>

</div>

</form>
<%
}
%>
</body></html>
