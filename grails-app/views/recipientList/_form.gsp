<%@ page import="izmachiolli.RecipientList" %>

<div class="fieldcontain ${hasErrors(bean: recipientListInstance, field: 'name', 'error')} required">
    <g:hiddenField name="app" value="1"/>
	<label for="name">
		<g:message code="recipientList.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${recipientListInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: recipientListInstance, field: 'subscribeUrl', 'error')} ">
    <label for="subscribeUrl">
        <g:message code="recipientList.subscribeUrl.label" default="Subscribe Url" />

    </label>
    <g:textField name="subscribeUrl" value="${recipientListInstance?.subscribeUrl}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: recipientListInstance, field: 'thankYou', 'error')} ">
    <label for="thankYou">
    </label>
    <g:checkBox name="thankYou" value="${recipientListInstance?.thankYou}" />
    <g:message code="recipientList.thankYou.label" default="Thank You" />
</div>
<div class="fieldcontain ${hasErrors(bean: recipientListInstance, field: 'thankYouSubject', 'error')} ">
    <label for="thankYouSubject">
        <g:message code="recipientList.thankYouSubject.label" default="Thank You Subject" />

    </label>
    <g:textField name="thankYouSubject" value="${recipientListInstance?.thankYouSubject}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: recipientListInstance, field: 'thankYouMessage', 'error')} ">
    <label for="thankYouMessage">
        <g:message code="recipientList.thankYouMessage.label" default="Thank You Message" />

    </label>
    <g:textArea name="thankYouMessage" cols="40" rows="5" maxlength="5000" value="${recipientListInstance?.thankYouMessage}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: recipientListInstance, field: 'optIn', 'error')} ">
    <label for="optIn">
    </label>
    <g:checkBox name="optIn" value="${recipientListInstance?.optIn}" />
    <g:message code="recipientList.optIn.label" default="Opt In" />
</div>
<div class="fieldcontain ${hasErrors(bean: recipientListInstance, field: 'confirmUrl', 'error')} ">
    <label for="confirmUrl">
        <g:message code="recipientList.confirmUrl.label" default="Confirm Url" />
    </label>
    <g:textField name="confirmUrl" value="${recipientListInstance?.confirmUrl}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: recipientListInstance, field: 'confirmationSubject', 'error')} ">
    <label for="confirmationSubject">
        <g:message code="recipientList.confirmationSubject.label" default="Confirmation Subject" />

    </label>
    <g:textField name="confirmationSubject" value="${recipientListInstance?.confirmationSubject}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: recipientListInstance, field: 'confirmationMessage', 'error')} ">
    <label for="confirmationMessage">
        <g:message code="recipientList.confirmationMessage.label" default="Confirmation Message" />

    </label>
    <g:textArea name="confirmationMessage" cols="40" rows="5" maxlength="5000" value="${recipientListInstance?.confirmationMessage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: recipientListInstance, field: 'goodbye', 'error')} ">
    <label for="goodbye">
    </label>
    <g:checkBox name="goodbye" value="${recipientListInstance?.goodbye}" />
    <g:message code="recipientList.goodbye.label" default="Goodbye" />
</div>
<div class="fieldcontain ${hasErrors(bean: recipientListInstance, field: 'unsubscribeUrl', 'error')} ">
    <label for="unsubscribeUrl">
        <g:message code="recipientList.unsubscribeUrl.label" default="Unsubscribe Url" />

    </label>
    <g:textField name="unsubscribeUrl" value="${recipientListInstance?.unsubscribeUrl}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: recipientListInstance, field: 'goodbyeSubject', 'error')} ">
	<label for="goodbyeSubject">
		<g:message code="recipientList.goodbyeSubject.label" default="Goodbye Subject" />

	</label>
	<g:textField name="goodbyeSubject" value="${recipientListInstance?.goodbyeSubject}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: recipientListInstance, field: 'goodbyeMessage', 'error')} ">
	<label for="goodbyeMessage">
		<g:message code="recipientList.goodbyeMessage.label" default="Goodbye Message" />
		
	</label>
	<g:textArea name="goodbyeMessage" cols="40" rows="5" maxlength="5000" value="${recipientListInstance?.goodbyeMessage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: recipientListInstance, field: 'unsubscribeAllLists', 'error')} ">
	<label for="unsubscribeAllLists">
	</label>
	<g:checkBox name="unsubscribeAllLists" value="${recipientListInstance?.unsubscribeAllLists}" />
    <g:message code="recipientList.unsubscribeAllLists.label" default="Unsubscribe All List" />
</div>

