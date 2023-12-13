<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
    <div class="content">
        <div class id="header">
            <p>Лабораторная работа №2</p>
            <p>Киселёв Константин</p>
            <p>P3225<br/>Вариант 861210</p>
        </div>
        <div id="message"></div>
        <jsp:include page="input.jsp"/>
        <jsp:include page="table.jsp"/>
    </div>
</body>


</html>