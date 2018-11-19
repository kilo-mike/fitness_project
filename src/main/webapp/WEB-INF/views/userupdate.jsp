<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="header.jsp"/>


<form:form method="post"
           modelAttribute="user">
    <form:hidden  path="id" />
    <form:hidden  path="username" />
    <form:hidden  path="password" />
    <form:hidden  path="enabled" />

    Zmien email: <form:input type="emial" path="email"/><br>
    <form:errors path="email"/><br>

    <input type="submit" value="Save">
</form:form>


<jsp:include page="footer.jsp"/>