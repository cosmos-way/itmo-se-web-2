<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="ru.cosmosway.web02.beans.Table" %>
<%@ page import="ru.cosmosway.web02.beans.RowCheckout" %>

<section class="main-container__item main-container__item_table content-section content-section_table">
    <h2 class="content-section__header content-section__header_table topper">
                <span class="content-section__header__text">
                    Таблица
                </span>
    </h2>
    <div class="result-table_container">
        <table class="result-table" id="results">
            <jsp:useBean id="table" class="ru.cosmosway.web02.beans.Table" scope="session"/>

            <tr>
                <th>#</th>
                <th>Time</th>
                <th>Exec time (ms)</th>
                <th>x</th>
                <th>y</th>
                <th>r</th>
                <th>Result</th>
            </tr>
            <%
                int i=1;
                if (table != null) {
                    for (RowCheckout row : table.getTable()) {
            %>

            <tr>
                <td><%= i++ %></td>
                <td><%=row.getTime()%>
                </td>
                <td><%=row.getExecTime()%>
                </td>
                <td><%=row.getX()%>
                </td>
                <td><%=row.getY()%>
                </td>
                <td><%=row.getR()%>
                </td>
                <td><%=row.getAreaIntersection()%>
                </td>
            </tr>
            <%
                    }
                }
            %>
        </table>
    </div>
</section>