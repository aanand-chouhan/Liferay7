<%@ include file="init.jsp" %>

<%
    String textData = portletPreferences.getValue("text", "");
    out.println(textData);
    %>
    
    
