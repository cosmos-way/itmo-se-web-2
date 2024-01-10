package ru.cosmosway.web02.servlets;

import  ru.cosmosway.web02.validation.Validator;
import  ru.cosmosway.web02.beans.RowCheckout;
import  ru.cosmosway.web02.beans.Table;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.time.LocalTime;
import java.time.format.DateTimeFormatter;


import java.io.IOException;

import static java.lang.Math.pow;

@WebServlet(name = "AreaCheckServlet", value = "/check")
public class AreaCheckServlet extends HttpServlet {
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String strX = request.getParameter("x");
            String strY = request.getParameter("y");
            String strR = request.getParameter("r");
            if (!(strX.length() <= 10 && strY.length() <= 10 && strR.length() <= 10)) {
                return;
            }
            float x = Float.parseFloat(strX);
            float y = Float.parseFloat(strY);
            float r = Float.parseFloat(strR);

            Validator validator = new Validator(x, y, r);
            long startTime = System.nanoTime();
            if (validator.validate()) {

                LocalTime time = LocalTime.now();
                boolean areaIntersection = checkout(x, y, r);
                String currentTime = time.format(formatter);
                String scriptTime = String.format("%.2f", (double) (System.nanoTime() - startTime) * 0.0001);
                RowCheckout row = new RowCheckout(x, y, r, areaIntersection, currentTime, scriptTime);


                Table table = (Table) request.getSession().getAttribute("table");
                if (table == null) table = new Table();

                table.getTable().add(row);

                request.getSession().setAttribute("table", table);
//                request.getSession().setAttribute("check", row);
                request.setAttribute("check", row);
                request.setAttribute("resultIndex", table.getTable().size());
//                request.sendRedirect("/result.jsp");
                getServletContext().getRequestDispatcher("/result.jsp").forward(request, response);
            }else
            {
                getServletContext().setAttribute("error", "Ошибка валидации");
                request.getRequestDispatcher("/error.jsp").forward(request, response);
            }



        } catch (Exception e) {
            getServletContext().setAttribute("error", e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }

    }

    public static boolean checkout(float x, float y, float r) {
        return checkTriangle(x,y,r) || checkRectangle(x,y,r) || checkCircle(x,y,r);
    }

    public static boolean checkCircle(float x, float y, float r) {
        return x >= 0 && y >= 0 && x*x + y*y <= (double)r*r/4;
    }

    public static boolean checkTriangle(float x, float y, float r) {
        return x >=0 && y <=0 && (y + x <=(double)r/2);
    }

    public static boolean checkRectangle(float x, float y, float r) {
        return x <= 0 && y <= 0 && Math.abs(x) <= r && Math.abs(y) <= (double)r;
    }


}
