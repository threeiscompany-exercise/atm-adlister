package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "controllers.ViewSingleAdServlet", urlPatterns = "/ads/viewAd")
public class ViewSingleAdServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        Ad ad = DaoFactory.getAdsDao().viewSingleAd(id);
        request.setAttribute("ad", ad);
        request.getRequestDispatcher("/WEB-INF/ads/viewAd.jsp").forward(request, response);
    }
}