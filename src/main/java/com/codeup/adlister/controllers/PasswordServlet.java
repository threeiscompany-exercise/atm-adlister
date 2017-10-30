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

@WebServlet(name = "PasswordServlet", urlPatterns = "/password_change")
public class PasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password = request.getParameter("password");
        String newPassword = request.getParameter("new_password");
        String confirmNewPassword = request.getParameter("confirm_new_password");
        User user = (User) request.getSession().getAttribute("user");
        String incompleteForm;
        String passChange;
        String invalidInput;

        boolean inputIncomplete = password.isEmpty()
                || newPassword.isEmpty()
                || confirmNewPassword.isEmpty();

        //checks if form is empty
        if (inputIncomplete){
            incompleteForm = "Please fill out entire form";
            System.out.println("Form is not complete");
            request.setAttribute("incompleteForm", incompleteForm);
            response.sendRedirect("/WEB-INF/password_change");

            return;
        }

        //checking if old pass is correct and new pass matches
        boolean validAttempt = Password.check(password, user.getPassword()) && (newPassword.equals(confirmNewPassword) && !password.equals(newPassword));

        //updating database
        if (validAttempt){
            DaoFactory.getUsersDao().changePassword(user, newPassword);
            passChange = "Password was changed successfully";
            request.setAttribute("passChange", passChange);
            request.getSession().setAttribute("user", DaoFactory.getUsersDao().findByUsername(user.getUsername()));
            response.sendRedirect("/profile");
//            System.out.println("Password was updated");

        } else {
            invalidInput = "Invalid input";
            request.setAttribute("invalidInput", invalidInput);
            response.sendRedirect("/WEB-INF/password_change");


        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        User currentUser = DaoFactory.getUsersDao().findByUsername(user.getUsername());
        request.setAttribute("user", currentUser);
        request.getRequestDispatcher("/WEB-INF/password_change.jsp").forward(request, response);
    }
}