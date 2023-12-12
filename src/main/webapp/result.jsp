<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <tr>
            <td>${row.getX()}</td>
            <td>${row.getY()}</td>
            <td>${row.getR()}</td>
            <td>${row.getResult()}</td>
            <td>${row.getTime()}</td>
            <td>${row.getScriptTime()}</td>
        </tr>
    </table>
</div>


