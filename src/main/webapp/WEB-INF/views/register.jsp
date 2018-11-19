<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Register</title>

    <!-- Bootstrap core CSS-->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="/resources/css/sb-admin.css" rel="stylesheet">

</head>

<body class="bg-dark">

<div class="container">
    <div class="card card-register mx-auto mt-5">
        <div class="card-header">Register an Account</div>
        <div class="card-body">
            <form:form method="post" modelAttribute="dto">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                <div class="form-group">
                        <div class="form-label-group">
                            <form:input type="text" id="firstName" path="name" class="form-control" placeholder="First name" required="required" autofocus="autofocus"/>
                            <label for="firstName">Name</label>
                        </div>

                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <form:input type="text" id="inputEmail" path="username" class="form-control" placeholder="username" required="required"/>
                        <label for="inputEmail">username</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <form:input type="text" id="email" path="email" class="form-control" placeholder="Email address" required="required"/>
                        <label for="inputEmail">email</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <form:input type="password" id="inputPassword" path="password" class="form-control" placeholder="Password" required="required"/>
                                <label for="inputPassword">Password</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <form:input type="password" id="confirmPassword" path="confirm_password" class="form-control" placeholder="Confirm password" required="required"/>
                                <label for="confirmPassword">Confirm password</label>
                            </div>
                        </div>
                    </div>
                </div>
                <input type="submit" class="btn btn-primary btn-block" value="Register"/>
                <div class="col-md-6">
                    <div class="form-label-group">
                        <form:errors path="name" />
                        <form:errors path="username" />
                        <form:errors path="password" />
                        <form:errors path="confirm_password" />
                    </div>
                </div>
            </form:form>

            <div class="text-center">
                <a class="d-block small mt-3" href="/login">Login Page</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

</body>

</html>
