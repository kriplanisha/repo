
<%@ include file="makecon.jsp"%>
<%@ page session="true"%>

<%!int sloginid;%>
<%!String str;%>
<%!ResultSet rs, rs1 = null;
	String pass = null;%>

<%
	sloginid = Integer.parseInt(request.getParameter("uname"));
	pass = request.getParameter("password");

	System.out.println(pass);
	rs = st.executeQuery("select *  from seek_login where  seek_code="
			+ sloginid + " and  seek_pwd='" + pass + "'");
	if (!rs.next()) {
		con.close();
		System.out.println("hai");
%>
<frameset rows="23%,*">
	<frame src="title21.htm" scrolling=no bordercolor=#6480ed frameborder=no>


	<frameset rows="*,7%">
		<frameset cols="25%,*">

			<frame src="left.htm" bordercolor=#6480ed scrolling=auto
				frameborder=no>
			<frame src="onlinelogin.htm" name="right" bordercolor=#6480ed
				frameborder=0 scrolling=auto>
		</frameset>
		<frame src="bot.htm" noresize scrolling=no bordercolor=#6480ed>

	</frameset>
</frameset>

<%
	} else {
		System.out.println("welcome");
%>

<frameset rows="23%,*">
	<frame src="title21.htm" scrolling=no bordercolor=#6480ed frameborder=no>


	<frameset rows="*,7%">

		<frame src="onlineright.jsp" name="right" bordercolor=#6480ed
			frameborder=0 scrolling=auto>

	</frameset>
</frameset>

<%
	}

	rs1 = st.executeQuery("select *  from seek_per where  seek_code="
			+ sloginid);
	if (rs1.next()) {
		String ds = rs1.getString(2);
		System.out.println(ds);
		session.setAttribute("str1", ds);
	}

	con.close();
%>
