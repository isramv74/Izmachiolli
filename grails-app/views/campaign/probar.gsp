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
<h1>${cmp.title}</h1>
<h2>Test</h2>
    <g:form name="testForm" action="test">
        <g:hiddenField name="idCmp" value="${cmp.id}" />
        <label for="emailT">Test email</label>
        <g:textField name="emailT" size="50"/>
        <br>
        <g:submitButton name="test" value="Test" />
        <g:actionSubmit value="Preview" action="preview" />
        <br>
<h2>Enlaces</h2>
        <g:hiddenField name="lnkSize" value="${lnks.size()}"/>
        <table>
            <tr>
                <th>URL</th>
                <th>Friendly URL</th>
            </tr>
            <g:each in="${lnks}" status="st" var="lnk">
                <g:hiddenField name="lns[${st}].id" value="${lnk.id}" />
                <tr>
                    <td nowrap>${lnk.url}</td>
                    <td><g:textField name="lns[${st}].prettyUrl" value="${lnk.prettyUrl}"/></td>
                </tr>
            </g:each>
        </table>
        <g:actionSubmit value="Guardar" action="addLinks" />
    </g:form>
<h2>Schedule</h2>

</body>
</html>