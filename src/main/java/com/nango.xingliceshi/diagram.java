package com.nango.xingliceshi;

import java.awt.Font;
import java.io.FileOutputStream;  
import java.io.IOException;  
import org.jfree.chart.ChartFactory;  
import org.jfree.chart.ChartUtilities;  
import org.jfree.chart.JFreeChart;  
import org.jfree.chart.axis.CategoryAxis;  
import org.jfree.chart.axis.NumberAxis;  
import org.jfree.chart.plot.CategoryPlot;  
import org.jfree.chart.plot.PlotOrientation;  
import org.jfree.data.category.CategoryDataset;  
import org.jfree.data.category.DefaultCategoryDataset;  
  
/** 
 * 
 * @author Administrator 
 */  
public class diagram {  
  
    /** 
     * @param args the command line arguments 
     */  
    public static void main(String[] args) throws IOException {  
        CategoryDataset ds = getDataSet();  
        JFreeChart chart = ChartFactory.createBarChart3D(  
                "ˮ������ͼ", //ͼ�����  
                "ˮ��", //Ŀ¼�����ʾ��ǩ  
                "����", //��ֵ�����ʾ��ǩ  
                ds, //���ݼ�  
                PlotOrientation.VERTICAL, //ͼ����  
                true, //�Ƿ���ʾͼ�������ڼ򵥵���״ͼ����Ϊfalse  
                false, //�Ƿ�������ʾ����  
                false);         //�Ƿ�����url����  
  
        CategoryPlot categoryplot = (CategoryPlot) chart.getPlot();  
  
        NumberAxis numberaxis = (NumberAxis) categoryplot.getRangeAxis();  
  
        CategoryAxis domainAxis = categoryplot.getDomainAxis();  
  
        /*------����X�������ϵ�����-----------*/  
        domainAxis.setTickLabelFont(new Font("sans-serif", Font.PLAIN, 11));  
  
        /*------����X��ı�������------------*/  
        domainAxis.setLabelFont(new Font("����", Font.PLAIN, 12));  
  
        /*------����Y�������ϵ�����-----------*/  
        numberaxis.setTickLabelFont(new Font("sans-serif", Font.PLAIN, 12));  
  
        /*------����Y��ı�������------------*/  
        numberaxis.setLabelFont(new Font("����", Font.PLAIN, 12));  
  
        /*------���������˵ײ��������������-----------*/  
        chart.getLegend().setItemFont(new Font("����", Font.PLAIN, 12));  
  
        /*******���������˱��⺺�����������********/  
        chart.getTitle().setFont(new Font("����", Font.PLAIN, 12));  
  
        FileOutputStream out = null;  
        try {  
            out = new FileOutputStream("E://Items//BarChartDemo1//image//1.jpg");  
            ChartUtilities.writeChartAsJPEG(out, 0.5f, chart, 400, 300, null);  
        } finally {  
            try {  
                out.close();  
            } catch (Exception ex) {  
                ex.printStackTrace();  
            }  
        }  
    }  
  
    private static CategoryDataset getDataSet() {  
        DefaultCategoryDataset ds = new DefaultCategoryDataset();  
        ds.addValue(100, "����", "ƻ��");  
        ds.addValue(100, "�Ϻ�", "ƻ��");  
        ds.addValue(100, "����", "ƻ��");  
        ds.addValue(200, "����", "����");  
        ds.addValue(200, "�Ϻ�", "����");  
        ds.addValue(200, "����", "����");  
        ds.addValue(300, "����", "����");  
        ds.addValue(300, "�Ϻ�", "����");  
        ds.addValue(300, "����", "����");  
        ds.addValue(400, "����", "����");  
        ds.addValue(400, "�Ϻ�", "����");  
        ds.addValue(400, "����", "����");  
        ds.addValue(500, "����", "�㽶");  
        ds.addValue(500, "�Ϻ�", "�㽶");  
        ds.addValue(500, "����", "�㽶");  
        return ds;  
    }  
} 