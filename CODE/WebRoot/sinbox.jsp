<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>Inbox</title>
</head>

<body bgColor=ghostwhite>
<%@ include file="makecon.jsp" %>
<%@ page session="true"%>
<%@ page import="java.util.*"%>


<%! 	
	ResultSet rs=null;
%>
<%
 Integer slogid=(Integer)session.getAttribute("slogin1");
%>
<% 
int sn2=slogid.intValue();
System.out.println("sn6:"+sn2);
%>
<%
try
{
	rs= st.executeQuery("select * from online_testlogin where seek_code="+sn2);
   if(rs.next())
   
	{
	System.out.println("update");
%>
<p align=left><FONT color=deepskyblue size=6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
W</FONT>el<FONT size=6>come To Ur <FONT 
color=navy>I</FONT></FONT><FONT 
size=4>nbox</FONT></p>
<p> 
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<TABLE border=4 cellPadding=3 cellSpacing=3 width="75%">
  
  <TR>
    <TD>
      <P align=center><FONT color=cornflowerblue size=5 
     >Message 
      from the Job Provider&nbsp;</FONT></P></TD>   
       </TR>
  <TR>
    <TD><P align=center><%out.println(rs.getString(2));%> </P></TD>
      </TR></TABLE> 
 <%}
}
catch(Exception e)
{
}
finally
{
rs.close();
st.close();
con.close();
}

%>
    &nbsp;&nbsp;</p>
<P> 
</P>
<P> 
</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT 
color=#64b5ed>For Online Test Click&nbsp;the On Line Test From Home 
Page.......</FONT> 
</P>
</body>

</html>
