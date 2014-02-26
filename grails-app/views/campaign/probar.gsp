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
<h2>Test</h2>
    <g:form name="testForm" action="test">
        <g:set var="cmp" value="${cmp}" scope="request"/>
        <h3>${cmp.title}</h3>
        <label for="emailT">Test email</label>
        <g:textField name="emailT" size="100"/>
        <g:submitButton name="test" value="Test" />
        <g:actionSubmit value="Preview" action="preview" />
    </g:form>
<h2>Schedule</h2>
</body>
</html>