package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        HashMap<String, String> errors = new HashMap<>();

        if(username.isEmpty()){
            errors.put("username", "A username is required");
            request.setAttribute("username", "");
        }

        if(password.isEmpty()){
            errors.put("password", "A Password is required");
            request.setAttribute("password", "");
        }

        if(!errors.isEmpty()){
            request.setAttribute("errors", errors);
            request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request,response);
        }else{
            User user = DaoFactory.getUsersDao().findByUsername(username);

            if (user == null) {
                errors.put("noUser", "Username not found");
                request.setAttribute("username", username);//Repopulates username
                request.setAttribute("errors", errors);
                request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
            }

            boolean validAttempt = Password.check(password, user.getPassword());

            if (validAttempt) {
                request.getSession().setAttribute("user", user);
                response.sendRedirect("/profile");
            } else {
                request.setAttribute("username", username);//Repopulates username
                request.setAttribute("password", password);
                errors.put("passwordMismatch", "Password and username don't match");
                request.setAttribute("errors", errors);
                request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);

            }
        }
    }
}
