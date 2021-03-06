
<%@ page import="izmachiolli.Site" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'site.label', default: 'Site')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-site" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
                <li><g:link uri="/"><g:message code="default.navigate.back"/></g:link></li>
			</ul>
		</div>
		<div id="show-site" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list site">
			
				<g:if test="${siteInstance?.header}">
				<li class="fieldcontain">
					<span id="header-label" class="property-label"><g:message code="site.header.label" default="Header" /></span>
					
						<span class="property-value" aria-labelledby="header-label"><g:fieldValue bean="${siteInstance}" field="header"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.left}">
				<li class="fieldcontain">
					<span id="left-label" class="property-label"><g:message code="site.left.label" default="Left" /></span>
					
						<span class="property-value" aria-labelledby="left-label"><g:fieldValue bean="${siteInstance}" field="left"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.right}">
				<li class="fieldcontain">
					<span id="right-label" class="property-label"><g:message code="site.right.label" default="Right" /></span>
					
						<span class="property-value" aria-labelledby="right-label"><g:fieldValue bean="${siteInstance}" field="right"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.footer}">
				<li class="fieldcontain">
					<span id="footer-label" class="property-label"><g:message code="site.footer.label" default="Footer" /></span>
					
						<span class="property-value" aria-labelledby="footer-label"><g:fieldValue bean="${siteInstance}" field="footer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.headerHeight}">
				<li class="fieldcontain">
					<span id="headerHeight-label" class="property-label"><g:message code="site.headerHeight.label" default="Header Height" /></span>
					
						<span class="property-value" aria-labelledby="headerHeight-label"><g:fieldValue bean="${siteInstance}" field="headerHeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.footerHeight}">
				<li class="fieldcontain">
					<span id="footerHeight-label" class="property-label"><g:message code="site.footerHeight.label" default="Footer Height" /></span>
					
						<span class="property-value" aria-labelledby="footerHeight-label"><g:fieldValue bean="${siteInstance}" field="footerHeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.leftWidth}">
				<li class="fieldcontain">
					<span id="leftWidth-label" class="property-label"><g:message code="site.leftWidth.label" default="Left Width" /></span>
					
						<span class="property-value" aria-labelledby="leftWidth-label"><g:fieldValue bean="${siteInstance}" field="leftWidth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.rightWidth}">
				<li class="fieldcontain">
					<span id="rightWidth-label" class="property-label"><g:message code="site.rightWidth.label" default="Right Width" /></span>
					
						<span class="property-value" aria-labelledby="rightWidth-label"><g:fieldValue bean="${siteInstance}" field="rightWidth"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:siteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${siteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:link class="list" action="preview" resource="${siteInstance}"><g:message code="default.button.preview"/></g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
