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

<form:form method="post" modelAttribute="session"><br>
    kiedy:         <form:input type="datetime-local" path="date"/><br>
    <form:errors path="date"/><br>
    rodzaj: <form:select path="type" items="${types}" itemLabel="name" itemValue="id"/><br>
    <form:errors path="type"/><br>
    kto prowadzi: <form:select path="instructor" items="${instructors}" itemLabel="name" itemValue="id"/><br>
    <form:errors path="instructor"/><br>


    <input type="submit" value="dodaj">


</form:form>

</body>
</html>
