<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>Untitled Document</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
		<META content="Microsoft FrontPage 4.0" name=GENERATOR>
	</HEAD>
	<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>


		<%@ include file="makecon.jsp"%>

		<%@ page session="true"%>
		<%!ResultSet rs = null;%>
		<%!int slogin_id1;%>
		<%!String slogid;%>

		<%
			try {
				rs = st.executeQuery("select max(seek_code) from seek_per");
				if (rs.next()) {
					slogin_id1 = rs.getInt(1) + 1;
					System.out.println("Max:" + slogin_id1);
				} else {
					slogin_id1 = 1000;
					System.out.println("Max:" + slogin_id1);
				}

				Integer slogin1 = new Integer(slogin_id1);
				session.setAttribute("slogin1", slogin1);

			} catch (Exception e) {
				System.out.println("error" + e);
			}

			finally {
				rs.close();
				st.close();
				con.close();
			}
		%>
		<TABLE cellSpacing=0 cellPadding=0 width=690 bgColor=#6699cc border=0>
			<TBODY>
				<form name="snew" method="post" action="sregister.jsp">
					<TR>
						<TD vAlign=top height=321 width="692">
							<TABLE cellSpacing=0 cellPadding=0 width="692" border=1
								height="381">
								<TBODY>


									<TD vAlign=top width=612 bgColor=#ffffff height="381">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<b>&nbsp;&nbsp;</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<p align="center">
											<font face="Arial" color="#6699CC" size="4"><b>Job
													Seeker Registration Form&nbsp;</b>
											</font>
											<table border="0" cellpadding="0" cellspacing="0"
												style="border-collapse: collapse" bordercolor="#111111"
												width="610" id="AutoNumber6" height="470">
												<td width="39">
													<br>
													<tr>
														<td width="39" height="58">
															&nbsp;
														</td>
														<td width="567" height="58">
															<b>Personal Information</b>
															<table border="0" cellpadding="0" cellspacing="0"
																style="border-collapse: collapse" bordercolor="#111111"
																width="561" id="AutoNumber7" height="51">
																<tr>
																	<td width="97" height="26">
																		First Name
																	</td>
																	<td width="161" height="26">
																		<FONT color=#004080><INPUT name=fname size="16"
																				tabIndex=1>
																		</FONT>
																	</td>
																	<td width="116" height="25">
																		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last
																		Name
																	</td>
																	<td width="179" height="25">
																		<FONT color=#004080> <INPUT name=lname
																				size="16" tabIndex=2>
																		</FONT>
																	</td>
																</tr>
																<tr>
																	<td width="97" height="13">
																		Date Of Birth
																	</td>
																	<td width="161" height="13">

																		<FONT color=#004080><INPUT name=dob size="16"
																				tabIndex=3>
																		</FONT>
																	</td>
																	<td width="116" height="24" rowspan="2">
																		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cell
																		No
																	</td>
																	<td width="179" height="24" rowspan="2">
																		<FONT color=#004080> <INPUT name=cellno
																				size="16" tabIndex=6>
																		</FONT>
																	</td>
																</tr>
																<tr>
																	<td width="97" height="12"></td>
																	<td width="161" height="12">

																		&nbsp;&nbsp;
																		<font color="#AE0000">*</font> (
																		<font size="1">dd/mm/yyyy)</font>
																	</td>
																</tr>
																<tr>
																	<td width="97" height="24">
																		Sex
																	</td>
																	<td width="161" height="24">

																		<FONT color=#ae0000> <SELECT name=sex size=1
																				tabIndex=7>
																				<OPTION value="">
																					Sex
																					<OPTION value=Male>
																						Male
																						<OPTION value=Female>
																							Female
																						</OPTION>
																			</SELECT>
																		</FONT>
																	</td>
																	<td width="116" height="25">
																		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Passport
																		No
																	</td>
																	<td width="179" height="25">
																		<FONT color=#004080> <INPUT name=passportno
																				tabIndex=8 size="16">&nbsp;</FONT>
																	</td>
																</tr>
																<tr>
																	<td width="97" height="25">
																		E-mail
																	</td>
																	<td width="161" height="25">
																		<FONT color=#004080> <INPUT name=email
																				tabIndex=9 size="16">
																		</FONT>
																	</td>
																	<td width="116" height="25">
																	</td>
																	<td width="179" height="25"></td>
																</tr>
																<tr>
																	<td width="559" colspan="4" height="27">
																		Hobbies&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																		<textarea id="hobbies" name="hobbies"
																			style="HEIGHT: 40px; WIDTH: 160px" rows="1" cols="20"
																			tabIndex=10>
