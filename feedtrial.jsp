

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

<form name="trl" method="post">
<body>

<div id="company_name"></div>
<div id="header_bg">
  <div id="header_image"></div>
</div>
<div id="navigation_bg">
  <div id="navigation"><ul>
  <li><a href="emphome.jsp">Home</a></li>
  <li><a href="adminadd.jsp">Stores</a></li>
  <li><a href="oildetailsup.jsp">Update</a></li>
  <li><a href="reports.jsp">Reports</a></li>
  <li><a href="logout.jsp">Logout</a></li>
  </ul></div>
</div>
<div id="content_01">
        <table width="906" align="center">
		
        <tr>
        <td><div id="content_01_image">
                    <div id="page_name">Feedbck Rpt</div>
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

<div id="content_vertical">
 <table width="880">
   <tr>
    <td><div id="content_03_text">

  		
    	<div id="navigation_bg1">
  <div id="navigation"><ul>
  <li><a href="feedtrial.jsp">Feedback reports</a></li>
  <li><a href="avodelete.jsp">Offer reports</a></li>
  <li><a href="empreport.jsp">Emplye reports</a></li>
  <li><a href="orderreport.jsp">Order reports</a></li>
  <li><a href="stockreport.jsp">Stock reports</a></li>
  <li><a href="deliveryreport.jsp">Delivery reports</a></li>
   <li><a href="undeliverreport.jsp">Undelivery reports</a></li>
 </ul></div>
 
</div><br>
 <h1><b><em>Reports details of Feedback</em></b></h1><br><br>
        <%@ page  language="java" import="java.sql.*" %>

<%@ page  language="java" import="java.util.*" %>

<TABLE align=left cellSpacing=3 cellPadding=0 width="100%" border=00>
<input type="hidden" name="e">
  <TBODY>
  <TR>
  <font color="#990033">
    <TD vAlign=top align=middle width="50%">
    <TABLE cellSpacing=3 cellPadding=2 width="100%" border=00>
        <TBODY>
        <TR vAlign=top align=left>
        <TD>        
       <TABLE  cellSpacing=03 cellPadding=03 width="100%" border=00>
            <table border=0 width="70%" height="9%" >	

 <%
        Connection dbcon=null;String a = null;
        try
	    {  
		String connectionURL = "jdbc:mysql://localhost/grocery";
              		String Qry="select *from feedback";
	
	  	Class.forName("com.mysql.jdbc.Driver");
            		dbcon = DriverManager.getConnection(connectionURL, "root", "mysql");
		PreparedStatement pst=dbcon.prepareStatement(Qry);
		ResultSet rs = pst.executeQuery();

%>
             
        <TABLE border=2  width="100%" bordercolor="black"> 
        <tr height="20%">
		 <td width="5%" > <font color="black"  face="times new roman" size=3><b>SLNO</font></td>
 		<td  width="5%" ><font color="black"  face="times new roman" size=3><b> NAME</td>

		<td width="5%" > <font color="black"  face="times new roman" size=3><b>SUBJECT</font></td>
 		
		<td width="5%" > <font color="black"  face="times new roman" size=3><b>MESSAGE</font></td>
 		
		<td  width="5%" ><font color="black"  face="times new roman" size=3><b>EMAIL</td> 
		<td  width="5%" ><font color="black"  face="times new roman" size=3><b>PHONE</td> 
		<td  width="5%" ><font color="black"  face="times new roman" size=3><b>DATE</td> 
		
	</font>
		
		<tr><td> </td></tr>
		<br/>
        <%
	        while(rs.next())
	        {
			 
a = rs.getString(1);
        %>
		
         <tr height="30%">	
        		<td width="5%" align=left><font color="#666666"><b><%out.print(a);%></td>
		<td width="5%" align=left><font color="#666666"><b><%=rs.getString(2)%></td>
		<td width="5%" align=left><font color="#666666"><b><%=rs.getString(3)%></td>
		<td width="5%" align=left><font color="#666666"><b><%=rs.getString(4)%></td>
		<td width="5%" align=left><font color="#666666"><b><%=rs.getString(5)%></td>
		<td width="5%" align=left><font color="#666666"><b><%=rs.getString(6)%></td>
		<td width="5%" align=left><font color="#666666"><b><%=rs.getString(7)%></td>
		</b></font>
		<td width="5%" align=middle> <font color="#666666"><b>
		<a href="#" onClick="ed1('<%=a%>')"><font color="#00FF00">DELETE</font></a></td>
		
		
		<tr><td> </td></tr>
		
            		<tr><td> </td></tr>
		<tr><td> </td></tr>
       <%
       	       }
       %>
        </TABLE>
        </center>

     <%
                      }
          	catch(Exception d)
        		 {
		   out.println(d);
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
</form>
<%
}
%>
</body>
<script>

function ed1(a)
{
var r=confirm("Do you want to Delete this Record Permanently");
	if(r==true)
	{
		document.trl.e.value=a;
		document.trl.action="delfeed.jsp";
		document.trl.submit();
	}
	else
	{
		r=window.createPopup();
		var p=r.document.body;
		p.style.background="red";
		p.style.border="solid black 5px";
		p.innerHTML="Delete Operation FAILED..!!!!";
		r.show(400,500,200,30,document.body); //(x-axis,y-axis,width,height)
	}

}
</script>
		
</div>
<div id="fotter">
all copy rights reserved.<br />
Designed By <a href="http://www.OGC.com" title="grocery">www.OGS.com</a>
</div>
</body>

</html>

