<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	//获取前页的答案
	String p64t4 = request.getParameter("p64t4");
	String p65t3 = request.getParameter("p65t3");
	String p66t8 = request.getParameter("p66t8");
	String p67t3 = request.getParameter("p67t3");
	String p68t6 = request.getParameter("p68t6");
	String p69t2 = request.getParameter("p69t2");
	String p70t3 = request.getParameter("p70t3");
	String p71t2 = request.getParameter("p71t2");
	String p72t3 = request.getParameter("p72t3");
	
	//获取题数并记数
	session.setAttribute("pt1", Integer.valueOf(session.getAttribute("pt1").toString()) + 0);
	session.setAttribute("pt2", Integer.valueOf(session.getAttribute("pt2").toString()) + 2);
	session.setAttribute("pt3", Integer.valueOf(session.getAttribute("pt3").toString()) + 4);
	session.setAttribute("pt4", Integer.valueOf(session.getAttribute("pt4").toString()) + 1);
	session.setAttribute("pt5", Integer.valueOf(session.getAttribute("pt5").toString()) + 0);
	session.setAttribute("pt6", Integer.valueOf(session.getAttribute("pt6").toString()) + 1);
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
	if (p64t4.equals("1"))
		ct4 = ct4 + 1;
	if (p65t3.equals("1"))
		ct3 = ct3 + 1;
	if (p66t8.equals("1"))
		ct8 = ct8 + 1;
	if (p67t3.equals("1"))
		ct3 = ct3 + 1;
	if (p68t6.equals("1"))
		ct6 = ct6 + 1;
	if (p69t2.equals("1"))
		ct2 = ct2 + 1;
	if (p70t3.equals("1"))
		ct3 = ct3 + 1;
	if (p71t2.equals("1"))
		ct2 = ct2 + 1;
	if (p72t3.equals("1"))
		ct3 = ct3 + 1;
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
	System.out.println("第64题的答案是：" + p64t4);
	System.out.println("第65题的答案是：" + p65t3);
	System.out.println("第66题的答案是：" + p66t8);
	System.out.println("第67题的答案是：" + p67t3);
	System.out.println("第68题的答案是：" + p68t6);
	System.out.println("第69题的答案是：" + p69t2);
	System.out.println("第70题的答案是：" + p70t3);
	System.out.println("第71题的答案是：" + p71t2);
	System.out.println("第72题的答案是：" + p72t3);
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
<title>九宫人格测试9/12</title>
</head>
<body>
	<form action="10.jsp" method=post>
		<table>
			<TR>
				<TD>73.我对别⼈做的事情总是不放⼼，批评⼀番后，自⼰会动⼿再做<br>
					<INPUT TYPE="RADIO"	NAME="p73t1" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p73t1"	VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>74.别⼈会说我常常带著面具做⼈<br>
					<INPUT TYPE="RADIO" NAME="p74t3" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p74t3" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>75.有时候我会激怒对⽅，引来莫名的吵架，其实我是想试探对⽅爱 不爱我<br>
					<INPUT TYPE="RADIO" NAME="p75t6" VALUE="1">是
					<INPUT TYPE="RADIO"	NAME="p75t6" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>76.我会极⼒保护我所爱的⼈<br>
					<INPUT TYPE="RADIO" NAME="p76t8" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p76t8" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>77.我常常刻意保持兴奋的情绪<br>
					<INPUT TYPE="RADIO" NAME="p77t3" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p77t3" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>78.我只喜欢与有趣的⼈为友，对⼀些闷蛋却懒得交往，即使他们看 起来很有深度<br>
					<INPUT TYPE="RADIO" NAME="p78t7" VALUE="1">是
					<INPUT TYPE="RADIO"	NAME="p78t7" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>79.我常往外跑，四处帮助别⼈<br>
					<INPUT TYPE="RADIO" NAME="p79t2" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p79t2" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>80.有时我会讲求效率⽽牺牲完美和原则<br>
					<INPUT TYPE="RADIO"	NAME="p80t3" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p80t3" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>81.我似乎不太懂得幽默，没有弹性<br>
					<INPUT TYPE="RADIO" NAME="p81t1" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p81t1" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<td><input type="submit" value="下一页"></td>
			</TR>
		</table>
	</form>
</body>
</html>