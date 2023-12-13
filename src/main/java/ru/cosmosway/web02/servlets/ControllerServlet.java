package ru.cosmosway.web02.servlets;

import ru.cosmosway.web02.beans.Table;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;



@WebServlet(name = "ControllerServlet", value = "/ControllerServlet")
public class ControllerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            if(request.getParameter("x") != null && request.getParameter("y") != null
                    && request.getParameter("r") != null) {
                getServletContext().getNamedDispatcher("AreaCheckServlet").forward(request, response);
            }
            else if (request.getParameter("clear") != null){
                //Получение Beans для очистки
                Table table = (Table) request.getSession().getAttribute("table");
                if (table == null) table = new Table();
                table.getTable().clear();
                request.getSession().setAttribute("table", table);
                getServletContext().getRequestDispatcher("/main.jsp").forward(request, response);
            }
            else {
                getServletContext().getRequestDispatcher("/main.jsp").forward(request, response);
            }
        } catch (Exception e) {
            getServletContext().setAttribute("error", e.getMessage());
            request.getServletContext().getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }


}
