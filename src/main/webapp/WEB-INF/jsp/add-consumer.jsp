<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>add consumer</title>
</head>
<body>
<h1>add consumer</h1>
<form:form modelAttribute="consumer" action="/consumer/save" method='POST'>
    <table>
        <tr>
            <td>Name:</td>
            <td><form:input path="name" /></td>
        </tr>
        <tr>
            <td>Address:</td>
            <td><form:input path="address" /></td>
        </tr>
        <tr>
            <td>Phone:</td>
            <td><form:input path="phone" /></td>
        </tr>
        <tr>
            <td>Date of birth:</td>
            <td><form:input path="birth_date" type="date" /></td>
        </tr>
        <tr>
            <td><input name="submit" type="submit" value="Save" /></td>
        </tr>
    </table>
</form:form>
</body>
</html>