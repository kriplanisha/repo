<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY text=#000000  leftMargin=0 topMargin=0>
<TABLE cellSpacing=0 cellPadding=0 width=780  border=0>


<%@ include file="makecon.jsp" %>
<%@page session="true"%>

<%!  	ResultSet rs=null;
	PreparedStatement ps=null;
%>
<%! String answer1;%>


<% Integer fid3=(Integer)session.getAttribute("fid2");%>


<% 
int sn2=fid3.intValue();

%>



<%  	answer1=request.getParameter("answer");
		
	
%>


<% try
	{
 	rs=st.executeQuery("select * from seek_login where seek_code="+sn2);

	if(rs.next())
          {	
		
           if((rs.getString(4).compareTo(answer1)) == 0)
	     {%>
		
	

  <TBODY>
  <TR>
    <TD vAlign=top height=321>
      <TABLE cellSpacing=0 cellPadding=0 width="790" border=0>
        <TBODY>
        <TR>
          <TD vAlign=top width=222 
    bgColor=#ffffff>&nbsp;
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <b>&nbsp;&nbsp;</b>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
          </TD>
          <TD vAlign=top width=550 
    bgColor=#ffffff>&nbsp;
            <p>&nbsp;</p>
            <p><b><font color="#6699CC">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </font><font color="#0000FF">Nice To Meet u.... Have a nice Day...</font></b></p>
            <p><b><font color="#6699CC">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Ur Login ID Is&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;<%=rs.getInt(1)%></font></b></p>
            <p><b><font color="#6699CC">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Ur Password Is&nbsp;&nbsp; :&nbsp;&nbsp;<%=rs.getString(2)%> </font></b>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <font color="#FF00FF"> U want go for Further Transactions &nbsp; <a href="seekerlog1.htm">Yes?</a>&nbsp;&nbsp;</font>
          </TD>
        </TR>
        </TBODY></TABLE></TD></TR></TBODY>
        
        <%    }	
		else
			{
			%>             
			                               
  			
<TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b>SoRry Pls Check iT ....</b>
          </TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;
          </TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         </p>
          </TD></TR>



	<%
			}
	    }	
	}
	catch(Exception e)
	{
	 System.out.println("error"+e);
	}
	finally
	{
	rs.close();
	st.close();
	con.close();
	}
	%>
        
        </TABLE></BODY></HTML>
