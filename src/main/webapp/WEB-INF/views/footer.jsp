<%--</div>--%>
<%--<!-- /#wrapper -->--%>

<%--<!-- Scroll to Top Button-->--%>
<%--<a class="scroll-to-top rounded" href="#page-top">--%>
    <%--<i class="fas fa-angle-up"></i>--%>
<%--</a>--%>

<%--<!-- Logout Modal-->--%>
<%--<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">--%>
    <%--<div class="modal-dialog" role="document">--%>
        <%--<div class="modal-content">--%>
            <%--<div class="modal-header">--%>
                <%--<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>--%>
                <%--<button class="close" type="button" data-dismiss="modal" aria-label="Close">--%>
                    <%--<span aria-hidden="true">×</span>--%>
                <%--</button>--%>
            <%--</div>--%>
            <%--<div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>--%>
            <%--<div class="modal-footer">--%>
                <%--<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>--%>
                <%--<form method="post" action="/logout">--%>
                    <%--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
                    <%--<input type="submit" class="btn btn-primary" value="Logout"/>--%>
                <%--</form>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

<%--<!-- Bootstrap core JavaScript-->--%>
<%--<script src="/resources/vendor/jquery/jquery.min.js"></script>--%>
<%--<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>--%>

<%--<!-- Core plugin JavaScript-->--%>
<%--<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>--%>

<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js" integrity="sha256-CutOzxCRucUsn6C6TcEYsauvvYilEniTXldPa6/wu0k=" crossorigin="anonymous"></script>--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.js" integrity="sha256-QvhPq+evNjd8JyxSOU5KL3jPYTD7+gWVev1OH763SL0=" crossorigin="anonymous"></script>--%>

<%--&lt;%&ndash;<script src="/resources/fullcalendar.min.js"></script>&ndash;%&gt;--%>
<%--&lt;%&ndash;<script src="/resources/jquery.min.js"></script>&ndash;%&gt;--%>
<%--&lt;%&ndash;<script src="/resources/moment.min.js"></script>&ndash;%&gt;--%>

<%--<!-- Page level plugin JavaScript-->--%>
<%--<script src="/resources/vendor/chart.js/Chart.min.js"></script>--%>
<%--<script src="/resources/vendor/datatables/jquery.dataTables.js"></script>--%>
<%--<script src="/resources/vendor/datatables/dataTables.bootstrap4.js"></script>--%>

<%--<!-- Custom scripts for all pages-->--%>
<%--<script src="/resources/js/sb-admin.min.js"></script>--%>

<%--<!-- Demo scripts for this page-->--%>
<%--&lt;%&ndash;<script src="/resources/js/demo/datatables-demo.js"></script>&ndash;%&gt;--%>
<%--&lt;%&ndash;<script src="/resources/js/demo/chart-area-demo.js"></script>&ndash;%&gt;--%>
<%--<script src="/resources/js/calendar.js"></script>--%>
<%--</body>--%>

<%--</html>--%>


</div>
<!-- /#wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <form method="post" action="/logout">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <input type="submit" class="btn btn-primary" value="Logout"/>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal" tabindex="-1" role="dialog" id="modalUniversal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Detale</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Instruktor: <span class="modal-event-instructor"></span></p>
                <p>Zajecia: <span class="modal-event-name"></span></p>
                <p>Data: <span class="modal-event-date"></span></p>
            </div>
            <div class="modal-footer">
                <a href="" class="btn btn-primary modal-event-register"><span class="modal-event-button-type"></a>
            </div>
        </div>
    </div>
</div>

<script src="/resources/vendor/jquery/jquery.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Bootstrap core JavaScript-->
<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="/resources/js/sb-admin.min.js"></script>

<script src='/resources/fullcalendar-3.9.0/lib/moment.min.js'></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/locale/pl.js" integrity="sha256-prSi7A1V9ZxDIIGoYopovpFgGHQodz6JVZu5Aad7o8s=" crossorigin="anonymous"></script>
<script src='/resources/fullcalendar-3.9.0/fullcalendar.min.js'></script>

<script src="/resources/vendor/chart.js/Chart.min.js"></script>
<script src="/resources/vendor/datatables/jquery.dataTables.js"></script>
<script src="/resources/vendor/datatables/dataTables.bootstrap4.js"></script>

<!-- Page level plugin JavaScript-->


<script src="/resources/js/calendar.js"></script>
<script src="/resources/js/calendarUser.js"></script>
<!-- Demo scripts for this page-->
<%--<script src="/resources/js/demo/datatables-demo.js"></script>--%>
<%--<script src="/resources/js/demo/chart-area-demo.js"></script>--%>

</body>

</html>