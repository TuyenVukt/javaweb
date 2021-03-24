<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Đăng nhập</title>
    <!-- Font Icon -->
    <link rel="stylesheet" href="template/login/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="template/login/css/style.css">
</head>
<body>

<div class="main">

    <!-- Sing in  Form -->
    <section class="sign-in">
        <div class="container">
            <div class="signin-content">
                <div class="signin-image">
                    <figure><img src="template/login/images/signin-image.jpg" alt="sing up image"></figure>
                    <a href="${pageContext.request.contextPath}/register" class="signup-image-link">Create an account</a>
                    <a href="${pageContext.request.contextPath}/home" class="signup-image-link">Back to home</a>

                </div>

                <div class="signin-form">
                    <h2 class="form-title">Sign in</h2>
                    <small class = "text-danger">${mess}</small>
                    <form method="POST" class="register-form" id="login-form" action="login" >
                        <div class="form-group">
                            <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="user" id="your_name" placeholder="UserName or email"/>
                        </div>
                        <div class="form-group">
                            <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                            <input type="password" name="pass" id="your_pass" placeholder="Password"/>
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                            <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                        </div>
                        <div class="form-group form-button">
                            <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                        </div>
                    </form>
                    <div class="social-login">
                        <span class="social-label">Or login with</span>
                        <ul class="socials">
                            <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                            <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                            <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>

<!-- JS -->
<script src="template/login/vendor/jquery/jquery.min.js"></script>
<script src="template/login/js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>

<%--<div id="logreg-forms">--%>
<%--    <form class="form-signin" action="login" method="post">--%>
<%--        <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>--%>
<%--        <p class = "text-danger">${mess}</p>--%>

<%--        <input name="user"  type="text" id="inputEmail" class="form-control" placeholder="Username" required="" autofocus="">--%>
<%--        <input name="pass"  type="password" id="inputPassword" class="form-control" placeholder="Password" required="">--%>

<%--        <div class="form-group form-check">--%>
<%--            <input name="remember" value="1" type="checkbox" class="form-check-input" id="exampleCheck1">--%>
<%--            <label class="form-check-label" for="exampleCheck1">Remember me</label>--%>
<%--        </div>--%>

<%--        <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>--%>
<%--        <hr>--%>
<%--        <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Sign up New Account</button>--%>
<%--    </form>--%>

<%--    <form action="signup" method="post" class="form-signup">--%>
<%--        <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign up</h1>--%>
<%--        <input name="user" type="text" id="user-name" class="form-control" placeholder="User name" required="" autofocus="">--%>
<%--        <input name="pass" type="password" id="user-pass" class="form-control" placeholder="Password" required autofocus="">--%>
<%--        <input name="repass" type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus="">--%>

<%--        <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>--%>
<%--        <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>--%>
<%--    </form>--%>
<%--    <br>--%>

<%--</div>--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>
<%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>--%>
<%--<script>--%>
<%--    function toggleResetPswd(e) {--%>
<%--        e.preventDefault();--%>
<%--        $('#logreg-forms .form-signin').toggle() // display:block or none--%>
<%--        $('#logreg-forms .form-reset').toggle() // display:block or none--%>
<%--    }--%>

<%--    function toggleSignUp(e) {--%>
<%--        e.preventDefault();--%>
<%--        $('#logreg-forms .form-signin').toggle(); // display:block or none--%>
<%--        $('#logreg-forms .form-signup').toggle(); // display:block or none--%>
<%--    }--%>

<%--    $(() => {--%>
<%--        // Login Register Form--%>
<%--        $('#logreg-forms #forgot_pswd').click(toggleResetPswd);--%>
<%--        $('#logreg-forms #cancel_reset').click(toggleResetPswd);--%>
<%--        $('#logreg-forms #btn-signup').click(toggleSignUp);--%>
<%--        $('#logreg-forms #cancel_signup').click(toggleSignUp);--%>
<%--    })--%>
<%--</script>--%>