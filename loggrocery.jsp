<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
String user1=null,pwd1=null,typ=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost/grocery","root","mysql");
	Statement stmt = con1.createStatement() ;
	ResultSet re=null;
	typ=request.getParameter("type");	
	user1 = request.getParameter("t1");
	pwd1= request.getParameter("t2");
	String q="select * from password where uname = '"+user1+"' and passwd='"+pwd1+"'and utype='"+typ+"'";
	re=stmt.executeQuery(q);		
	if(re.next())
	{
	   // typ=re.getString("cid");
		//System.out.print(typ);
			if(typ.equals("admin"))
			{
							session.setAttribute("logname",user1);
							session.setAttribute("logname1", typ);
							response.sendRedirect("emphome.jsp");
			}
			else if(typ.equals("customer"))
			{
							session.setAttribute("logname",user1);
							session.setAttribute("logname1", typ);
							response.sendRedirect("customerhome.jsp");
			}
			else if(typ.equals("employee"))
			{
							session.setAttribute("logname",user1);
							session.setAttribute("logname1", typ);
							response.sendRedirect("emphome1.jsp");
			}
			
			
	}
	else
	{
	response.sendRedirect("invalidgrocery.html");
	}
}
catch(Exception  e)
{	
out.print(e);
}
%>






