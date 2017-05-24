package com.nango.xingliceshi;

import java.awt.Font;
import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.CategoryAxis;
import org.jfree.chart.axis.CategoryLabelPositions;
import org.jfree.chart.axis.ValueAxis;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.title.TextTitle;
import org.jfree.data.category.DefaultCategoryDataset;

/**
 * Servlet implementation class result
 */
@WebServlet("/result")
public class result extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public result() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		
		//��ȡ�û���Ϣ
		String name = (String) session.getAttribute("name");
		String age = (String) session.getAttribute("age");
		
		//��ȡǰҳ�Ĵ�
		String p100t4 = request.getParameter("p100t4");
		String p101t5 = request.getParameter("p101t5");
		String p102t1 = request.getParameter("p102t1");
		String p103t7 = request.getParameter("p103t7");
		String p104t1 = request.getParameter("p104t1");
		String p105t4 = request.getParameter("p105t4");
		String p106t1 = request.getParameter("p106t1");
		String p107t9 = request.getParameter("p107t9");
		String p108t9 = request.getParameter("p108t9");
		
		//��ȡ����������
		int pt1 = Integer.valueOf(session.getAttribute("pt1").toString()) + 3;
		int pt2 = Integer.valueOf(session.getAttribute("pt2").toString()) + 0;
		int pt3 = Integer.valueOf(session.getAttribute("pt3").toString()) + 0;
		int pt4 = Integer.valueOf(session.getAttribute("pt4").toString()) + 2;
		int pt5 = Integer.valueOf(session.getAttribute("pt5").toString()) + 1;
		int pt6 = Integer.valueOf(session.getAttribute("pt6").toString()) + 0;
		int pt7 = Integer.valueOf(session.getAttribute("pt7").toString()) + 1;
		int pt8 = Integer.valueOf(session.getAttribute("pt8").toString()) + 0;
		int pt9 = Integer.valueOf(session.getAttribute("pt9").toString()) + 2;
		session.setAttribute("pt1", pt1);
		session.setAttribute("pt2", pt2);
		session.setAttribute("pt3", pt3);
		session.setAttribute("pt4", pt4);
		session.setAttribute("pt5", pt5);
		session.setAttribute("pt6", pt6);
		session.setAttribute("pt7", pt7);
		session.setAttribute("pt8", pt8);
		session.setAttribute("pt9", pt9);
		
		//��ȡTrue����������
		int ct1 = Integer.valueOf(session.getAttribute("ct1").toString());
		int ct2 = Integer.valueOf(session.getAttribute("ct2").toString());
		int ct3 = Integer.valueOf(session.getAttribute("ct3").toString());
		int ct4 = Integer.valueOf(session.getAttribute("ct4").toString());
		int ct5 = Integer.valueOf(session.getAttribute("ct5").toString());
		int ct6 = Integer.valueOf(session.getAttribute("ct6").toString());
		int ct7 = Integer.valueOf(session.getAttribute("ct7").toString());
		int ct8 = Integer.valueOf(session.getAttribute("ct8").toString());
		int ct9 = Integer.valueOf(session.getAttribute("ct9").toString());
		if (p100t4.equals("1"))
			ct4 = ct4 + 1;
		if (p101t5.equals("1"))
			ct5 = ct5 + 1;
		if (p102t1.equals("1"))
			ct1 = ct1 + 1;
		if (p103t7.equals("1"))
			ct7 = ct7 + 1;
		if (p104t1.equals("1"))
			ct1 = ct1 + 1;
		if (p105t4.equals("1"))
			ct4 = ct4 + 1;
		if (p106t1.equals("1"))
			ct1 = ct1 + 1;
		if (p107t9.equals("1"))
			ct9 = ct9 + 1;
		if (p108t9.equals("1"))
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
		
		System.out.println("�����ߣ�" + session.getAttribute("name"));
		System.out.println("���������䣺" + session.getAttribute("age"));
		System.out.println("��100��Ĵ��ǣ�" + p100t4);
		System.out.println("��101��Ĵ��ǣ�" + p101t5);
		System.out.println("��102��Ĵ��ǣ�" + p102t1);
		System.out.println("��103��Ĵ��ǣ�" + p103t7);
		System.out.println("��104��Ĵ��ǣ�" + p104t1);
		System.out.println("��105��Ĵ��ǣ�" + p105t4);
		System.out.println("��106��Ĵ��ǣ�" + p106t1);
		System.out.println("��107��Ĵ��ǣ�" + p107t9);
		System.out.println("��108��Ĵ��ǣ�" + p108t9);
		System.out.println("T1��ΪTrue������" + session.getAttribute("ct1") + "/" + session.getAttribute("pt1"));
		System.out.println("T2��ΪTrue������" + session.getAttribute("ct2") + "/" + session.getAttribute("pt2"));
		System.out.println("T3��ΪTrue������" + session.getAttribute("ct3") + "/" + session.getAttribute("pt3"));
		System.out.println("T4��ΪTrue������" + session.getAttribute("ct4") + "/" + session.getAttribute("pt4"));
		System.out.println("T5��ΪTrue������" + session.getAttribute("ct5") + "/" + session.getAttribute("pt5"));
		System.out.println("T6��ΪTrue������" + session.getAttribute("ct6") + "/" + session.getAttribute("pt6"));
		System.out.println("T7��ΪTrue������" + session.getAttribute("ct7") + "/" + session.getAttribute("pt7"));
		System.out.println("T8��ΪTrue������" + session.getAttribute("ct8") + "/" + session.getAttribute("pt8"));
		System.out.println("T9��ΪTrue������" + session.getAttribute("ct9") + "/" + session.getAttribute("pt9"));
		System.out.println("============================");

		DefaultCategoryDataset dataset = new DefaultCategoryDataset();
		dataset.addValue(new BigDecimal((float) ct1 / pt1).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue(),"�Ź��˸����", "����������");
		dataset.addValue(new BigDecimal((float) ct2 / pt2).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue(),"�Ź��˸����", "������");
		dataset.addValue(new BigDecimal((float) ct3 / pt3).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue(),"�Ź��˸����", "ʵ����");
		dataset.addValue(new BigDecimal((float) ct4 / pt4).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue(),"�Ź��˸����", "����������");
		dataset.addValue(new BigDecimal((float) ct5 / pt5).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue(),"�Ź��˸����", "�۲���");
		dataset.addValue(new BigDecimal((float) ct6 / pt6).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue(),"�Ź��˸����", "������");
		dataset.addValue(new BigDecimal((float) ct7 / pt7).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue(),"�Ź��˸����", "����������");
		dataset.addValue(new BigDecimal((float) ct8 / pt8).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue(),"�Ź��˸����", "֧����");
		dataset.addValue(new BigDecimal((float) ct9 / pt9).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue(),"�Ź��˸����", "��ƽ��");
		
		JFreeChart chart = ChartFactory.createBarChart3D("�Ź��˸���Խ��", "�˸�����", "TRUE��", dataset, PlotOrientation.VERTICAL,
				true, true, false);
		
		// ����������
		chart.setTitle(new TextTitle(name + "�Ź��˸���Խ��", new Font("����", Font.ITALIC, 20)));
		chart.setAntiAlias(true);
		// �������ã������������룩
		CategoryPlot plot = (CategoryPlot) chart.getPlot();
		// ����x����������塢X��ı�������
		CategoryAxis x = plot.getDomainAxis();
		x.setTickLabelFont(new Font("����", Font.ITALIC, 12));
		x.setLabelFont(new Font("����", Font.ITALIC, 12));
		x.setVisible(true);
		x.setCategoryLabelPositions(CategoryLabelPositions.createUpRotationLabelPositions(1.00));
		// ����y���ϵ����塢y���ϵı�������
		ValueAxis y = (ValueAxis) plot.getRangeAxis();
		y.setTickLabelFont(new Font("����", Font.PLAIN, 13));
		y.setLabelFont(new Font("����", Font.PLAIN, 13));
		y.setLowerBound(0);
		y.setUpperBound(1);
		// ���õײ�������
		chart.getLegend().setItemFont(new Font("����", Font.PLAIN, 10));
		
		response.reset();
		ChartUtilities.writeChartAsPNG(response.getOutputStream(), chart, 1300, 700);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
