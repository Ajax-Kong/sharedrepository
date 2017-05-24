<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	//获取前页的答案
	String p19t5 = request.getParameter("p19t5");
	String p20t3 = request.getParameter("p20t3");
	String p21t7 = request.getParameter("p21t7");
	String p22t2 = request.getParameter("p22t2");
	String p23t5 = request.getParameter("p23t5");
	String p24t8 = request.getParameter("p24t8");
	String p25t9 = request.getParameter("p25t9");
	String p26t6 = request.getParameter("p26t6");
	String p27t8 = request.getParameter("p27t8");
	
	//获取题数并记数
	session.setAttribute("pt1", Integer.valueOf(session.getAttribute("pt1").toString()) + 0);
	session.setAttribute("pt2", Integer.valueOf(session.getAttribute("pt2").toString()) + 1);
	session.setAttribute("pt3", Integer.valueOf(session.getAttribute("pt3").toString()) + 1);
	session.setAttribute("pt4", Integer.valueOf(session.getAttribute("pt4").toString()) + 0);
	session.setAttribute("pt5", Integer.valueOf(session.getAttribute("pt5").toString()) + 2);
	session.setAttribute("pt6", Integer.valueOf(session.getAttribute("pt6").toString()) + 1);
	session.setAttribute("pt7", Integer.valueOf(session.getAttribute("pt7").toString()) + 1);
	session.setAttribute("pt8", Integer.valueOf(session.getAttribute("pt8").toString()) + 2);
	session.setAttribute("pt9", Integer.valueOf(session.getAttribute("pt9").toString()) + 1);
	
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
	if (p19t5.equals("1"))
		ct5 = ct5 + 1;
	if (p20t3.equals("1"))
		ct3 = ct3 + 1;
	if (p21t7.equals("1"))
		ct7 = ct7 + 1;
	if (p22t2.equals("1"))
		ct2 = ct2 + 1;
	if (p23t5.equals("1"))
		ct5 = ct5 + 1;
	if (p24t8.equals("1"))
		ct8 = ct8 + 1;
	if (p25t9.equals("1"))
		ct9 = ct9 + 1;
	if (p26t6.equals("1"))
		ct6 = ct6 + 1;
	if (p27t8.equals("1"))
		ct8 = ct8 + 1;
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
	System.out.println("第19题的答案是：" + p19t5);
	System.out.println("第20题的答案是：" + p20t3);
	System.out.println("第21题的答案是：" + p21t7);
	System.out.println("第22题的答案是：" + p22t2);
	System.out.println("第23题的答案是：" + p23t5);
	System.out.println("第24题的答案是：" + p24t8);
	System.out.println("第25题的答案是：" + p25t9);
	System.out.println("第26题的答案是：" + p26t6);
	System.out.println("第27题的答案是：" + p27t8);
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
<title>九宫人格测试4/12</title>
</head>
<body>
	<form action="5.jsp" method=post>
		<table>
			<TR>
				<TD>28.我常常觉得很多事情都很好玩，很有趣，⼈⽣真是快乐<br>
					<INPUT TYPE="RADIO"	NAME="p28t7" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p28t7"	VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>29.我有时很欣赏自⼰充满权威，有时却又优柔寡断，依赖别⼈<br>
					<INPUT TYPE="RADIO"	NAME="p29t6" VALUE="1">是 
					<INPUT TYPE="RADIO" NAME="p29t6" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>30.我习惯付出多与接受<br>
					<INPUT TYPE="RADIO" NAME="p30t2" VALUE="1">是 
					<INPUT TYPE="RADIO" NAME="p30t2" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>31.面对威胁时，我⼀是变的焦虑，⼀是对抗迎面⽽来的危险<br>
					<INPUT TYPE="RADIO"	NAME="p31t6" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p31t6" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>32.我通常是等别⼈来接近我，⽽不是我去接近他们<br>
					<INPUT TYPE="RADIO"	NAME="p32t5" VALUE="1">是 
					<INPUT TYPE="RADIO" NAME="p32t5" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>33.我喜欢儅主角，希望得到⼤家的注意<br>
					<INPUT TYPE="RADIO"	NAME="p33t3" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p33t3" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>34.别⼈批评我，我也不会回应和辩解，因为我不想发⽣任何争执与 衝突<br>
					<INPUT TYPE="RADIO" NAME="p34t9" VALUE="1">是
					<INPUT TYPE="RADIO"	NAME="p34t9" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>35.我有时候期待别⼈的指导，有时候却忽略别⼈的忠告径直去做 我想做的事情<br>
					<INPUT TYPE="RADIO" NAME="p35t6" VALUE="1">是 
					<INPUT TYPE="RADIO"	NAME="p35t6" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>36.我经常忘记自⼰的需要<br>
					<INPUT TYPE="RADIO" NAME="p36t9" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p36t9" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<td><input type="submit" value="下一页"></td>
			</TR>
		</table>
	</form>
</body>
</html>