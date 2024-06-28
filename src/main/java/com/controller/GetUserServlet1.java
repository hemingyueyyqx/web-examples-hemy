package com.controller;

import com.entity.User1;
import com.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/jdbc/getuser1")
public class GetUserServlet1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int userid = Integer.parseInt(req.getParameter("userid"));
        User1 user1 = UserService.getUser(userid);
        req.setAttribute("user", user1);
        req.getRequestDispatcher("/WEB-INF/experiment08/getuser1.jsp").forward(req, resp);
    }
}

