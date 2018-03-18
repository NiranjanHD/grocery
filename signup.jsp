<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to online GROCERRIE shopping</title>
<link href="style.css" rel="stylesheet" type="text/css" />

<script language="javascript" src="alfunctions.js">
</script>


<script language="javascript" type="text/javascript" src="datetimepicker.js">
</script>

		<link rel="stylesheet" href="ui.datepicker.css" type="text/css" media="screen" title="core css file" charset="utf-8" />
		
		<script src="jquery.js" type="text/javascript" charset="utf-8"></script>	
		<!-- Include Core Datepicker JavaScript -->
		
		<script src="ui.datepicker.js" type="text/javascript" charset="utf-8"></script>	
		<!-- Attach the datepicker to dateinput after document is ready -->
		
		<script type="text/javascript" charset="utf-8">
			jQuery(function($)
			{
				$("#text6").attachDatepicker();
				//$("#text7").attachDatepicker();
			});
		</script>
		
<script>
function td()
{
	if(empty2(signup))
	{
		document.signup.action="savedata.jsp"
  	  	document.signup.submit();
	}
}
</script>

</head>
<body>

	<div id="company_name"></div>
		<div id="header_bg">
  			<div id="header_image"></div>
		</div>
		<div id="navigation_bg">
  			<div id="navigation">
			<ul>
  				<li><a href="index.html">Home</a></li>
  				<li><a href="aboutus.html">About us</a></li>
  				<li><a href="product.html">Products</a></li>
  				<li><a href="signup.jsp">Sign Up</a></li>
  				<li><a href="contactus.html">Contact us</a></li>
  			</ul>
			</div>
		</div>
<div id="content_01">
        <table width="906" align="center">
		<td align="right"><a href="login.html"><font color="#FFFF00">LOGIN</font></a></td>
        <tr>
            <td><div id="content_01_image">
                      <div id="page_name">Sign up</div>
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
<form name="signup" method="get">
<input type="hidden" name="e">
<div id="content_02">
    <table width="880">
    <tr>
    <td>
		<div id="content_05_image"></div>
		<div id="content_03_text"><h1><b><em>ENTER YOUR DETAILS</em></b></h1>
  		
    	<table align="center">
			<tr>
				<td width="202"></br>	</td>
			</tr>
			
			<tr >
				<td height="60"><div id="ppp">ENTER YOUR FIRST NAME</div></td>
				<td width="173"> : 
			    <input type="text" name="f1" maxlength="15"/></td>
			</tr>
	
			<tr >
				<td height="60"><div id="ppp">ENTER YOUR LAST NAME</div></td>
				<td width="173"> : 
			    <input type="text" name="f2" maxlength="15"/></td>
			</tr>
			
			<tr >
				<td height="60"><div id="ppp">* ENTER YOUR USER NAME</div></td>
				<td width="173"> : 
			    <input type="text" name="f3" maxlength="15"/></td>
			</tr>
	
			<tr>
				<td height="60"><div id="ppp">* ENTER PASSWORD</div> </td>
				<td width="173"> : 
			     <input type="password" name="p1" maxlength="10"/></td>
			</tr>
			
			<tr>
				<td height="60"><div id="ppp">ENTER E-MAIL ADDRESS</div> </td>
				<td width="173"> : 
			    <input type="text" name="e1" maxlength="30"/></td>
			</tr>
			
			<tr>
			
				<td height="60"><div id="ppp">* ENTER DATE OF BIRTH</div> </td>
				<td width="173"> : 
			    <input type="text"  id="text6" value="" onFocus="this.style.backgroundColor='#F5F5DC'" class="input1" name="text6">

				<td height="60"><div id="ppp">(YYYY-MM-DD)</div> </td>
			</tr>
			
			<tr>
				<td height="60"><div id="ppp">* GENDER</div> </td>
				<td width="173"> : <select name="slt"><option value="select2">---------Select----------</option><option value="male">Male</option><option value="female">Female</option></option></select></td>
			</tr>
			
			<tr>
				<td height="60"><div id="ppp">* ENTER HOME ADDRESS</div> </td>
				<td width="173"> : 
			    <textarea rows="4" cols="16" name="addr"></textarea></td>
			</tr>
			
			<tr>
				<td height="60"><div id="ppp">* MOBILE NUMBER</div> </td>
				<td width="173"> : 
			    <input type="text" name="m1" maxlength="10" onblur="phnum(m1)"/></td>
			</tr>
			
			<tr>
				<td height="60"><div id="ppp">* ALTERNATIVE PH-NO</div> </td>
				<td width="173"> : 
			    <input type="text" name="m2" maxlength="10" onblur="phnum(m2)"/></td>
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
</html>
