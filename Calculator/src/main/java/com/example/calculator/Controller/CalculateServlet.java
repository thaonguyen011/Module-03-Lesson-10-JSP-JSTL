package com.example.calculator.Controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="CalculateServlet", value="/calculate")
public class CalculateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, ArithmeticException {
        float first = Float.parseFloat(req.getParameter("firstOperand"));
        float second = Float.parseFloat(req.getParameter("secondOperand"));
        String operator = req.getParameter("operator");
        float result = 0;
        char operatorSymbol = ' ';

        switch (operator) {
            case ("add"):
                result = first + second;
                operatorSymbol = '+';
                break;
            case ("sub"):
                result = first - second;
                operatorSymbol = '-';
                break;
            case ("multi"):
                result = first * second;
                operatorSymbol = '*';
                break;
            case ("div"):
                result = first / second;
                operatorSymbol = '/';
                break;
        }

        PrintWriter writer = resp.getWriter();
        writer.println("<html>");
        writer.println("<h2>Result: </h2>");
        writer.println("<p>" + first + " " + operatorSymbol + " " + second + " = " + result + "</p>");
        writer.println("</html>");
    }
}
