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
<h1>Campaigns</h1>
    <g:form name="myForm" action="probar" >
        <label for="title">Title</label>
        <br/>
        <g:textField name="title" size="50"/>
        <br/>
        <label for="fromName">From Name</label>
        <br/>
        <g:textField name="fromName" size="50"/>
        <br/>
        <label for="fromEmail">From Email</label>
        <br/>
        <g:textField name="fromEmail" size="50"/>
        <br/>
        <label for="replyTo">Reply to</label>
        <br/>
        <g:textField name="replyTo" size="50"/>
        <br/>
        <label for="htmlText">Html text</label>
        <br/>
        <g:textArea name="htmlText" rows="10" cols="50"/>
        <br/>
        <label for="htmlText">Plain text</label>
        <br/>
        <g:textArea name="plainText" rows="10" cols="50"/>
        <br/>
        <g:submitButton name="Guardar" value="Save" />
    </g:form>
</body>
</html>