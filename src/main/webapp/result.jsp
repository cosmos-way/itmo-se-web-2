<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="result-table">
    <table id="result-table" cellspacing="6" cellpadding="15">
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
        <c:forEach items="${table.getTable()}" var="el">
            <tr>
                <td></td>
                <td>${el.getTime()}</td>
                <td>${el.getExecTime()}</td>
                <td>${el.getX()}</td>
                <td>${el.getY()}</td>
                <td>${el.getR()}</td>
                <td>${el.getResult()}</td>
            </tr>
        </c:forEach>
    </table>
</div>


