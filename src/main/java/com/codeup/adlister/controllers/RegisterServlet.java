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

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getSession().getAttribute("user") != null ){
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");
        HashMap<String, String> errors = new HashMap<>();

        if(username.isEmpty()){
            request.setAttribute("email", email);
            errors.put("username", "A Username is required");
        }
        if(email.isEmpty()){
            errors.put("email", "An email is required");
        }
        if(password.isEmpty()){
            errors.put("password", "A password is required");
        }
        if(!password.equals(passwordConfirmation)){
            request.setAttribute("username", username);
            request.setAttribute("email", email);
            errors.put("passwordConfirmation", "Passwords must match");
        }

        User userIsFound = DaoFactory.getUsersDao().findByUsername(username);
        if (userIsFound != null) {
            errors.put("userTaken", "Username is already taken");
        }
        if (!errors.isEmpty()) {
            request.setAttribute("username", username);
            request.setAttribute("email", email);
            request.setAttribute("errors", errors);
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            return;
        }else{
            // create and save a new user - where password inserts hash password
            User user = new User(username, email, Password.hash(password));
            DaoFactory.getUsersDao().insert(user);
            request.getSession().setAttribute("user", user);
            response.sendRedirect("/profile");
            request.setAttribute("username", username);
//            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);

        }

    }



}
