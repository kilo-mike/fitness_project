<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Twitter</title>
</head>
<body>
<h1>logowanie</h1>

<form:form method="post" modelAttribute="instructor"><br>
    Imie instruktora:         <form:input path="name"/><br>
    <form:errors path="name"/><br>


    <input type="submit" value="dodaj">


</form:form>

</body>
</html>
