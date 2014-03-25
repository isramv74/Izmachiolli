<%@ page import="izmachiolli.Campaign" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'campaign.label', default: 'Campaign')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-campaign" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><g:link class="list" action="show" resource="${campaignInstance}"><g:message code="campaign.return.label"/></g:link></li>
    </ul>
</div>

<div id="list-campaign" class="content scaffold-list" role="main">
    <g:form url="[resource: campaignInstance, action: 'saveLinks']">
        <g:hiddenField name="lnkSize" value="${campaignInstance.links.size()}"/>
    <h1><g:message code="campaign.header.principal"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>
            <g:sortableColumn property="title" title="${message(code: 'campaign.tableH.url')}"/>
            <g:sortableColumn property="title" title="${message(code: 'campaign.tableH.prettyUrl')}"/>
        </tr>
        </thead>
        <tbody>
        <g:each in="${campaignInstance.links}" status="i" var="lnk">

            <g:hiddenField name="lns[${i}].id" value="${lnk.id}" />
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                    <td >${lnk.url}</td>
                    <td><g:field type="text" name="lns[${i}].prettyUrl" value="${lnk.prettyUrl}" size="50"/></td>
            </tr>
        </g:each>
        </tbody>
    </table>
    <fieldset class="buttons">
        <g:submitButton name="save" class="save"
                        value="${message(code: 'campaign.button.save')}"/>
    </fieldset>
    </g:form>
</div>
</body>
</html>