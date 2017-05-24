<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	//获取前页的答案
	String p73t1 = request.getParameter("p73t1");
	String p74t3 = request.getParameter("p74t3");
	String p75t6 = request.getParameter("p75t6");
	String p76t8 = request.getParameter("p76t8");
	String p77t3 = request.getParameter("p77t3");
	String p78t7 = request.getParameter("p78t7");
	String p79t2 = request.getParameter("p79t2");
	String p80t3 = request.getParameter("p80t3");
	String p81t1 = request.getParameter("p81t1");
	
	//获取题数并记数
	session.setAttribute("pt1", Integer.valueOf(session.getAttribute("pt1").toString()) + 2);
	session.setAttribute("pt2", Integer.valueOf(session.getAttribute("pt2").toString()) + 1);
	session.setAttribute("pt3", Integer.valueOf(session.getAttribute("pt3").toString()) + 3);
	session.setAttribute("pt4", Integer.valueOf(session.getAttribute("pt4").toString()) + 0);
	session.setAttribute("pt5", Integer.valueOf(session.getAttribute("pt5").toString()) + 0);
	session.setAttribute("pt6", Integer.valueOf(session.getAttribute("pt6").toString()) + 1);
	session.setAttribute("pt7", Integer.valueOf(session.getAttribute("pt7").toString()) + 1);
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
	if (p73t1.equals("1"))
		ct1 = ct1 + 1;
	if (p74t3.equals("1"))
		ct3 = ct3+ 1;
	if (p75t6.equals("1"))
		ct6 = ct6 + 1;
	if (p76t8.equals("1"))
		ct8 = ct8 + 1;
	if (p77t3.equals("1"))
		ct3 = ct3 + 1;
	if (p78t7.equals("1"))
		ct7 = ct7 + 1;
	if (p79t2.equals("1"))
		ct2 = ct2 + 1;
	if (p80t3.equals("1"))
		ct3 = ct3 + 1;
	if (p81t1.equals("1"))
		ct1 = ct1 + 1;
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
	System.out.println("第73题的答案是：" + p73t1);
	System.out.println("第74题的答案是：" + p74t3);
	System.out.println("第75题的答案是：" + p75t6);
	System.out.println("第76题的答案是：" + p76t8);
	System.out.println("第77题的答案是：" + p77t3);
	System.out.println("第78题的答案是：" + p78t7);
	System.out.println("第79题的答案是：" + p79t2);
	System.out.println("第80题的答案是：" + p80t3);
	System.out.println("第81题的答案是：" + p81t1);
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
<title>九宫人格测试10/12</title>
</head>
<body>
	<form action="11.jsp" method=post>
		<table>
			<TR>
				<TD>82.我待⼈热情⽽有耐性<br>
					<INPUT TYPE="RADIO" NAME="p82t2"	VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p82t2" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>83.在⼈群中我时常感到害羞和不安<br>
					<INPUT TYPE="RADIO" NAME="p83t5" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p83t5" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>84.我喜欢效率，讨厌拖泥带⽔<br>
					<INPUT TYPE="RADIO" NAME="p84t8" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p84t8" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>85.帮助别⼈达⾄快乐和成功是我重要的成就<br>
					<INPUT TYPE="RADIO" NAME="p85t2" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p85t2" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>86.付出时，别⼈若不欣然接受，我便会有挫折感<br>
					<INPUT TYPE="RADIO"	NAME="p86t2" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p86t2" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>87.我的肢体硬邦邦的，不习惯别⼈热情的付出<br>
					<INPUT TYPE="RADIO" NAME="p87t1" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p87t1" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>88.我对⼤部分的社交集会不太有兴趣，除非那是我熟识的和喜爱 的⼈<br>
					<INPUT TYPE="RADIO" NAME="p88t5" VALUE="1">是
					<INPUT TYPE="RADIO"	NAME="p88t5" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>89.很多时候我会有强烈的寂寞感<br>
					<INPUT TYPE="RADIO" NAME="p89t2" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p89t2" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>90.⼈们都很乐意向我表白他们所遭遇的问题<br>
					<INPUT TYPE="RADIO"	NAME="p90t2" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p90t2" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<td><input type="submit" value="下一页"></td>
			</TR>
		</table>
	</form>
</body>
</html>