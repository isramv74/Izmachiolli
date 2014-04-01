<%--
  Created by IntelliJ IDEA.
  User: adriana
  Date: 2/23/14
  Time: 3:56 PM
--%>
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
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
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
        <fieldset class="form">
            <g:render template="form"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save"
                            value="${message(code: 'default.button.create.label', default: 'Create')}"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>

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
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
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
        <fieldset class="form">
                <label for="title"><g:message code="campana.label.title"/></label>
        <br/>
        <g:textField name="title" value="${cmp.title}" size="50"/>
        <br/>
        <label for="fromName"><g:message code="campana.label.fromName"/></label>
        <br/>
        <g:textField name="fromName" size="50" value="${cmp.fromName}"/>
        <br/>
        <label for="fromEmail"><g:message code="campana.label.fromEmail"/></label>
        <br/>
        <g:textField name="fromEmail" size="50" value="${cmp.fromEmail}"/>
        <br/>
        <label for="replyTo"><g:message code="campana.label.replyTo"/></label>
        <br/>
        <g:textField name="replyTo" size="50" value="${cmp.replyTo}"/>
        <br/>
        <label for="htmlText"><g:message code="campana.label.htmlText"/></label>
        <br/>
        <g:textArea name="htmlText" rows="10" cols="50" value="${cmp.htmlText}"/>
        <br/>
        <label for="plainText"><g:message code="campana.label.plaintText"/></label>
        <br/>
        <g:textArea name="plainText" rows="10" cols="50" value="${cmp.plainText}"/>
        <br/>
        <g:submitButton name="Guardar" value="${message(code:'campana.button.save')}" />
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save"
                            value="${message(code: 'default.button.create.label', default: 'Create')}"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>