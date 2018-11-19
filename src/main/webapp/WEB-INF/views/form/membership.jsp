<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>

<form:form method="post" modelAttribute="membership"><br>


    <table id="example" class="table table-striped table-bordered" style="width:40%">

        <tr>
            <td>jaki karnet:</td>
            <td>
                <form:select path="membershiptype" items="${membershiptypes}" itemLabel="type" itemValue="id"/>
                <form:errors path="membershiptype"/>
            </td>
        </tr>
    </table>
    <input type="submit" value="dodaj">

</form:form>

<jsp:include page="../footer.jsp"/>
