<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	//获取前页的答案
	String p10t6 = request.getParameter("p10t6");
	String p11t8 = request.getParameter("p11t8");
	String p12t9 = request.getParameter("p12t9");
	String p13t4 = request.getParameter("p13t4");
	String p14t1 = request.getParameter("p14t1");
	String p15t9 = request.getParameter("p15t9");
	String p16t7 = request.getParameter("p16t7");
	String p17t4 = request.getParameter("p17t4");
	String p18t7 = request.getParameter("p18t7");
	
	//获取题数并记数
	session.setAttribute("pt1", Integer.valueOf(session.getAttribute("pt1").toString()) + 1);
	session.setAttribute("pt2", Integer.valueOf(session.getAttribute("pt2").toString()) + 0);
	session.setAttribute("pt3", Integer.valueOf(session.getAttribute("pt3").toString()) + 0);
	session.setAttribute("pt4", Integer.valueOf(session.getAttribute("pt4").toString()) + 2);
	session.setAttribute("pt5", Integer.valueOf(session.getAttribute("pt5").toString()) + 0);
	session.setAttribute("pt6", Integer.valueOf(session.getAttribute("pt6").toString()) + 1);
	session.setAttribute("pt7", Integer.valueOf(session.getAttribute("pt7").toString()) + 2);
	session.setAttribute("pt8", Integer.valueOf(session.getAttribute("pt8").toString()) + 1);
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
	if (p10t6.equals("1"))
		ct6 = ct6 + 1;
	if (p11t8.equals("1"))
		ct8 = ct8 + 1;
	if (p12t9.equals("1"))
		ct9 = ct9 + 1;
	if (p13t4.equals("1"))
		ct4 = ct4 + 1;
	if (p14t1.equals("1"))
		ct1 = ct1 + 1;
	if (p15t9.equals("1"))
		ct9 = ct9 + 1;
	if (p16t7.equals("1"))
		ct7 = ct7 + 1;
	if (p17t4.equals("1"))
		ct4 = ct4 + 1;
	if (p18t7.equals("1"))
		ct7 = ct7 + 1;
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
	System.out.println("第10题的答案是：" + p10t6);
	System.out.println("第11题的答案是：" + p11t8);
	System.out.println("第12题的答案是：" + p12t9);
	System.out.println("第13题的答案是：" + p13t4);
	System.out.println("第14题的答案是：" + p14t1);
	System.out.println("第15题的答案是：" + p15t9);
	System.out.println("第16题的答案是：" + p16t7);
	System.out.println("第17题的答案是：" + p17t4);
	System.out.println("第18题的答案是：" + p18t7);
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
<title>九宫人格测试3/12</title>
</head>
<body>
	<form action="4.jsp" method=post>
		<table>
			<TR>
				<TD>19.当别⼈请教我⼀些问题，我会具细⽆遗地分析得很清楚<br>
					<INPUT TYPE="RADIO"	NAME="p19t5" VALUE="1">是 
					<INPUT TYPE="RADIO" NAME="p19t5"	VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>20.我习惯推销自⼰，从不觉得难为情<br>
					<INPUT TYPE="RADIO"	NAME="p20t3" VALUE="1">是 
					<INPUT TYPE="RADIO" NAME="p20t3" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>21.有时我会放纵和做出僭越的事情<br>
					<INPUT TYPE="RADIO" NAME="p21t7" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p21t7" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>22.帮助不到别⼈会让我觉得痛苦<br>
					<INPUT TYPE="RADIO" NAME="p22t2" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p22t2" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>23.我不喜欢⼈家问我⼴泛、笼统的问题<br>
					<INPUT TYPE="RADIO"	NAME="p23t5" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p23t5" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>24.在某⽅面我有放纵的倾向（例如食物、药物等）<br>
					<INPUT TYPE="RADIO"	NAME="p24t8" VALUE="1">是 
					<INPUT TYPE="RADIO" NAME="p24t8" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>25.我寧愿适应别⼈，包括我的伴侣，⽽不会反抗他们<br>
					<INPUT TYPE="RADIO"	NAME="p25t9" VALUE="1">是 
					<INPUT TYPE="RADIO" NAME="p25t9" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>26.我最不喜欢的⼀件事就是虚偽<br>
					<INPUT TYPE="RADIO" NAME="p26t6" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p26t6" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>27.我知错能改，但由於执著好强，周围的⼈还是感觉到压⼒<br>
					<INPUT TYPE="RADIO"	NAME="p27t8" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p27t8" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<td><input type="submit" value="下一页"></td>
			</TR>
		</table>
	</form>
</body>
</html>