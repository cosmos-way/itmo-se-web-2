<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="ru.cosmosway.web02.beans.Table" %>
<%@ page import="ru.cosmosway.web02.beans.RowCheckout" %>
<jsp:useBean id="check" scope="request" type="ru.cosmosway.web02.beans.RowCheckout"/>

<!DOCTYPE html>
<html lang="ru">
<head>
    <title>lab2</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js" async></script>
</head>
<body>
<%--<script src="js/script.js"></script>--%>
<div class="content">
    <div class id="header">
        <p>Лабораторная работа №2</p>
        <p>Киселёв Константин</p>
        <p>P3225<br/>Вариант 861210</p>
    </div>
    <div id="message"></div>
    <div class="result-table">
        <table id="result-table">
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
                <td>${resultIndex}</td>
                <td>${check.time}
                </td>
                <td>${check.execTime}${check.time}
                </td>
                <td>${check.x}
                </td>
                <td>${check.y}
                </td>
                <td>${check.r}
                </td>
                <td>${check.areaIntersection}
                </td>
            </tr>
        </table>
        <button class="return-button" onclick="redirectToIndex()">Вернуться на главную</button>
    </div>

</div>
</body>
