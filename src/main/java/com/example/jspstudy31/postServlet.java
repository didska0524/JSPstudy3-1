package com.example.jspstudy31;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/postServlet")
public class postServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd");
        String email = request.getParameter("email");

        response.setContentType("text/html;charset=uft-8");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<body>");
        out.println("<h1>Post Servlet 방식");
        out.println("<h3>아 이 디 :"+ id +"</h3>");
        out.println("<h3>패스워드 :"+ pwd +"</h3>");
        out.println("<h3>이 메 일 :"+ email +"</h3>");
        out.println("</body>");
        out.println("</html>");

    }
}
