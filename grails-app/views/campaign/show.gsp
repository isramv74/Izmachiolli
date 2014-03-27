<%@ page import="izmachiolli.Campaign" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'campaign.label', default: 'Campaign')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-campaign" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <!--li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li-->
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
        <li><g:link class="list" action="preview" resource="${campaignInstance}"><g:message
                code="default.button.preview"/></g:link></li>
    </ul>
</div>

<div id="show-campaign" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list campaign">
        <g:if test="${campaignInstance?.title}">
            <li class="fieldcontain">
                <span id="title-label" class="property-label"><g:message code="campaign.title.label"
                                                                         default="Title"/></span>

                <span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${campaignInstance}"
                                                                                         field="title"/></span>

            </li>
        </g:if>
        <g:if test="${campaignInstance?.fromName}">
            <li class="fieldcontain">
                <span id="fromName-label" class="property-label"><g:message code="campaign.fromName.label"
                                                                            default="From Name"/></span>

                <span class="property-value" aria-labelledby="fromName-label"><g:fieldValue bean="${campaignInstance}"
                                                                                            field="fromName"/></span>

            </li>
        </g:if>

        <g:if test="${campaignInstance?.fromEmail}">
            <li class="fieldcontain">
                <span id="fromEmail-label" class="property-label"><g:message code="campaign.fromEmail.label"
                                                                             default="From Email"/></span>

                <span class="property-value" aria-labelledby="fromEmail-label"><g:fieldValue bean="${campaignInstance}"
                                                                                             field="fromEmail"/></span>

            </li>
        </g:if>

        <g:if test="${campaignInstance?.replyTo}">
            <li class="fieldcontain">
                <span id="replyTo-label" class="property-label"><g:message code="campaign.replyTo.label"
                                                                           default="Reply To"/></span>

                <span class="property-value" aria-labelledby="replyTo-label"><g:fieldValue bean="${campaignInstance}"
                                                                                           field="replyTo"/></span>

            </li>
        </g:if>

        <g:if test="${campaignInstance?.htmlText}">
            <li class="fieldcontain">
                <span id="htmlText-label" class="property-label"><g:message code="campaign.htmlText.label"
                                                                            default="Html Text"/></span>

                <span class="property-value" aria-labelledby="htmlText-label"><g:fieldValue bean="${campaignInstance}"
                                                                                            field="htmlText"/></span>

            </li>
        </g:if>
        <g:if test="${campaignInstance?.plainText}">
            <li class="fieldcontain">
                <span id="plainText-label" class="property-label"><g:message code="campaign.plainText.label"
                                                                             default="Plain Text"/></span>

                <span class="property-value" aria-labelledby="plainText-label"><g:fieldValue bean="${campaignInstance}"
                                                                                             field="plainText"/></span>

            </li>
        </g:if>

        <g:if test="${campaignInstance?.app}">
            <li class="fieldcontain">
                <span id="app-label" class="property-label"><g:message code="campaign.app.label" default="App"/></span>

                <span class="property-value" aria-labelledby="app-label"><g:link controller="app" action="show"
                                                                                 id="${campaignInstance?.app?.id}">${campaignInstance?.app?.appName}</g:link></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: campaignInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${campaignInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
            <g:link class="edit" action="test" resource="${campaignInstance}"><g:message
                    code="campaign.button.test"/></g:link>
            <g:link class="delete" action="addLinks" resource="${campaignInstance}"><g:message
                    code="campaign.button.linksConfig"/></g:link>
        </fieldset>
    </g:form>
</div>
</body>
</html>
