package com.cestar.controller;

import com.cestar.dao.UserDao;
import com.cestar.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/auth/*")
public class AuthController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = request.getPathInfo();
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        if (url == null) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid request");
            return;
        }

        // If already logged in, redirect to authenticated page
        if(request.getSession().getAttribute("loggedUser") != null && !url.equals("/logout")){
            request.getRequestDispatcher("/authenticated.jsp").forward(request, response);
            return;
        }

        // Show different pages and action based on url endpoints
        switch (url) {
            case "/register":
                request.getRequestDispatcher("/registerForm.jsp").forward(request, response);
                break;
            case "/login":
                request.getRequestDispatcher("/loginForm.jsp").forward(request, response);
                break;
            case "/logout":
                request.getSession().removeAttribute("loggedUser");
                request.getRequestDispatcher("/loginForm.jsp").forward(request, response);
                break;
            default:
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Page not found");
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = request.getPathInfo();

        if (url == null) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid request");
            return;
        }

        // Call different methods based on urls
        switch (url) {
            case "/register":
                register(request, response);
                break;
            case "/login":
                login(request, response);
                break;
            default:
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Page not found");
                break;
        }
    }

    protected void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        // Extract form parameters
        String name = request.getParameter("usr_name");
        String password = request.getParameter("usr_pwd");
        String email = request.getParameter("usr_email");
        String phone = request.getParameter("usr_contact");
        String city = request.getParameter("usr_city");

        // Create user
        User newUser = new User(0, name, password, email, phone,city);
        UserDao dao = new UserDao();
        int status = dao.registerUser(newUser);

        if (status > 0) {
            out.print("<h2 class='absolute top-5 right-5 p-5 border rounded-lg bg-green-50 border-green-500'>User registered successfully!</h2>");
            request.getRequestDispatcher("/loginForm.jsp").include(request, response);
        } else {
            out.print("<h2 class='absolute top-5 right-5 p-5 border rounded-lg bg-red-50 border-red-500'>Failed to register user</h2>");
        }
    }

    protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        // Extract login credentials
        String email = request.getParameter("usr_email");
        String password = request.getParameter("usr_pwd");

        UserDao dao = new UserDao();
        User user = dao.loginUser(email, password);

        if (user != null) {
            out.print("<h2 class='absolute top-5 right-5 p-5 border rounded-lg bg-green-50 border-green-500'>Login successful! Welcome " + user.getUsername() + ".</h2>");
            request.getSession().setAttribute("loggedUser", user);
            request.getRequestDispatcher("/authenticated.jsp").include(request, response);
        } else {
            out.print("<h2 class='absolute top-5 right-5 p-5 border rounded-lg bg-red-50 border-red-500'>Invalid credentials!</h2>");
            request.getRequestDispatcher("/loginForm.jsp").include(request, response);
        }
    }
}
