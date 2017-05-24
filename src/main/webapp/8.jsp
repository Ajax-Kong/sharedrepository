<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	//获取前页的答案
	String p55t1 = request.getParameter("p55t1");
	String p56t4 = request.getParameter("p56t4");
	String p57t1 = request.getParameter("p57t1");
	String p58t4 = request.getParameter("p58t4");
	String p59t3 = request.getParameter("p59t3");
	String p60t1 = request.getParameter("p60t1");
	String p61t4 = request.getParameter("p61t4");
	String p62t9 = request.getParameter("p62t9");
	String p63t1 = request.getParameter("p63t1");
	
	//获取题数并记数
	session.setAttribute("pt1", Integer.valueOf(session.getAttribute("pt1").toString()) + 4);
	session.setAttribute("pt2", Integer.valueOf(session.getAttribute("pt2").toString()) + 0);
	session.setAttribute("pt3", Integer.valueOf(session.getAttribute("pt3").toString()) + 1);
	session.setAttribute("pt4", Integer.valueOf(session.getAttribute("pt4").toString()) + 3);
	session.setAttribute("pt5", Integer.valueOf(session.getAttribute("pt5").toString()) + 0);
	session.setAttribute("pt6", Integer.valueOf(session.getAttribute("pt6").toString()) + 0);
	session.setAttribute("pt7", Integer.valueOf(session.getAttribute("pt7").toString()) + 0);
	session.setAttribute("pt8", Integer.valueOf(session.getAttribute("pt8").toString()) + 0);
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
	if (p55t1.equals("1"))
		ct1 = ct1 + 1;
	if (p56t4.equals("1"))
		ct4 = ct4+ 1;
	if (p57t1.equals("1"))
		ct1 = ct1 + 1;
	if (p58t4.equals("1"))
		ct4 = ct4 + 1;
	if (p59t3.equals("1"))
		ct3 = ct3 + 1;
	if (p60t1.equals("1"))
		ct1 = ct1 + 1;
	if (p61t4.equals("1"))
		ct4 = ct4 + 1;
	if (p62t9.equals("1"))
		ct9 = ct9 + 1;
	if (p63t1.equals("1"))
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
	System.out.println("第55题的答案是：" + p55t1);
	System.out.println("第56题的答案是：" + p56t4);
	System.out.println("第57题的答案是：" + p57t1);
	System.out.println("第58题的答案是：" + p58t4);
	System.out.println("第59题的答案是：" + p59t3);
	System.out.println("第60题的答案是：" + p60t1);
	System.out.println("第61题的答案是：" + p61t4);
	System.out.println("第62题的答案是：" + p62t9);
	System.out.println("第63题的答案是：" + p63t1);
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
<title>九宫人格测试8/12</title>
</head>
<body>
	<form action="9.jsp" method=post>
		<table>
			<TR>
				<TD>64.我渴望拥有完美的⼼灵伴侣<br>
					<INPUT TYPE="RADIO" NAME="p64t4"	VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p64t4" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>65.我常夸耀自⼰，对自⼰的能⼒⼗分有信⼼<br>
					<INPUT TYPE="RADIO"	NAME="p65t3" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p65t3" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>66.如果週遭的⼈⾏为太过份时，我準会让他难堪<br>
					<INPUT TYPE="RADIO"	NAME="p66t8" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p66t8" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>67.我外向、精⼒充沛，喜欢不断要求成就，这使我的自我感觉⼗分 良好<br>
					<INPUT TYPE="RADIO" NAME="p67t3" VALUE="1">是
					<INPUT TYPE="RADIO"	NAME="p67t3" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>68.我是⼀位忠实的朋友和伙伴<br>
					<INPUT TYPE="RADIO" NAME="p68t6" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p68t6" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>69.我知道如何让别⼈喜欢我<br>
					<INPUT TYPE="RADIO" NAME="p69t2" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p69t2" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>70.我很少看到别⼈的功劳和好处<br>
					<INPUT TYPE="RADIO" NAME="p70t3" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p70t3" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>71.我很容易知道别⼈的功劳和好处<br>
					<INPUT TYPE="RADIO" NAME="p71t2" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p71t2" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>72.我妒嫉⼼强，喜欢跟别⼈比较<br>
					<INPUT TYPE="RADIO" NAME="p72t3" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p72t3" VALUE="0"	checked="checked">否
				</TD>
			</TR>
			<TR>
				<td><input type="submit" value="下一页"></td>
			</TR>
		</table>
	</form>
</body>
</html>