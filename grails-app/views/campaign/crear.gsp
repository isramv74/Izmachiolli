<%--
  Created by IntelliJ IDEA.
  User: adriana
  Date: 2/23/14
  Time: 3:56 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Campaign</title>
</head>

<body>
<h1><g:message code="campana.header.principal"></g:message></h1>
    <g:form name="myForm" action="probar" >
        <g:renderErrors bean="${cmp}" />
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
    </g:form>
</body>
</html>