<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main page</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #222;
            color: white;
        }

        .container-fluid {
            height: 100vh;
        }

        .left-side,
        .right-side {
            height: 100%;
            padding: 40px;
        }

        .left-side {
            background-color: #333;
        }

        .right-side {
            background-color: #444;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-control {
            background-color: rgba(255, 255, 255, 0.1);
            border: none;
            color: white;
        }
    </style>
</head>
<body>

<div class="container-fluid">
    <div class="row">
        <!-- Левая половина (регистрация) -->
        <div class="col-md-6 left-side">
            <div class="d-flex flex-column justify-content-center align-items-center h-100">
                <div class="form-container">
                    <h2>Sign up new user</h2>
                    <form>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Логин">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Пароль">
                        </div>
                        <button type="submit" class="btn btn-primary">Sign up</button>
                    </form>
                </div>
            </div>
        </div>
        <!-- Правая половина (вход) -->
        <div class="col-md-6 right-side">
            <div class="d-flex flex-column justify-content-center align-items-center h-100">
                <div class="form-container">
                    <h2>Login</h2>
                    <form action="/login-servlet">
                        <div class="form-group">
                            <input type="text" name="checkLogin" class="form-control" placeholder="Логин">
                        </div>
                        <div class="form-group">
                            <input type="password" name="checkPassword" class="form-control" placeholder="Пароль">
                        </div>
                        <button type="submit" class="btn btn-primary">Enter</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>



<!-- Подключаем JS Bootstrap (необязательно, если не используете JavaScript) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

<%--<a href="hello-servlet">Hello Servlet</a>--%>