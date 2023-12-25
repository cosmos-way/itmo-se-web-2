<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="ru.cosmosway.web02.beans.Table" %>
<%@ page import="ru.cosmosway.web02.beans.RowCheckout" %>

<div class="result-table">
    <table id="result-table" cellspacing="6" cellpadding="15">
        <jsp:useBean id="table" class="ru.cosmosway.web02.beans.Table" scope="session"/>
        <caption><b>Результат</b></caption>
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


