<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	//获取前页的答案
	String p28t7 = request.getParameter("p28t7");
	String p29t6 = request.getParameter("p29t6");
	String p30t2 = request.getParameter("p30t2");
	String p31t6 = request.getParameter("p31t6");
	String p32t5 = request.getParameter("p32t5");
	String p33t3 = request.getParameter("p33t3");
	String p34t9 = request.getParameter("p34t9");
	String p35t6 = request.getParameter("p35t6");
	String p36t9 = request.getParameter("p36t9");
	
	//获取题数并记数
	session.setAttribute("pt1", Integer.valueOf(session.getAttribute("pt1").toString()) + 0);
	session.setAttribute("pt2", Integer.valueOf(session.getAttribute("pt2").toString()) + 1);
	session.setAttribute("pt3", Integer.valueOf(session.getAttribute("pt3").toString()) + 1);
	session.setAttribute("pt4", Integer.valueOf(session.getAttribute("pt4").toString()) + 0);
	session.setAttribute("pt5", Integer.valueOf(session.getAttribute("pt5").toString()) + 1);
	session.setAttribute("pt6", Integer.valueOf(session.getAttribute("pt6").toString()) + 3);
	session.setAttribute("pt7", Integer.valueOf(session.getAttribute("pt7").toString()) + 1);
	session.setAttribute("pt8", Integer.valueOf(session.getAttribute("pt8").toString()) + 0);
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
	if (p28t7.equals("1"))
		ct7 = ct7 + 1;
	if (p29t6.equals("1"))
		ct6 = ct6 + 1;
	if (p30t2.equals("1"))
		ct2 = ct2 + 1;
	if (p31t6.equals("1"))
		ct6 = ct6 + 1;
	if (p32t5.equals("1"))
		ct5 = ct5 + 1;
	if (p33t3.equals("1"))
		ct3 = ct3 + 1;
	if (p34t9.equals("1"))
		ct9 = ct9 + 1;
	if (p35t6.equals("1"))
		ct6 = ct6 + 1;
	if (p36t9.equals("1"))
		ct9 = ct9 + 1;
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
	System.out.println("第28题的答案是：" + p28t7);
	System.out.println("第29题的答案是：" + p29t6);
	System.out.println("第30题的答案是：" + p30t2);
	System.out.println("第31题的答案是：" + p31t6);
	System.out.println("第32题的答案是：" + p32t5);
	System.out.println("第33题的答案是：" + p33t3);
	System.out.println("第34题的答案是：" + p34t9);
	System.out.println("第35题的答案是：" + p35t6);
	System.out.println("第36题的答案是：" + p36t9);
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
<title>九宫人格测试5/12</title>
</head>
<body>
	<form action="6.jsp" method=post>
		<table>
			<TR>
				<TD>37.在重⼤危机中，我通常能克服我对自⼰的质疑和内⼼的焦虑<br>
					<INPUT TYPE="RADIO"	NAME="p37t6" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p37t6"	VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>38.我是⼀个天⽣的推销员，说服别⼈对我来说是⼀件轻易的事<br>
					<INPUT TYPE="RADIO"	NAME="p38t3" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p38t3" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>39.我不相信⼀个我⼀直都⽆法瞭解的⼈<br>
					<INPUT TYPE="RADIO"	NAME="p39t9" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p39t9" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>40.我爱依惯例⾏事，不⼤喜欢改变<br>
					<INPUT TYPE="RADIO" NAME="p40t8" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p40t8" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>41.我很在乎家⼈，在家中表现的忠诚和包容<br>
					<INPUT TYPE="RADIO"	NAME="p41t9" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p41t9" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>42.我被动⽽优柔寡断<br>
					<INPUT TYPE="RADIO" NAME="p42t5" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p42t5" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>43.我很有包容⼒，彬彬有礼，但跟别⼈的感情互动不深<br>
					<INPUT TYPE="RADIO"	NAME="p43t5" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p43t5" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>44.我沉默寡⾔，好像不会关⼼别⼈似的<br>
					<INPUT TYPE="RADIO"	NAME="p44t8" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p44t8" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>45.儅沉浸在⼯作或我擅长的领域时，别⼈会觉得我冷酷⽆情<br>
					<INPUT TYPE="RADIO"	NAME="p45t6" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p45t6" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<td><input type="submit" value="下一页"></td>
			</TR>
		</table>
	</form>
</body>
</html>