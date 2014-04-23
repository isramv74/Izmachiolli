<%@ page import="izmachiolli.Subscriber" %>

<div class="fieldcontain ${hasErrors(bean: subscriberInstance, field: 'name', 'error')} ">
    <label for="name">
        <g:message code="subscriber.name.label" default="Name" />

    </label>
    <g:textField name="name" value="${subscriberInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: subscriberInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="subscriber.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${subscriberInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: subscriberInstance, field: 'joinDate', 'error')} required">
	<label for="joinDate">
		<g:message code="subscriber.joinDate.label" default="Join Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="joinDate" precision="day"  value="${subscriberInstance?.joinDate}"  />
</div>



