
<%@ page import="izmachiolli.RecipientList" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recipientList.label', default: 'RecipientList')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-recipientList" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-recipientList" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'recipientList.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="confirmUrl" title="${message(code: 'recipientList.confirmUrl.label', default: 'Confirm Url')}" />
					
						<g:sortableColumn property="subscribeUrl" title="${message(code: 'recipientList.subscribeUrl.label', default: 'Subscribe Url')}" />
					
						<g:sortableColumn property="unsubscribeUrl" title="${message(code: 'recipientList.unsubscribeUrl.label', default: 'Unsubscribe Url')}" />
					
						<g:sortableColumn property="thankYouSubject" title="${message(code: 'recipientList.thankYouSubject.label', default: 'Thank You Subject')}" />
					
						<g:sortableColumn property="thankYouMessage" title="${message(code: 'recipientList.thankYouMessage.label', default: 'Thank You Message')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${recipientListInstanceList}" status="i" var="recipientListInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${recipientListInstance.id}">${fieldValue(bean: recipientListInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: recipientListInstance, field: "confirmUrl")}</td>
					
						<td>${fieldValue(bean: recipientListInstance, field: "subscribeUrl")}</td>
					
						<td>${fieldValue(bean: recipientListInstance, field: "unsubscribeUrl")}</td>
					
						<td>${fieldValue(bean: recipientListInstance, field: "thankYouSubject")}</td>
					
						<td>${fieldValue(bean: recipientListInstance, field: "thankYouMessage")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${recipientListInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
