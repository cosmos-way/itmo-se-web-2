<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="ru.cosmosway.web02.beans.RowCheckout" %>
<%@ page import="ru.cosmosway.web02.beans.Table" %>

<div class="result-table">
    <table id="result-table">
        <jsp:useBean id="check" class="ru.cosmosway.web02.beans.RowCheckout" scope="session"/>
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
        <tr>
            <td></td>
            <td><%=check.getTime()%>
            </td>
            <td><%=check.getExecTime()%>
            </td>
            <td><%=check.getX()%>
            </td>
            <td><%=check.getY()%>
            </td>
            <td><%=check.getR()%>
            </td>
            <td><%=check.getResult()%>
            </td>
        </tr>
    </table>
</div>


