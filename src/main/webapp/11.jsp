<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	//获取前页的答案
	String p82t2 = request.getParameter("p82t2");
	String p83t5 = request.getParameter("p83t5");
	String p84t8 = request.getParameter("p84t8");
	String p85t2 = request.getParameter("p85t2");
	String p86t2 = request.getParameter("p86t2");
	String p87t1 = request.getParameter("p87t1");
	String p88t5 = request.getParameter("p88t5");
	String p89t2 = request.getParameter("p89t2");
	String p90t2 = request.getParameter("p90t2");
	
	//获取题数并记数
	session.setAttribute("pt1", Integer.valueOf(session.getAttribute("pt1").toString()) + 1);
	session.setAttribute("pt2", Integer.valueOf(session.getAttribute("pt2").toString()) + 5);
	session.setAttribute("pt3", Integer.valueOf(session.getAttribute("pt3").toString()) + 0);
	session.setAttribute("pt4", Integer.valueOf(session.getAttribute("pt4").toString()) + 0);
	session.setAttribute("pt5", Integer.valueOf(session.getAttribute("pt5").toString()) + 2);
	session.setAttribute("pt6", Integer.valueOf(session.getAttribute("pt6").toString()) + 0);
	session.setAttribute("pt7", Integer.valueOf(session.getAttribute("pt7").toString()) + 0);
	session.setAttribute("pt8", Integer.valueOf(session.getAttribute("pt8").toString()) + 1);
	session.setAttribute("pt9", Integer.valueOf(session.getAttribute("pt9").toString()) + 0);
	
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
	if (p82t2.equals("1"))
		ct2 = ct2 + 1;
	if (p83t5.equals("1"))
		ct5 = ct5 + 1;
	if (p84t8.equals("1"))
		ct8 = ct8 + 1;
	if (p85t2.equals("1"))
		ct2 = ct2 + 1;
	if (p86t2.equals("1"))
		ct2 = ct2 + 1;
	if (p87t1.equals("1"))
		ct1 = ct1 + 1;
	if (p88t5.equals("1"))
		ct5 = ct5 + 1;
	if (p89t2.equals("1"))
		ct2 = ct2 + 1;
	if (p90t2.equals("1"))
		ct2 = ct2 + 1;
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
	System.out.println("第82题的答案是：" + p82t2);
	System.out.println("第83题的答案是：" + p83t5);
	System.out.println("第84题的答案是：" + p84t8);
	System.out.println("第85题的答案是：" + p85t2);
	System.out.println("第86题的答案是：" + p86t2);
	System.out.println("第87题的答案是：" + p87t1);
	System.out.println("第88题的答案是：" + p88t5);
	System.out.println("第89题的答案是：" + p89t2);
	System.out.println("第90题的答案是：" + p90t2);
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
<title>九宫人格测试11/12</title>
</head>
<body>
	<form action="12.jsp" method=post>
		<table>
			<TR>
				<TD>91.我不但不会说甜⾔蜜语，⽽且别⼈会觉得我嘮叨不停<br>
					<INPUT TYPE="RADIO" NAME="p91t1"	VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p91t1" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>92.我常担⼼自有别剥夺，因此不爱做承诺<br>
					<INPUT TYPE="RADIO" NAME="p92t7" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p92t7" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>93.我喜欢告诉别⼈我所做的事和所知的⼀切<br>
					<INPUT TYPE="RADIO" NAME="p93t3" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p93t3" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>94.我很容易认同别⼈为我所做的事和所指的⼀切<br>
					<INPUT TYPE="RADIO"	NAME="p94t9" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p94t9" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>95.我要求光明正⼤，为此不惜与⼈发⽣衝突<br>
					<INPUT TYPE="RADIO"	NAME="p95t8" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p95t8" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>96.我很有正义感，有时会支持不利的⼀⽅<br>
					<INPUT TYPE="RADIO" NAME="p96t8" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p96t8" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>97.我注重小节⽽效率不⾼<br>
					<INPUT TYPE="RADIO" NAME="p97t1" VALUE="1">是
					<INPUT TYPE="RADIO"	NAME="p97t1" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>98.我很容易感到沮丧和麻⽊风多於愤怒<br>
					<INPUT TYPE="RADIO" NAME="p98t9" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p98t9" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>99.我不喜欢那些侵略性或过度情绪化的⼈<br>
					<INPUT TYPE="RADIO"	NAME="p99t5" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p99t5" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<td><input type="submit" value="下一页"></td>
			</TR>
		</table>
	</form>
</body>
</html>