<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	int ct1 = 0, ct2 = 0, ct3 = 0, ct4 = 0, ct5 = 0, ct6 = 0, ct7 = 0, ct8 = 0, ct9 = 0, ct10 = 0;
	int pt1 = 0, pt2 = 0, pt3 = 0, pt4 = 0, pt5 = 0, pt6 = 0, pt7 = 0, pt8 = 0, pt9 = 0, pt10 = 0;

	//获取前页的答案
	String p1t9 = request.getParameter("p1t9");
	String p2t1 = request.getParameter("p2t1");
	String p3t5 = request.getParameter("p3t5");
	String p4t7 = request.getParameter("p4t7");
	String p5t8 = request.getParameter("p5t8");
	String p6t2 = request.getParameter("p6t2");
	String p7t4 = request.getParameter("p7t4");
	String p8t2 = request.getParameter("p8t2");
	String p9t6 = request.getParameter("p9t6");

	//题数记数
	session.setAttribute("pt1", pt1 + 1);
	session.setAttribute("pt2", pt2 + 2);
	session.setAttribute("pt3", pt3 + 0);
	session.setAttribute("pt4", pt4 + 1);
	session.setAttribute("pt5", pt5 + 1);
	session.setAttribute("pt6", pt6 + 1);
	session.setAttribute("pt7", pt7 + 1);
	session.setAttribute("pt8", pt8 + 1);
	session.setAttribute("pt9", pt9 + 1);

	//True题数记数
	if (p1t9.equals("1"))
		ct9 = ct9 + 1;
	if (p2t1.equals("1"))
		ct1 = ct1 + 1;
	if (p3t5.equals("1"))
		ct5 = ct5 + 1;
	if (p4t7.equals("1"))
		ct7 = ct7 + 1;
	if (p5t8.equals("1"))
		ct8 = ct8 + 1;
	if (p6t2.equals("1"))
		ct2 = ct2 + 1;
	if (p7t4.equals("1"))
		ct4 = ct4 + 1;
	if (p8t2.equals("1"))
		ct2 = ct2 + 1;
	if (p9t6.equals("1"))
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
	System.out.println("第1题的答案是：" + p1t9);
	System.out.println("第2题的答案是：" + p2t1);
	System.out.println("第3题的答案是：" + p3t5);
	System.out.println("第4题的答案是：" + p4t7);
	System.out.println("第5题的答案是：" + p5t8);
	System.out.println("第6题的答案是：" + p6t2);
	System.out.println("第7题的答案是：" + p7t4);
	System.out.println("第8题的答案是：" + p8t2);
	System.out.println("第9题的答案是：" + p9t6);
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
<title>九宫人格测试2/12</title>
</head>
<body>
	<form action="3.jsp" method=post>
		<table>
			<TR>
				<TD>10.我常常试探或考验朋友、伴侣的忠诚<br>
					<INPUT TYPE="RADIO" NAME="p10t6" VALUE="1">是 
					<INPUT TYPE="RADIO" NAME="p10t6" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>11.我看不起那些不像我⼀样坚强的⼈，有时我会用种种⽅式羞辱 他们<br>
					<INPUT TYPE="RADIO" NAME="p11t8" VALUE="1">是 
					<INPUT TYPE="RADIO" NAME="p11t8" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>12.身体上的舒服是对我非常重要<br>
					<INPUT TYPE="RADIO" NAME="p12t9" VALUE="1">是 
					<INPUT TYPE="RADIO" NAME="p12t9" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>13.我能触碰⽣活中的悲伤和不幸<br>
					<INPUT TYPE="RADIO" NAME="p13t4" VALUE="1">是
					 <INPUT TYPE="RADIO" NAME="p13t4" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>14.别⼈不能完成他的分内事，会令我失望和愤怒<br>
					<INPUT TYPE="RADIO"	NAME="p14t1" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p14t1" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>15.我时常拖延问题，不去解决<br>
					<INPUT TYPE="RADIO" NAME="p15t9" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p15t9" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>16.我喜欢戏剧性，多姿多彩的⽣活<br>
					<INPUT TYPE="RADIO" NAME="p16t7" VALUE="1">是 
					<INPUT TYPE="RADIO" NAME="p16t7" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>17.我认为自⼰非常不完善<br>
					<INPUT TYPE="RADIO" NAME="p17t4" VALUE="1">是 
					<INPUT TYPE="RADIO" NAME="p17t4" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>18.我对感官的需求特别强烈，喜欢美食、服装、身体的触觉刺激， 并纵情享乐<br>
					<INPUT TYPE="RADIO" NAME="p18t7" VALUE="1">是 
					<INPUT TYPE="RADIO"	NAME="p18t7" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<td><input type="submit" value="下一页"></td>
			</TR>
		</table>
	</form>
</body>
</html>