package com.example.jspstudy31;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ExampleServlet01", value = "/ExampleServlet01")
public class ExampleServlet01 extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=EUC-KR");
        PrintWriter out = response.getWriter();
        //html 시작
        out.println("<html>");
        out.println("<body>");
        out.println("<h1>이클립스로 서블릿 만들기</h1>");
        out.println("</body>");
        out.println("</html>");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
