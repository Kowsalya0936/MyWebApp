package com.mycompany.app;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MessageServlet extends HttpServlet {
    private static final List<String> messages = new ArrayList<>();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("username");
        String message = req.getParameter("message");
        synchronized (messages) {
            messages.add("<b style='color:#2C3E50'>" + name + ":</b> "
                       + "<span style='color:#8E44AD'>" + message + "</span>");
        }
        resp.sendRedirect("index.html");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("<div style='font-family:Arial;padding:10px;'>");
        synchronized (messages) {
            for (String msg : messages) {
                out.println("<p>" + msg + "</p>");
            }
        }
        out.println("</div>");
    }
}

