package com.example.jakartademo;

import java.io.*;
import java.util.List;
import java.util.Locale;

import com.example.jakartademo.entity.User;
import com.example.jakartademo.servise.UserService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        UserService userService = new UserService();
        userService.printAllUserToConsole();

        List<User> users = userService.getAllUsers();

        request.setAttribute("users", users);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("WEB-INF/exemple.jsp");
        requestDispatcher.forward(request, response);
    }

    public void destroy() {
    }
}