</textarea>
																	</td>
																</tr>
																<tr>
																	<td width="555" colspan="4">
																		<br>
																		<b>Address</b>
																		<b>Information&nbsp;</b>
																</tr>
																<tr>
																	<td width="97">
																		<td width="279" colspan="2" height="33">
																			Permanent Address
																		</td>
																		<td width="179" height="33">
																			Current Address
																		</td>
																</tr>
																<tr>
																	<td width="97" height="27">
																		<p align="left">
																			&nbsp;Street Name
																		</p>
																	</td>
																	<td width="161" height="27">
																		<FONT color=#004080> <INPUT name="p_streetname"
																				tabIndex=11 size="16">
																		</FONT>
																	</td>
																	<td width="116" height="27">
																		&nbsp; Street Name
																	</td>
																	<td width="179" height="27">
																		<FONT color=#004080> <INPUT name="c_streetname"
																				tabIndex=14 size="16">
																		</FONT>
																	</td>
																</tr>
																<tr>
																	<td width="97" height="25">
																		&nbsp;Area
																	</td>
																	<td width="161" height="25">
																		<FONT color=#004080> <INPUT name="p_area"
																				tabIndex=12 size="16">
																		</FONT>
																	</td>
																	<td width="116" height="25">
																		&nbsp; Area
																	</td>
																	<td width="179" height="25">
																		<FONT color=#004080> <INPUT name="c_area"
																				tabIndex=15 size="16">
																		</FONT>
																	</td>
																</tr>
																<tr>
																	<td width="97" height="26">
																		&nbsp;Place
																	</td>
																	<td width="161" height="26">
																		<FONT color=#004080> <INPUT name="p_city"
																				tabIndex=13 size="16">
																		</FONT>
																	</td>
																	<td width="116" height="26">
																		&nbsp; Place
																	</td>
																	<td width="179" height="26">
																		<FONT color=#004080> <INPUT name="c_city"
																				tabIndex=16 size="16">
																		</FONT>
																	</td>
																</tr>
																<tr>
																	<td width="260" colspan="2" height="26">
																		&nbsp;
																	</td>
																	<td width="116" height="26">
																		&nbsp; Phone Number
																	</td>
																	<td width="179" height="26">
																		<FONT color=#004080> <INPUT name=phno
																				tabIndex=17 size="16">
																		</FONT>
																	</td>
																</tr>
															</table>

														</td>
													</tr>
													<tr>
														<td width="39" height="227">
															&nbsp;
														</td>
														<td width="567" height="227">
															<p>
																<b>Seeker Resume Details</b>
															</p>
															<div align="center">
																<center>
																	<table border="0" width="100%" cellpadding="0"
																		cellspacing="0" height="204">
																		<tr>
																			<td width="41%" height="44">
																				Qualification&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																			</td>
																			<td width="34%" height="44">
																				<FONT color=#ae0000><SELECT
																						name=qualification size=1 tabIndex=18>
																						<OPTION selected>
																							Select Highest Degree
																							<OPTION value="BE/B.Tech">
																								BE/B.Tech
																								<OPTION value="ME/M.Tech">
																									ME/M.Tech
																									<OPTION value=MCA>
																										MCA
																									</OPTION>
																									<OPTION value="MSc. Computer Science">
																										MSc. Computer Science
																									</OPTION>
																									<OPTION value="BSc. Computer Science/BCA">
																										BSc. Computer Science/BCA
																									</OPTION>
																					</SELECT>
																				</FONT>
																			</td>
																			<td width="25%" height="44"></td>
																		</tr>
																		<tr>
																			<td width="41%" height="44">
																				Branch
																				<font color="#AE0000">&nbsp;&nbsp;</font>
																			</td>
																			<td width="34%" height="44">
																				<SELECT name=branch size=1 tabIndex=19>
																					<OPTION selected value="">
																						Branch
																						<OPTION value=ift>
																							Information Technology
																							<OPTION value=cse>
																								Computer Science &amp; Engg.
																								<OPTION value=ece>
																									Electronics &amp; Comm. Engg.
																									<OPTION value=mca>
																										MCA
																										<OPTION value=oth>
																											Others
																										</OPTION>
																				</SELECT>
																			</td>
																			<td width="25%" height="44"></td>
																		</tr>
																		<tr>
																			<td width="41%" height="43">
																				Skills&nbsp;&nbsp;&nbsp;&nbsp;
																			</td>
																			<td width="34%" height="43">
																				<textarea id="skills" name="skills"
																					style="height: 28; width: 196" rows="1" cols="20"
																					tabIndex=20>
