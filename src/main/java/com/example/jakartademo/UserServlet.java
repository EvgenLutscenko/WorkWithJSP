package com.example.jakartademo;

import java.io.*;
import java.util.List;

import com.example.jakartademo.entity.User;
import com.example.jakartademo.servise.UserService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "UserServlet", value = "/user-servlet")
public class UserServlet extends HttpServlet {

    public void init() {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        UserService userService = new UserService();

        int id = Integer.parseInt(request.getParameter("id"));
        User user = userService.getUserById(id);

        request.setAttribute("user", user);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("WEB-INF/user.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));

        String login = request.getParameter("newLogin");
        String pass = request.getParameter("newPassword");

        UserService userService = new UserService();
        userService.updateUser(id, login, pass);

        userService.printUserToConsoleById(id);

        List<User> users = userService.getAllUsers();

        request.setAttribute("users", users);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("WEB-INF/exemple.jsp");
        requestDispatcher.forward(request, response);
    }

    public void destroy() {
    }

}