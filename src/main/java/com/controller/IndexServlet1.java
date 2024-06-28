package com.controller;

import com.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/jdbc/index1")
public class IndexServlet1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        var user1s = UserService.listUsers();
        req.setAttribute("users", user1s);
        req.getRequestDispatcher("/WEB-INF/experiment08/index1.jsp").forward(req,resp);
    }
}
