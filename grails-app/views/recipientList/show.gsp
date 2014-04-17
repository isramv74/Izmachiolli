
<%@ page import="izmachiolli.RecipientList" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recipientList.label', default: 'RecipientList')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-recipientList" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-recipientList" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list recipientList">
			
				<g:if test="${recipientListInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="recipientList.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${recipientListInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recipientListInstance?.confirmUrl}">
				<li class="fieldcontain">
					<span id="confirmUrl-label" class="property-label"><g:message code="recipientList.confirmUrl.label" default="Confirm Url" /></span>
					
						<span class="property-value" aria-labelledby="confirmUrl-label"><g:fieldValue bean="${recipientListInstance}" field="confirmUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recipientListInstance?.subscribeUrl}">
				<li class="fieldcontain">
					<span id="subscribeUrl-label" class="property-label"><g:message code="recipientList.subscribeUrl.label" default="Subscribe Url" /></span>
					
						<span class="property-value" aria-labelledby="subscribeUrl-label"><g:fieldValue bean="${recipientListInstance}" field="subscribeUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recipientListInstance?.unsubscribeUrl}">
				<li class="fieldcontain">
					<span id="unsubscribeUrl-label" class="property-label"><g:message code="recipientList.unsubscribeUrl.label" default="Unsubscribe Url" /></span>
					
						<span class="property-value" aria-labelledby="unsubscribeUrl-label"><g:fieldValue bean="${recipientListInstance}" field="unsubscribeUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recipientListInstance?.thankYouSubject}">
				<li class="fieldcontain">
					<span id="thankYouSubject-label" class="property-label"><g:message code="recipientList.thankYouSubject.label" default="Thank You Subject" /></span>
					
						<span class="property-value" aria-labelledby="thankYouSubject-label"><g:fieldValue bean="${recipientListInstance}" field="thankYouSubject"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recipientListInstance?.thankYouMessage}">
				<li class="fieldcontain">
					<span id="thankYouMessage-label" class="property-label"><g:message code="recipientList.thankYouMessage.label" default="Thank You Message" /></span>
					
						<span class="property-value" aria-labelledby="thankYouMessage-label"><g:fieldValue bean="${recipientListInstance}" field="thankYouMessage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recipientListInstance?.goodbyeSubject}">
				<li class="fieldcontain">
					<span id="goodbyeSubject-label" class="property-label"><g:message code="recipientList.goodbyeSubject.label" default="Goodbye Subject" /></span>
					
						<span class="property-value" aria-labelledby="goodbyeSubject-label"><g:fieldValue bean="${recipientListInstance}" field="goodbyeSubject"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recipientListInstance?.goodbyeMessage}">
				<li class="fieldcontain">
					<span id="goodbyeMessage-label" class="property-label"><g:message code="recipientList.goodbyeMessage.label" default="Goodbye Message" /></span>
					
						<span class="property-value" aria-labelledby="goodbyeMessage-label"><g:fieldValue bean="${recipientListInstance}" field="goodbyeMessage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recipientListInstance?.confirmationSubject}">
				<li class="fieldcontain">
					<span id="confirmationSubject-label" class="property-label"><g:message code="recipientList.confirmationSubject.label" default="Confirmation Subject" /></span>
					
						<span class="property-value" aria-labelledby="confirmationSubject-label"><g:fieldValue bean="${recipientListInstance}" field="confirmationSubject"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recipientListInstance?.confirmationMessage}">
				<li class="fieldcontain">
					<span id="confirmationMessage-label" class="property-label"><g:message code="recipientList.confirmationMessage.label" default="Confirmation Message" /></span>
					
						<span class="property-value" aria-labelledby="confirmationMessage-label"><g:fieldValue bean="${recipientListInstance}" field="confirmationMessage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recipientListInstance?.app}">
				<li class="fieldcontain">
					<span id="app-label" class="property-label"><g:message code="recipientList.app.label" default="App" /></span>
					
						<span class="property-value" aria-labelledby="app-label"><g:link controller="app" action="show" id="${recipientListInstance?.app?.id}">${recipientListInstance?.app?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${recipientListInstance?.goodbye}">
				<li class="fieldcontain">
					<span id="goodbye-label" class="property-label"><g:message code="recipientList.goodbye.label" default="Goodbye" /></span>
					
						<span class="property-value" aria-labelledby="goodbye-label"><g:formatBoolean boolean="${recipientListInstance?.goodbye}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${recipientListInstance?.optIn}">
				<li class="fieldcontain">
					<span id="optIn-label" class="property-label"><g:message code="recipientList.optIn.label" default="Opt In" /></span>
					
						<span class="property-value" aria-labelledby="optIn-label"><g:formatBoolean boolean="${recipientListInstance?.optIn}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${recipientListInstance?.thankYou}">
				<li class="fieldcontain">
					<span id="thankYou-label" class="property-label"><g:message code="recipientList.thankYou.label" default="Thank You" /></span>
					
						<span class="property-value" aria-labelledby="thankYou-label"><g:formatBoolean boolean="${recipientListInstance?.thankYou}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${recipientListInstance?.unsubscribeAllLists}">
				<li class="fieldcontain">
					<span id="unsubscribeAllLists-label" class="property-label"><g:message code="recipientList.unsubscribeAllLists.label" default="Unsubscribe All List" /></span>
					
						<span class="property-value" aria-labelledby="unsubscribeAllLists-label"><g:formatBoolean boolean="${recipientListInstance?.unsubscribeAllLists}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:recipientListInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${recipientListInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    <g:link class="create" action="addSusc" resource="${recipientListInstance}"><g:message code="recipientList.button.addSusc.label"  /></g:link>
                    <g:link class="create" action="deleteSusc" resource="${recipientListInstance}"><g:message code="recipientList.button.deleteSusc.label" /></g:link>
                </fieldset>
			</g:form>
		</div>
	</body>
</html>
