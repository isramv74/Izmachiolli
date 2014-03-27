
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
                <li><g:link uri="/"><g:message code="campaign.return.label"/></g:link></li>
			</ul>
		</div>
		<div id="show-site" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list site">
			
				<li class="fieldcontain">
					<span id="header-label" class="property-label"><g:message code="site.header.label" default="Header" /></span>
					
						<span class="property-value" aria-labelledby="header-label"><g:fieldValue bean="${siteInstance}" field="header"/></span>
					
				</li>
			    <li class="fieldcontain">
					<span id="left-label" class="property-label"><g:message code="site.left.label" default="Left" /></span>
					
						<span class="property-value" aria-labelledby="left-label"><g:fieldValue bean="${siteInstance}" field="left"/></span>
					
				</li>

				<li class="fieldcontain">
					<span id="right-label" class="property-label"><g:message code="site.right.label" default="Right" /></span>
					
						<span class="property-value" aria-labelledby="right-label"><g:fieldValue bean="${siteInstance}" field="right"/></span>
					
				</li>
				<li class="fieldcontain">
					<span id="footer-label" class="property-label"><g:message code="site.footer.label" default="Footer" /></span>
					
						<span class="property-value" aria-labelledby="footer-label"><g:fieldValue bean="${siteInstance}" field="footer"/></span>
					
				</li>
			
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
