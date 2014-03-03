<%--
  Created by IntelliJ IDEA.
  User: adriana
  Date: 2/27/14
  Time: 10:06 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Configurar Links</title>
</head>

<body>
    <table>
            <tr>
                <th>URL</th>
                <th>Friendly URL</th>
            </tr>
    <g:each in="${lnks}" status="jj" var="lnk">
    <tr>
            <td nowrap>${lnk.url}</td>
            <td><g:textField name="prettyUrl"></g:textField></td>
    </tr>
    </g:each>
        </table>
</body>
</html>