</textarea>
																			</td>
																			<td width="25%" height="43"></td>
																		</tr>
																		<tr>
																			<td width="41%" height="38">
																				Other Qualifications&nbsp;
																			</td>
																			<td width="34%" height="38">
																				<textarea id="o_qua" name="o_qualifications"
																					style="height: 30; width: 200" rows="1" cols="20"
																					tabIndex="21">
</textarea>
																			</td>
																			<td width="25%" height="38"></td>
																		</tr>
																		<tr>
																			<td width="41%" height="35">
																				Experience&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																			</td>
																			<td width="34%" height="35">
																				<INPUT name="experience" tabIndex=22 size="27">
																			</td>
																			<td width="25%" height="35"></td>
																		</tr>
																	</table>
																</center>
															</div>
															<p>
																<b>Educational&nbsp; Qualifications</b>
																<table border="0" cellpadding="0" cellspacing="0"
																	style="border-collapse: collapse" bordercolor="#111111"
																	width="564" id="AutoNumber3" height="172">
																	<tr>
																		<TD height="38" width="145">
																			<p align="center">
																				Qualification
																			</p>
																		</TD>
																		<TD height="38" width="178">
																			<p align="center">
																				&nbsp;University/Board
																			</p>
																		</TD>
																		<FONT color=#004080>
																			<TD height="38" width="161">
																				<p align="center">
																					&nbsp;
																		</FONT>
																		<font color="#000000">Year of Passing</font>
																		</p>
																		</TD>
																		<FONT color=#004080>
																			<TD height="38" width="72">
																				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																		</FONT> %
																		</TD>
																	</tr>
																	<tr>
																		<TD height="23" width="145">
																			<p align="left">
																				<FONT color=#ae0000><SELECT name=quali size=1
																						tabIndex=23>
																						<OPTION selected>
																							Post Graduate
																							<OPTION value="M.Tech/ME">
																								M.Tech/ME
																								<OPTION value=MCA>
																									MCA
																								</OPTION>
																								<OPTION value="MSc. Computer Science">
																									MSc. (CS)
																								</OPTION>
																								<option value="M.S">
																									M.S
																								</option>
																								<option value="MSC.(IT)">
																									MSC.(IT)
																								</option>
																								<option value="Others">
																									Others
																								</option>
																					</SELECT>
																				</FONT>
																			</p>
																		</TD>
																		<FONT color=#ae0000>
																			<TD height="23" width="178">
																				<p align="center">
																					<INPUT name="m_board" tabIndex=24 size="20">
																				</p>
																			</TD>
																			<TD height="23" width="161">
																				<p align="center">
																					<SELECT name="m_year" size=1 tabIndex=25>
																						<OPTION selected value="">
																							-Year-
																							<OPTION value=1990>
																								1990
																								<OPTION value=1991>
																									1991
																									<OPTION value=1992>
																										1992
																										<OPTION value=1993>
																											1993
																											<OPTION value=1994>
																												1994
																												<OPTION value=1995>
																													1995
																													<OPTION value=1996>
																														1996
																														<OPTION value=1997>
																															1997
																															<OPTION value=1998>
																																1998
																																<OPTION value=1999>
																																	1999
																																	<OPTION value=2000>
																																		2000
																																		<OPTION value="2001">
																																			2001
																																			<OPTION value=2002>
																																				2002
																																				<OPTION value=2003>
																																					2003
																																					<OPTION value=2004>
																																						2004
																																					</OPTION>
																																					<OPTION value=2005>
																																						2005
																																					</OPTION>
																																					<OPTION value=2006>
																																						2006
																																					</OPTION>
																																					<OPTION value=2007>
																																						2007
																																					</OPTION>
																																					<OPTION value=2008>
																																						2008
																																					</OPTION>
																																					<OPTION value=2009>
																																						2009
																																					</OPTION>
																																					<OPTION value=2010>
																																						2010
																																					</OPTION>
																																					<OPTION value=2011>
																																						2011
																																					</OPTION>
																																					<OPTION value=2012>
																																						2012
																																					</OPTION>
																																					<OPTION value=2013>
																																						2013
																																					</OPTION>
																																					<OPTION value=2014>
																																						2014
																																					</OPTION>
																																					<OPTION value=2015>
																																						2015
																																					</OPTION>
																																					<OPTION value=2016>
																																						2016
																																					</OPTION>
																					</SELECT>
																				</p>
																			</TD>
																			<TD height="23" width="72">
																				<p align="center">
																					<INPUT name="m_per" size=6 tabIndex=26>
																		</FONT>
																		</p>
																		</TD>
																	</tr>
																	<tr>
																		<TD height="23" width="145">
																			<FONT color=#ae0000><SELECT name=degree size=1
																					tabIndex=27>
																					<OPTION selected>
																						Under Graduate
																						<OPTION value="BE/B.Tech">
																							BE/B.Tech
																							<OPTION value="BSc. CS)/BCA">
																								BSc.(CS)/BCA
																							</OPTION>
																							<option value="Others">
																								Others
																							</option>
																				</SELECT>
																			</FONT>
																		</TD>
																		<FONT color=#ae0000>
																			<TD height="23" width="178">
																				<p align="center">
																					<INPUT name="i_board" tabIndex=28 size="20">
																				</p>
																			</TD>
																			<TD height="23" width="161">
																				<p align="center">
																					<FONT color=#ae0000><SELECT name="i_year"
																							size=1 tabIndex=29>
																							<OPTION selected value="">
																								-Year-
																								<OPTION value=1990>
																									1990
																									<OPTION value=1991>
																										1991
																										<OPTION value=1992>
																											1992
																											<OPTION value=1993>
																												1993
																												<OPTION value=1994>
																													1994
																													<OPTION value=1995>
																														1995
																														<OPTION value=1996>
																															1996
																															<OPTION value=1997>
																																1997
																																<OPTION value=1998>
																																	1998
																																	<OPTION value=1999>
																																		1999
																																		<OPTION value=2000>
																																			2000
																																			<OPTION value="2001">
																																				2001
																																				<OPTION value=2002>
																																					2002
																																					<OPTION value=2003>
																																						2003
																																						<OPTION value=2004>
																																							2004
																																						</OPTION>
																																						<OPTION value=2005>
																																							2005
																																						</OPTION>
																																						<OPTION value=2006>
																																							2006
																																						</OPTION>
																																						<OPTION value=2007>
																																							2007
																																						</OPTION>
																																						<OPTION value=2008>
																																							2008
																																						</OPTION>
																																						<OPTION value=2009>
																																							2009
																																						</OPTION>
																																						<OPTION value=2010>
																																							2010
																																						</OPTION>
																																						<OPTION value=2011>
																																							2011
																																						</OPTION>
																																						<OPTION value=2012>
																																							2012
																																						</OPTION>
																																						<OPTION value=2013>
																																							2013
																																						</OPTION>
																																						<OPTION value=2014>
																																							2014
																																						</OPTION>
																																						<OPTION value=2015>
																																							2015
																																						</OPTION>
																																						<OPTION value=2016>
																																							2016
																																						</OPTION>
																						</SELECT>
																					</FONT>
																				</p>
																			</TD>
																			<TD height="23" width="72">
																				<p align="center">
																					<INPUT name="i_per" size=6 tabIndex=30>
																				</p>
																			</TD>
																		</FONT>
																	</tr>
																	<tr>
																		<TD height="22" width="145">
																			<FONT color=#ae0000><SELECT name=higher size=1
																					tabIndex=31>
																					<OPTION selected value="Higher Secondary">
																						Higher Secondary
																				</SELECT>
																			</FONT>
																		</TD>
																		<FONT color=#ae0000>
																			<TD height="22" width="178">
																				<p align="center">
																					<INPUT name="u_university" tabIndex=32 size="20">
																				</p>
																			</TD>
																			<TD height="22" width="161">
																				<p align="center">
																					<FONT color=#ae0000><SELECT name="u_year"
																							size=1 tabIndex=33>
																							<OPTION selected value="">
																								-Year-
																								<OPTION value=1990>
																									1990
																									<OPTION value=1991>
																										1991
																										<OPTION value=1992>
																											1992
																											<OPTION value=1993>
																												1993
																												<OPTION value=1994>
																													1994
																													<OPTION value=1995>
																														1995
																														<OPTION value=1996>
																															1996
																															<OPTION value=1997>
																																1997
																																<OPTION value=1998>
																																	1998
																																	<OPTION value=1999>
																																		1999
																																		<OPTION value=2000>
																																			2000
																																			<OPTION value="2001">
																																				2001
																																				<OPTION value=2002>
																																					2002
																																					<OPTION value=2003>
																																						2003
																																						<OPTION value=2004>
																																							2004
																																						</OPTION>
																																						<OPTION value=2005>
																																							2005
																																						</OPTION>
																																						<OPTION value=2006>
																																							2006
																																						</OPTION>
																																						<OPTION value=2007>
																																							2007
																																						</OPTION>
																																						<OPTION value=2008>
																																							2008
																																						</OPTION>
																																						<OPTION value=2009>
																																							2009
																																						</OPTION>
																																						<OPTION value=2010>
																																							2010
																																						</OPTION>
																																						<OPTION value=2011>
																																							2011
																																						</OPTION>
																																						<OPTION value=2012>
																																							2012
																																						</OPTION>
																																						<OPTION value=2013>
																																							2013
																																						</OPTION>
																																						<OPTION value=2014>
																																							2014
																																						</OPTION>
																																						<OPTION value=2015>
																																							2015
																																						</OPTION>
																																						<OPTION value=2016>
																																							2016
																																						</OPTION>
																						</SELECT>
																					</FONT>
																				</p>
																			</TD>
																			<TD height="22" width="72">
																				<p align="center">
																					<INPUT name="u_per" size=6 tabIndex=34>
																				</p>
																			</TD>
																		</FONT>
																	</tr>
																	<tr>
																		<TD height="25" width="145">
																			<FONT color=#ae0000><SELECT name=ssc size=1
																					tabIndex=35>
																					<OPTION selected value="ssc">
																						S.S.C
																				</SELECT>
																			</FONT>
																		</TD>
																		<FONT color=#ae0000>
																			<TD height="25" width="178">
																				<p align="center">
																					<INPUT name="p_university" tabIndex=36 size="20">
																				</p>
																			</TD>
																			<TD height="25" width="161">
																				<p align="center">
																					<FONT color=#ae0000><SELECT name="p_year"
																							size=1 tabIndex=37>
																							<OPTION selected value="">
																								-Year-
																								<OPTION value=1990>
																									1990
																									<OPTION value=1991>
																										1991
																										<OPTION value=1992>
																											1992
																											<OPTION value=1993>
																												1993
																												<OPTION value=1994>
																													1994
																													<OPTION value=1995>
																														1995
																														<OPTION value=1996>
																															1996
																															<OPTION value=1997>
																																1997
																																<OPTION value=1998>
																																	1998
																																	<OPTION value=1999>
																																		1999
																																		<OPTION value=2000>
																																			2000
																																			<OPTION value="2001">
																																				2001
																																				<OPTION value=2002>
																																					2002
																																					<OPTION value=2003>
																																						2003
																																						<OPTION value=2004>
																																							2004
																																						</OPTION>
																																						<OPTION value=2005>
																																							2005
																																						</OPTION>
																																						<OPTION value=2006>
																																							2006
																																						</OPTION>
																																						<OPTION value=2007>
																																							2007
																																						</OPTION>
																																						<OPTION value=2008>
																																							2008
																																						</OPTION>
																																						<OPTION value=2009>
																																							2009
																																						</OPTION>
																																						<OPTION value=2010>
																																							2010
																																						</OPTION>
																																						<OPTION value=2011>
																																							2011
																																						</OPTION>
																																						<OPTION value=2012>
																																							2012
																																						</OPTION>
																																						<OPTION value=2013>
																																							2013
																																						</OPTION>
																																						<OPTION value=2014>
																																							2014
																																						</OPTION>
																																						<OPTION value=2015>
																																							2015
																																						</OPTION>
																																						<OPTION value=2016>
																																							2016
																																						</OPTION>
																						</SELECT>
																					</FONT>
																				</p>
																			</TD>
																			<TD height="25" width="72">
																				<p align="center">
																					<INPUT name="p_per" size=6 tabIndex=38>
																				</p>
																			</TD>
																		</FONT>
																	</tr>
																</table>
														</td>
													</tr>
													<tr>
														<td width="39" height="228">
															&nbsp;
														</td>
														<td width="567" height="228">
															<TABLE border=0 cellPadding=0 cellSpacing=0
																style="LEFT: 527px; TOP: 1709px" width="515" height="40">
																<br>
																<b>Login Details</b>
																<TR>
																	<TD width="284" height="28"></TD>
																	<TD width="367" height="28"></TD>
																</TR>
																<TR>
																	<TD width="284" height="23">
																		Enter Your Password
																	</TD>
																	<TD width="367" height="23">
																		<INPUT name=passwd tabIndex=39 type=password size="20">
																	</TD>
																</TR>
																<TR>
																	<TD width="284" height="26">
																		Re-Type Your Password
																	</TD>
																	<TD width="367" height="26">
																		<INPUT name="retypepassword" tabIndex=40 type=password
																			size="20">
																	</TD>
																</TR>
																<tr>
																	<TD width="284" height="2">
																		Select Question
																	</TD>
																	<TD width="525" height="2">
																		<select id="select1" name="question"
																			style="HEIGHT: 22px; WIDTH: 241px" tabIndex=41
																			size="1">
																			<OPTION selected value="">
																				Select A Question
																				<OPTION
																					value="Your Favourite Childwood Hero/Heroine">
																					Your Favourite Childwood Hero/Heroine
																					<OPTION value="Your Favourite Food
">
																						Your Favourite Food
																						<option value="Your Favourite Movie">
																							Your Favourite Movie
																							<option value="You Love to">
																								You Love to
																							</OPTION>
																		</select>
																	</TD>
																</tr>
																<TR>
																	<TD width="284" height="28">
																		Answer
																	</TD>
																	<TD width="367" height="28">
																		<INPUT name=answer tabIndex=42 size="20">
																	</TD>
																</TR>
															</TABLE>
															<p>
																<FONT color=#004080>
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <INPUT
																		name=submmit tabIndex=43 type=Submit value=Submit>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	<INPUT name=reset style="LEFT: 386px; TOP: 1893px"
																		tabIndex=44 type=reset value=Reset>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	<a href="#top" style="text-decoration: none">Top</a>
																</FONT>
														</td>
													</tr>
											</table>
											<font color="#6699CC">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												* Your Login Id Provides after Registration Only&nbsp;*</font>
									</TD>
								</TBODY>
							</TABLE>
						</TD>
					</TR>


				</form>
			</TBODY>
		</TABLE>
	</BODY>
</HTML>


