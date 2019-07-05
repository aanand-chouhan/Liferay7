package com.vy.cef.portlet;

import com.vy.cef.constants.Create_EventFormPortletKeys;
import com.liferay.portal.kernel.json.JSONFactoryUtil;
import com.liferay.portal.kernel.json.JSONObject;
import com.liferay.portal.kernel.portlet.bridges.mvc.MVCPortlet;
import com.liferay.portal.kernel.util.ParamUtil;

import java.io.IOException;

import javax.portlet.Portlet;
import javax.portlet.PortletException;
import javax.portlet.ResourceRequest;
import javax.portlet.ResourceResponse;

import org.osgi.service.component.annotations.Component;

/**
 * @author vidyayug
 */
@Component(
	immediate = true,
	property = {
		"com.liferay.portlet.display-category=category.sample",
		"com.liferay.portlet.instanceable=true",
		"javax.portlet.init-param.template-path=/",
		"javax.portlet.init-param.view-template=/view.jsp",
		"javax.portlet.name=" + Create_EventFormPortletKeys.Create_EventForm,
		"javax.portlet.resource-bundle=content.Language",
		"javax.portlet.security-role-ref=power-user,user"
	},
	service = Portlet.class
)
public class Create_EventFormPortlet extends MVCPortlet {
	@Override
	public void serveResource(ResourceRequest resourceRequest, ResourceResponse resourceResponse)
			throws IOException, PortletException {
		System.out.println("Create_EventFormPortlet.serveResource()");
		
		String mapVal=ParamUtil.getString(resourceRequest,"mapValue");
		System.out.println("val "+mapVal);
		resourceResponse.getWriter().write(mapVal);
		
		/*
		 * String id=ParamUtil.getString(resourceRequest, "id"); if(id.equals("1")) {
		 * String mapValueCode=ParamUtil.getString(resourceRequest, "mapValueCode");
		 * System.out.println("val "+mapValueCode);
		 * resourceResponse.getWriter().write(mapValueCode); } if(id.equals("2")) {
		 * String mapValueCity=ParamUtil.getString(resourceRequest, "mapValueCity");
		 * System.out.println("val "+mapValueCity);
		 * resourceResponse.getWriter().write(mapValueCity); } if(id.equals("3")) {
		 * String mapValueStreet=ParamUtil.getString(resourceRequest, "mapValueStreet");
		 * System.out.println("val "+mapValueStreet);
		 * resourceResponse.getWriter().write(mapValueStreet); }
		 */
		
		
	}
}