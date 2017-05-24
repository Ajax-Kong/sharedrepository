<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	//获取前页的答案
	String p46t6 = request.getParameter("p46t6");
	String p47t5 = request.getParameter("p47t5");
	String p48t5 = request.getParameter("p48t5");
	String p49t7 = request.getParameter("p49t7");
	String p50t8 = request.getParameter("p50t8");
	String p51t5 = request.getParameter("p51t5");
	String p52t4 = request.getParameter("p52t4");
	String p53t4 = request.getParameter("p53t4");
	String p54t4 = request.getParameter("p54t4");
	
	//获取题数并记数
	session.setAttribute("pt1", Integer.valueOf(session.getAttribute("pt1").toString()) + 0);
	session.setAttribute("pt2", Integer.valueOf(session.getAttribute("pt2").toString()) + 0);
	session.setAttribute("pt3", Integer.valueOf(session.getAttribute("pt3").toString()) + 0);
	session.setAttribute("pt4", Integer.valueOf(session.getAttribute("pt4").toString()) + 3);
	session.setAttribute("pt5", Integer.valueOf(session.getAttribute("pt5").toString()) + 3);
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
	if (p46t6.equals("1"))
		ct6 = ct6 + 1;
	if (p47t5.equals("1"))
		ct5 = ct5 + 1;
	if (p48t5.equals("1"))
		ct5 = ct5 + 1;
	if (p49t7.equals("1"))
		ct7 = ct7 + 1;
	if (p50t8.equals("1"))
		ct8 = ct8 + 1;
	if (p51t5.equals("1"))
		ct5 = ct5 + 1;
	if (p52t4.equals("1"))
		ct4 = ct4 + 1;
	if (p53t4.equals("1"))
		ct4 = ct4 + 1;
	if (p54t4.equals("1"))
		ct4 = ct4 + 1;
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
	System.out.println("第46题的答案是：" + p46t6);
	System.out.println("第47题的答案是：" + p47t5);
	System.out.println("第48题的答案是：" + p48t5);
	System.out.println("第49题的答案是：" + p49t7);
	System.out.println("第50题的答案是：" + p50t8);
	System.out.println("第51题的答案是：" + p51t5);
	System.out.println("第52题的答案是：" + p52t4);
	System.out.println("第53题的答案是：" + p53t4);
	System.out.println("第54题的答案是：" + p54t4);
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
<title>九宫人格测试7/12</title>
</head>
<body>
	<form action="8.jsp" method=post>
		<table>
			<TR>
				<TD>55.我的面部表情严肃⽽⽣硬<br>
					<INPUT TYPE="RADIO" NAME="p55t1"	VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p55t1" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>56.我很飘忽，常常不知道自⼰下⼀刻想要什麼<br>
					<INPUT TYPE="RADIO"	NAME="p56t4" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p56t4" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>57.我常对自⼰挑剔，期望不断改善自⼰的缺点，已成为⼀个完美的 ⼈<br>
					<INPUT TYPE="RADIO" NAME="p57t1" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p57t1" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>58.我感受特别深刻，并怀疑那些总是很快乐的⼈<br>
					<INPUT TYPE="RADIO"	NAME="p58t4" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p58t4" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>59.我做事有效率，也会找捷径，模仿⼒特强<br>
					<INPUT TYPE="RADIO"	NAME="p59t3" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p59t3" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>60.我讲理、重实用<br>
					<INPUT TYPE="RADIO" NAME="p60t1" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p60t1" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>61.我有很强的创造天分和想像⼒，喜欢将事情重新整合<br>
					<INPUT TYPE="RADIO"	NAME="p61t4" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p61t4" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>62.我不要求得到很多的注意⼒<br>
					<INPUT TYPE="RADIO" NAME="p62t9" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p62t9" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>63.我喜欢每件事都井然有序，但别⼈会认为我过份执著<br>
					<INPUT TYPE="RADIO"	NAME="p63t1" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p63t1" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<td><input type="submit" value="下一页"></td>
			</TR>
		</table>
	</form>
</body>
</html>