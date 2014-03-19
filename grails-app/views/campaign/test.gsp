<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'campaign.label', default: 'Campaign')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<a href="#create-campaign" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                 default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label"/></g:link></li>
    </ul>
</div>

<div id="create-campaign" class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${campaignInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${campaignInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
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
