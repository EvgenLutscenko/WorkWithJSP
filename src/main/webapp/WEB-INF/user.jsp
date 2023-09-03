<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>

  <div class="container mt-5">
      <div class="row justify-content-center">
          <div class="col-md-6">
              <!-- Отображение данных пользователя -->
              <div class="alert alert-info">
                  <strong>User ID:</strong> ${requestScope.user.id}<br>
                  <strong>Login:</strong> ${requestScope.user.login}<br>
                  <strong>Password:</strong> ${requestScope.user.password}
              </div>

              <!-- Форма для обновления данных пользователя -->
              <form class="card bg-light p-4" action="/user-servlet?id=${user.id}" method="post">
                  <div class="card-header bg-dark text-white">
                      Edit User
                  </div>
                  <div class="card-body">
                      <div class="form-group">
                          <label for="newLogin">Новый логин:</label>
                          <input type="text" class="form-control" id="newLogin" name="newLogin" placeholder="Enter new login">
                      </div>
                      <div class="form-group">
                          <label for="newPassword">Новый пароль:</label>
                          <input type="password" class="form-control" id="newPassword" name="newPassword" placeholder="Enter new password">
                      </div>
                      <button type="submit" class="btn btn-dark btn-block mt-3">Update</button>
                  </div>
              </form>
          </div>
      </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>
