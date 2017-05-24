<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	//获取前页的答案
	String p91t1 = request.getParameter("p91t1");
	String p92t7 = request.getParameter("p92t7");
	String p93t3 = request.getParameter("p93t3");
	String p94t9 = request.getParameter("p94t9");
	String p95t8 = request.getParameter("p95t8");
	String p96t8 = request.getParameter("p96t8");
	String p97t1 = request.getParameter("p97t1");
	String p98t9 = request.getParameter("p98t9");
	String p99t5 = request.getParameter("p99t5");
	
	//获取题数并记数
	session.setAttribute("pt1", Integer.valueOf(session.getAttribute("pt1").toString()) + 2);
	session.setAttribute("pt2", Integer.valueOf(session.getAttribute("pt2").toString()) + 0);
	session.setAttribute("pt3", Integer.valueOf(session.getAttribute("pt3").toString()) + 1);
	session.setAttribute("pt4", Integer.valueOf(session.getAttribute("pt4").toString()) + 0);
	session.setAttribute("pt5", Integer.valueOf(session.getAttribute("pt5").toString()) + 1);
	session.setAttribute("pt6", Integer.valueOf(session.getAttribute("pt6").toString()) + 0);
	session.setAttribute("pt7", Integer.valueOf(session.getAttribute("pt7").toString()) + 1);
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
	if (p91t1.equals("1"))
		ct1 = ct1 + 1;
	if (p92t7.equals("1"))
		ct7 = ct7 + 1;
	if (p93t3.equals("1"))
		ct3 = ct3 + 1;
	if (p94t9.equals("1"))
		ct9 = ct9 + 1;
	if (p95t8.equals("1"))
		ct8 = ct8 + 1;
	if (p96t8.equals("1"))
		ct8 = ct8 + 1;
	if (p97t1.equals("1"))
		ct1 = ct1 + 1;
	if (p98t9.equals("1"))
		ct9 = ct9 + 1;
	if (p99t5.equals("1"))
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
	System.out.println("第91题的答案是：" + p91t1);
	System.out.println("第92题的答案是：" + p92t7);
	System.out.println("第93题的答案是：" + p93t3);
	System.out.println("第94题的答案是：" + p94t9);
	System.out.println("第95题的答案是：" + p95t8);
	System.out.println("第96题的答案是：" + p96t8);
	System.out.println("第97题的答案是：" + p97t1);
	System.out.println("第98题的答案是：" + p98t9);
	System.out.println("第99题的答案是：" + p99t5);
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
<title>九宫人格测试12/12</title>
</head>
<body>
	<form action="result" method=post>
		<table>
			<TR>
				<TD>100.我非常情绪化，⼀天的喜怒哀乐多变<br>
					<INPUT TYPE="RADIO"	NAME="p100t4" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p100t4"	VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>101.我不想别⼈知道我的感受与想法，除非我告诉他们<br>
					<INPUT TYPE="RADIO"	NAME="p101t5" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p101t5" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>102.我喜欢刺激和紧张的关係，⽽不是稳定和依赖的关係<br>
					<INPUT TYPE="RADIO"	NAME="p102t1" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p102t1" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>103.我很少用⼼去听别⼈的⼼情，只喜欢说说俏皮话和笑话<br>
					<INPUT TYPE="RADIO"	NAME="p103t7" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p103t7" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>104.我是循规蹈矩的⼈，秩序对我⼗分有意义<br>
					<INPUT TYPE="RADIO"	NAME="p104t1" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p104t1" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>105.我很难找到⼀种我真正感到被爱的关係<br>
					<INPUT TYPE="RADIO"	NAME="p105t4" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p105t4" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>106.假如我想要结束⼀段关係，我不是直接告诉对⽅，就是激怒他 来让他离开我<br>
					<INPUT TYPE="RADIO" NAME="p106t1" VALUE="1">是
					<INPUT TYPE="RADIO"	NAME="p106t1" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>107.我温和平静，不自夸，不爱与⼈竞争<br>
					<INPUT TYPE="RADIO"	NAME="p107t9" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p107t9" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>108.我有时善良可爱，有时又粗野暴躁，很难捉摸<br>
					<INPUT TYPE="RADIO" NAME="p108t9" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p108t9" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<td><input type="submit" value="完成"></td>
			</TR>
		</table>
	</form>
</body>
</html>