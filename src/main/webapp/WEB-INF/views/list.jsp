<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>


<div id="content-wrapper">

    <c:forEach items="${session}" var="session">
        ${session.type} - ${session.instructor} - ${session.date}
    <a href="edit/${session.id}">zarejstruj</a>
    <br>
    </c:forEach>
    <!-- /.content-wrapper -->

<jsp:include page="footer.jsp"/>
