<%@ page import="com.liferay.portal.kernel.util.WebKeys"  %>
<%@ page import="com.liferay.portal.theme.ThemeDisplay" %>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ page import="javax.portlet.PortletPreferences" %>

<portlet:defineObjects />

<%
ThemeDisplay themeDisplay = (ThemeDisplay) request.getAttribute(WebKeys.THEME_DISPLAY);
String firstName = themeDisplay.getUser().getFirstName();
String portraitUrl = themeDisplay.getUser().getPortraitURL(themeDisplay);

PortletPreferences prefs = renderRequest.getPreferences();
String greeting = (String)prefs.getValue("greeting", "Welcome, " + firstName + "!");
%>

<p><%= greeting %></p>
<img src="<%= portraitUrl %>">