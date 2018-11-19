<jsp:include page="header.jsp"/>


<div id="content-wrapper"/>

<table id="example" class="table table-striped table-bordered" style="width:40%">

    <tr>
        <td>${session.type}</td>
    </tr>
    <tr>
        <td>${session.instructor}</td>
    </tr>
    <tr>
        <td>${session.date}</td>
    </tr>
    <tr>
        <td><a href="../edit/${session.id}">zarejstruj</a></td>
    </tr>
</table>

<!-- /.content-wrapper -->

<jsp:include page="footer.jsp"/>