<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	//ct[n]：题类为n答案为True的计数器
	//pt[n]：题类为n的题数计数器
	//p[m]t[n]：第m题，该题为题类n
	//t[n]:t1-完美主义者,t2-给予者,t3-实践者,t4-浪漫主义者,t5-观察者.t6-质问者,t7-享乐主义者.t8-支配者.t9-和平者
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	session.setAttribute("name", name);
	session.setAttribute("age", age);
%>
<html>
<head>
<title>九宫人格测试1/12</title>
</head>
<body>
	<form action="2.jsp" method=post>
		<table>
			<TR>
				<TD>1.我很容易迷惑<br> 
					<INPUT TYPE="RADIO" NAME="p1t9" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p1t9" VALUE="0" checked="checked">否
				</TD>
			</TR>
			<TR>
				<TD>2.我不想成为⼀个喜欢批评的⼈，但很难做到<br> 
					<INPUT TYPE="RADIO" NAME="p2t1" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p2t1" VALUE="0" checked="checked">否 
				</TD>
			</TR>
			<TR>
				<TD>3.我喜欢研究宇宙的道理、哲理<br> 
					<INPUT TYPE="RADIO" NAME="p3t5" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p3t5" VALUE="0" checked="checked">否 
				</TD>
			</TR>
			<TR>
				<TD>4.我很注意自⼰是否年轻，因为那是找乐⼦的本钱<br> 
					<INPUT TYPE="RADIO" NAME="p4t7" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p4t7" VALUE="0" checked="checked">否 
				</TD>
			</TR>
			<TR>
			<TR>
				<TD>5.我喜欢独立自主，⼀切都靠自⼰<br> 
					<INPUT TYPE="RADIO" NAME="p5t8" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p5t8" VALUE="0" checked="checked">否 
				</TD>
			</TR>
			<TR>
			<TR>
				<TD>6.儅我有困难时，我会试著不让⼈知道<br> 
					<INPUT TYPE="RADIO" NAME="p6t2" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p6t2" VALUE="0" checked="checked">否 
				</TD>
			</TR>
			<TR>
			<TR>
				<TD>7.被⼈误解对我⽽⾔是⼀件⼗分痛苦的事<br> 
					<INPUT TYPE="RADIO" NAME="p7t4" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p7t4" VALUE="0" checked="checked">否 
				</TD>
			</TR>
			<TR>
			<TR>
				<TD>8.施比受会给我更⼤的满⾜感<br> 
					<INPUT TYPE="RADIO" NAME="p8t2" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p8t2" VALUE="0" checked="checked">否 
				</TD>
			</TR>
			<TR>
			<TR>
				<TD>9.我常常设想最早的结果⽽使自⼰陷⼊苦恼中<br> 
					<INPUT TYPE="RADIO" NAME="p9t6" VALUE="1">是
					<INPUT TYPE="RADIO" NAME="p9t6" VALUE="0" checked="checked">否 
				</TD>
			</TR>
			<TR>
				<td>
					<input type="submit" value="下一页">
				</td>
			</TR>
		</table>
	</form>
</body>
</html>