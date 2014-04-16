<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title><g:message code="campaign.test.label" args="[entityName]"/></title>
</head>

<body>
<a href="#create-campaign" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                 default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><g:link class="list" action="show" resource="${campaignInstance}"><g:message code="default.navigate.back"/></g:link></li>
    </ul>
</div>

<div id="create-campaign" class="content scaffold-create" role="main">
    <h1><g:message code="campaign.test.label"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:if test="${flash.error}">
        <div class="errors" role="status">${flash.error}</div>
    </g:if>
    <g:form url="[resource: campaignInstance, action: 'sendTest']">
        <g:hiddenField name="app" value="1"/>
       <fieldset class="form">
        <div class="fieldcontain">
            <label for="testMail">
                <g:message code="campaign.testMail.label"/>
            </label>
            <g:field type="email" name="testMail" required=""/>
        </div>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="test" class="save"
                            value="${message(code: 'campaign.button.send')}"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
