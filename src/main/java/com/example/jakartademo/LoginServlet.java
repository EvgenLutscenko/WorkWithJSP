package com.example.jakartademo;

import com.example.jakartademo.entity.User;
import com.example.jakartademo.servise.UserService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "loginServlet", value = "/login-servlet")
public class LoginServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        User user = new User(1, request.getParameter("checkLogin"), request.getParameter("checkPassword"));

        UserService userService = new UserService();
        userService.printAllAdminsToConsole();

        List<User> admins = userService.getAllAdmin();
        List<User> users = userService.getAllUsers();

        if(admins.contains(user)){
            request.setAttribute("users", users);

            RequestDispatcher requestDispatcher = request.getRequestDispatcher("WEB-INF/exemple.jsp");
            requestDispatcher.forward(request, response);
        }else{
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
            requestDispatcher.forward(request, response);
        }
    }

    public void destroy() {
    }
}