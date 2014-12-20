package com.toastmasters.idc

import ar.com.fdvs.dj.core.DynamicJasperHelper
import ar.com.fdvs.dj.core.layout.ClassicLayoutManager
import ar.com.fdvs.dj.domain.DynamicReport
import ar.com.fdvs.dj.domain.Style
import ar.com.fdvs.dj.domain.builders.FastReportBuilder
import ar.com.fdvs.dj.domain.constants.Page
import ar.com.fdvs.dj.output.ReportWriter
import ar.com.fdvs.dj.output.ReportWriterFactory
import net.sf.jasperreports.engine.JRDataSource
import net.sf.jasperreports.engine.JREmptyDataSource
import net.sf.jasperreports.engine.JRExporter
import net.sf.jasperreports.engine.JRExporterParameter
import net.sf.jasperreports.engine.JasperPrint
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource
import net.sf.jasperreports.engine.export.JRHtmlExporterParameter
import net.sf.jasperreports.j2ee.servlets.ImageServlet
import net.sf.jasperreports.view.JasperViewer
import org.codehaus.groovy.grails.plugins.jasper.JasperReportDef

/**
 * Created by syedshahul on 16/12/14.*/
class ReportService {
	Style titleStyle = new Style("titleStyle")
	Style headerStyle = new Style("headerStyle")
	Style detailStyle = new Style("detailStyle")
	Style headerVariableStyle = new Style("headerVariableStyle")
	Style groupHeaderStyle = new Style("groupHeaderStyle")
	Style subtotalStyle = new Style("subtotalStyle")
	Style moneyStyle = new Style("moneyStyle")
	Style moneyTotalStyle = new Style("moneyTotalStyle")
	Style facilityHeaderStyle = new Style("facilityHeaderStyle")
	Style detailCenterStyle = new Style("detailCenterStyle")
	Style dateHeaderStyle = new Style("dateHeaderStyle")

	def dynaSampleReport(String realPath){
		FastReportBuilder drb = new FastReportBuilder();
		drb.setTemplateFile(realPath);

		DynamicReport dr = drb.addColumn("Name", "name",
				String.class.getName(),30).addColumn("number", "number",
				String.class.getName(),30).addColumn("type","type",
				String.class.getName(), 100).
				setTitle("My Favorite Books").
				setUseFullPageWidth(true).
				build();

		JRDataSource ds = new JRBeanCollectionDataSource(Club.list());
		JasperPrint jp = DynamicJasperHelper.generateJasperPrint(dr, new
				ClassicLayoutManager(), ds);
		ReportWriter reportWriter = ReportWriterFactory.getInstance().getReportWriter(jp, 'PDF', [:]);

		return reportWriter;
	}
}
