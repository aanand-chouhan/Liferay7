<%@ include file="/init.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %><%@
taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %><%@
taglib uri="http://liferay.com/tld/theme" prefix="liferay-theme" %><%@
taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>

<liferay-theme:defineObjects />

<portlet:defineObjects />
<portlet:actionURL name="TokenAuthRest" var="restApiBasicAuthURL" />


<aui:form action="<%=restApiBasicAuthURL%>" method="post" name="fm">
	<aui:input name="url">Enter URL</aui:input>
	<aui:input name="token">Enter token </aui:input>
	<aui:button type="submit" name="submit" value="submit"/>
</aui:form>