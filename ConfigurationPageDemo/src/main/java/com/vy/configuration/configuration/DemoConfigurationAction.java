package com.vy.configuration.configuration;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletConfig;
import javax.portlet.PortletPreferences;

import org.osgi.service.component.annotations.Component;
import org.osgi.service.component.annotations.ConfigurationPolicy;

import com.liferay.portal.kernel.portlet.ConfigurationAction;
import com.liferay.portal.kernel.portlet.DefaultConfigurationAction;
import com.vy.configuration.constants.ConfigurationPageDemoPortletKeys;

@Component(configurationPid = "com.proliferay.configuration.DemoConfiguration", configurationPolicy = ConfigurationPolicy.OPTIONAL, immediate = true, property = {
		"javax.portlet.name="
				+ ConfigurationPageDemoPortletKeys.ConfigurationPageDemo }, service = ConfigurationAction.class)
/**
 * 
 * (1) configurationPolicy optional means that the component is created
 * regardless of whether or not the configuration was set (2) The property
 * javax.portlet.name indicates that this configuration is for
 * com_proliferay_portlet_DemoPortlet (3 )This component should be registered as
 * a configuration action class so it should specify service =
 * ConfigurationAction.class in the @Component annotation.
 *
 */
public class DemoConfigurationAction extends DefaultConfigurationAction {

	@Override
	public void processAction(PortletConfig portletConfig, ActionRequest actionRequest, ActionResponse actionResponse)
			throws Exception {

		String textData = actionRequest.getParameter("survayForm");

		
		PortletPreferences portletPreferences = actionRequest.getPreferences();
		portletPreferences.setValue("text", textData);
		portletPreferences.store();

		
		super.processAction(portletConfig, actionRequest, actionResponse);
	}

}