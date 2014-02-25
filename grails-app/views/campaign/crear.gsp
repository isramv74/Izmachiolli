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
        <g:textField name="title"/>
        <br/>
        <label for="fromName">From Name</label>
        <br/>
        <g:textField name="fromName"/>
        <br/>
        <label for="fromEmail">From Email</label>
        <br/>
        <g:textField name="fromEmail"/>
        <br/>
        <label for="replyTo">Reply to</label>
        <br/>
        <g:textField name="replyTo"/>
        <br/>
        <label for="htmlText">Html text</label>
        <br/>
        <g:textArea name="htmlText" rows="5" cols="40"/>
        <br/>
        <label for="htmlText">Plain text</label>
        <br/>
        <g:textArea name="plainText" rows="5" cols="40"/>
        <br/>
        <g:submitButton name="create" value="Save" />
    </g:form>
</body>
</html>