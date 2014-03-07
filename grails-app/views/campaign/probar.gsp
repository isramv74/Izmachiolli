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
<h2><g:message code="campana.header.test"/></h2>
    <g:form name="testForm" action="test">
        <g:hiddenField name="idCmp" value="${cmp.id}" />
        <label for="emailT"><g:message code="campana.label.testMail"/></label>
        <g:textField name="emailT" size="50"/>
        <br>
        <g:submitButton name="test" value="${message(code: "campana.button.test")}" />
        <g:actionSubmit value="${message(code: "campana.button.preview")}" action="preview" />
        <br>
<h2><g:message code="campana.header.links"/> </h2>
        <g:hiddenField name="lnkSize" value="${lnks.size()}"/>
        <table>
            <tr>
                <th><g:message code="campana.tableH.url"/></th>
                <th><g:message code="campana.tableH.prettyUrl"/> </th>
            </tr>
            <g:each in="${lnks}" status="st" var="lnk">
                <g:hiddenField name="lns[${st}].id" value="${lnk.id}" />
                <tr>
                    <td nowrap>${lnk.url}</td>
                    <td><g:textField name="lns[${st}].prettyUrl" value="${lnk.prettyUrl}"/></td>
                </tr>
            </g:each>
        </table>
        <g:actionSubmit value="${message(code: "campana.button.save")}" action="addLinks" />

<h2><g:message code="campana.header.schedule"/> </h2>
        <g:datePicker name="sendDate"/><br>
        <g:timeZoneSelect name="timeZone" /><br>
        <g:actionSubmit value="${message(code: "campana.button.schedule")}" action="schedule" />
    </g:form>
</body>
</html>