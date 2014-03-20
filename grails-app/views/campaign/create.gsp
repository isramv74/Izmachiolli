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
        <!--li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li-->
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
    <g:form url="[resource: campaignInstance, action: 'save']">
        <g:hiddenField name="app" value="1"/>
       <fieldset class="form">
        <div class="fieldcontain ${hasErrors(bean: campaignInstance, field: 'title', 'error')} required">
            <label for="title">
                <g:message code="campaign.title.label" default="Title"/>
                <span class="required-indicator">*</span>
            </label>
            <g:textField name="title" required="" value="${campaignInstance?.title}"/>
        </div>

        <div class="fieldcontain ${hasErrors(bean: campaignInstance, field: 'fromName', 'error')} required">
            <label for="fromName">
                <g:message code="campaign.fromName.label" default="From Name"/>
                <span class="required-indicator">*</span>
            </label>
            <g:textField name="fromName" required="" value="${campaignInstance?.fromName}"/>
        </div>

        <div class="fieldcontain ${hasErrors(bean: campaignInstance, field: 'fromEmail', 'error')} required">
            <label for="fromEmail">
                <g:message code="campaign.fromEmail.label" default="From Email"/>
                <span class="required-indicator">*</span>
            </label>
            <g:field type="email" name="fromEmail" required="" value="${campaignInstance?.fromEmail}"/>
        </div>

        <div class="fieldcontain ${hasErrors(bean: campaignInstance, field: 'replyTo', 'error')} required">
            <label for="replyTo">
                <g:message code="campaign.replyTo.label" default="Reply To"/>
                <span class="required-indicator">*</span>
            </label>
            <g:field type="email" name="replyTo" required="" value="${campaignInstance?.replyTo}"/>
        </div>

        <div class="fieldcontain ${hasErrors(bean: campaignInstance, field: 'htmlText', 'error')} required">
            <label for="htmlText">
                <g:message code="campaign.htmlText.label" default="Html Text"/>
                <span class="required-indicator">*</span>
            </label>
            <g:textArea name="htmlText" cols="40" rows="5" maxlength="5000" required="" value="${campaignInstance?.htmlText}"/>
        </div>

        <div class="fieldcontain ${hasErrors(bean: campaignInstance, field: 'plainText', 'error')} required">
            <label for="plainText">
                <g:message code="campaign.plainText.label" default="Plain Text"/>
                <span class="required-indicator">*</span>
            </label>
            <g:textArea name="plainText" cols="40" rows="5" maxlength="5000" required=""
                        value="${campaignInstance?.plainText}"/>
        </div>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save"
                            value="${message(code: 'default.button.create.label', default: 'Create')}"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
