<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	//获取前页的答案
	String p37t6 = request.getParameter("p37t6");
	String p38t3 = request.getParameter("p38t3");
	String p39t9 = request.getParameter("p39t9");
	String p40t8 = request.getParameter("p40t8");
	String p41t9 = request.getParameter("p41t9");
	String p42t5 = request.getParameter("p42t5");
	String p43t5 = request.getParameter("p43t5");
	String p44t8 = request.getParameter("p44t8");
	String p45t6 = request.getParameter("p45t6");
	
	//获取题数并记数
	session.setAttribute("pt1", Integer.valueOf(session.getAttribute("pt1").toString()) + 0);
	session.setAttribute("pt2", Integer.valueOf(session.getAttribute("pt2").toString()) + 0);
	session.setAttribute("pt3", Integer.valueOf(session.getAttribute("pt3").toString()) + 1);
	session.setAttribute("pt4", Integer.valueOf(session.getAttribute("pt4").toString()) + 0);
	session.setAttribute("pt5", Integer.valueOf(session.getAttribute("pt5").toString()) + 2);
	session.setAttribute("pt6", Integer.valueOf(session.getAttribute("pt6").toString()) + 2);
	session.setAttribute("pt7", Integer.valueOf(session.getAttribute("pt7").toString()) + 0);
	session.setAttribute("pt8", Integer.valueOf(session.getAttribute("pt8").toString()) + 2);
	session.setAttribute("pt9", Integer.valueOf(session.getAttribute("pt9").toString()) + 2);
	
	//获取True题数并记数
	int ct1 = Integer.valueOf(session.getAttribute("ct1").toString());
	int ct2 = Integer.valueOf(session.getAttribute("ct2").toString());
	int ct3 = Integer.valueOf(session.getAttribute("ct3").toString());
	int ct4 = Integer.valueOf(session.getAttribute("ct4").toString());
	int ct5 = Integer.valueOf(session.getAttribute("ct5").toString());
	int ct6 = Integer.valueOf(session.getAttribute("ct6").toString());
	int ct7 = Integer.valueOf(session.getAttribute("ct7").toString());
	int ct8 = Integer.valueOf(session.getAttribute("ct8").toString());
	int ct9 = Integer.valueOf(session.getAttribute("ct9").toString());
	if (p37t6.equals("1"))
		ct6 = ct6 + 1;
	if (p38t3.equals("1"))
		ct3 = ct3 + 1;
	if (p39t9.equals("1"))
		ct9 = ct9 + 1;
	if (p40t8.equals("1"))
		ct8 = ct8 + 1;
	if (p41t9.equals("1"))
		ct9 = ct9 + 1;
	if (p42t5.equals("1"))
		ct5 = ct5 + 1;
	if (p43t5.equals("1"))
		ct5 = ct5 + 1;
	if (p44t8.equals("1"))
		ct8 = ct8 + 1;
	if (p45t6.equals("1"))
		ct6 = ct6 + 1;
	session.setAttribute("ct1", ct1);
	session.setAttribute("ct2", ct2);
	session.setAttribute("ct3", ct3);
	session.setAttribute("ct4", ct4);
	session.setAttribute("ct5", ct5);
	session.setAttribute("ct6", ct6);
	session.setAttribute("ct7", ct7);
	session.setAttribute("ct8", ct8);
	session.setAttribute("ct9", ct9);
	
	System.out.println("答题者：" + session.getAttribute("name"));
	System.out.println("答题者年龄：" + session.getAttribute("age"));
	System.out.println("第37题的答案是：" + p37t6);
	System.out.println("第38题的答案是：" + p38t3);
	System.out.println("第39题的答案是：" + p39t9);
	System.out.println("第40题的答案是：" + p40t8);
	System.out.println("第41题的答案是：" + p41t9);
	System.out.println("第42题的答案是：" + p42t5);
	System.out.println("第43题的答案是：" + p43t5);
	System.out.println("第44题的答案是：" + p44t8);
	System.out.println("第45题的答案是：" + p45t6);
	System.out.println("T1答案为True的数：" + session.getAttribute("ct1") + "/" + session.getAttribute("pt1"));
	System.out.println("T2答案为True的数：" + session.getAttribute("ct2") + "/" + session.getAttribute("pt2"));
	System.out.println("T3答案为True的数：" + session.getAttribute("ct3") + "/" + session.getAttribute("pt3"));
	System.out.println("T4答案为True的数：" + session.getAttribute("ct4") + "/" + session.getAttribute("pt4"));
	System.out.println("T5答案为True的数：" + session.getAttribute("ct5") + "/" + session.getAttribute("pt5"));
	System.out.println("T6答案为True的数：" + session.getAttribute("ct6") + "/" + session.getAttribute("pt6"));
	System.out.println("T7答案为True的数：" + session.getAttribute("ct7") + "/" + session.getAttribute("pt7"));
	System.out.println("T8答案为True的数：" + session.getAttribute("ct8") + "/" + session.getAttribute("pt8"));
	System.out.println("T9答案为True的数：" + session.getAttribute("ct9") + "/" + session.getAttribute("pt9"));
	System.out.println("============================");
%>
<html>
<head>
<title>九宫人格测试6/12</title>
</head>
<body>
	<form action="7.jsp" method=post>
		<table>
			<TR>
				<TD>46.我常常保持警觉<br>
					<INPUT TYPE="RADIO" NAME="p46t6"	VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p46t6" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>47.我不喜欢要对⼈尽义务的感觉<br>
					<INPUT TYPE="RADIO" NAME="p47t5" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p47t5" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>48.如果不能完美地表态，我寧愿不说<br>
					<INPUT TYPE="RADIO"	NAME="p48t5" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p48t5" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>49.我的计划比我实际完成的还要多<br>
					<INPUT TYPE="RADIO" NAME="p49t7" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p49t7" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>50.我野⼼勃勃，喜欢挑战和登上⾼峰的经验<br>
					<INPUT TYPE="RADIO"	NAME="p50t8" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p50t8" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>51.我倾向於独断专⾏并自⼰解决问题<br>
					<INPUT TYPE="RADIO" NAME="p51t5" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p51t5" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>52.我很多时候感到被遗弃<br>
					<INPUT TYPE="RADIO" NAME="p52t4" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p52t4" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>53.我常常表现得⼗分忧鬱的样⼦，充满痛苦⽽且内向<br>
					<INPUT TYPE="RADIO"	NAME="p53t4" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p53t4" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>54.初见陌⽣⼈时，我会表现得很冷漠、⾼傲<br>
					<INPUT TYPE="RADIO"	NAME="p54t4" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p54t4" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<td><input type="submit" value="下一页"></td>
			</TR>
		</table>
	</form>
</body>
</html>