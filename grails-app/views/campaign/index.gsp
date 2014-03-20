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
        <!--li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li-->
        <li><g:link class="create" action="create"><g:message code="campaign.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-campaign" class="content scaffold-list" role="main">
    <h1><g:message code="campaign.header.principal"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>
            <g:sortableColumn property="title" title="${message(code: 'campaign.title.label', default: 'Title')}"/>
        </tr>
        </thead>
        <tbody>
        <g:each in="${campaignInstanceList}" status="i" var="campaignInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${campaignInstance.id}">${fieldValue(bean: campaignInstance, field: "title")}</g:link></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${campaignInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
