<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Your JSP Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <style>
        body {
            background-color: #333;
            color: #fff;
        }

        /* Стиль для таблицы */
        .custom-table {
            background-color: #222;
            color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }

        .custom-table h2 {
            color: #fff;
            text-align: center;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .custom-table thead {
            background-color: #444;
        }

        .custom-table th, .custom-table td {
            border-color: #555;
        }

        /* Измененный стиль для ссылок */
        .custom-link {
            color: #00cc99;
            text-decoration: none;
            font-weight: bold;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.4);
        }

        .custom-link:hover {
            color: #009966;
        }
    </style>
</head>
<body>
<div class="container-fluid mt-5">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="custom-table">
                <h2 class="text-center">Users Table</h2>
                <table class="table table-bordered table-dark">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>First</th>
                        <th>Pass</th>
                        <th>Edit</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach var="user" items="${requestScope.users}">
                    <tr>
                        <th scope="row">${user.id}</th>
                        <td>${user.login}</td>
                        <td>${user.password}</td>
                        <td><a href="/user-servlet?id=${user.id}" class="custom-link">edit ${user.login}</a></td>
                    </tr>
                    </c:forEach>

                </table>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
</body>
</html>
