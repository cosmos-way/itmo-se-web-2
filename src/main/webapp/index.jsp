<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="ru">
<head>
    <title>Лабораторная работа #2</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&amp;display=swap" rel="stylesheet"/>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <script src="js/main.js" ></script>
    <script src="js/index.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js" async></script>
</head>
<body>
        <header class="main-header topper clearfix">
            <a>
<%--                <h:graphicImage value="/resources/img/home.png" height="40"/>--%>
            </a>
            <span class="main-header__info">
          Лабораторная работа #2<br/>
          Вариант #861210
        </span>
            <span class="main-header__authors">
            Kiselev Konstantin, P3225<br/>
        </span>
        </header>
        <main class="main-container">
        <div id="message"></div>
        <jsp:include page="input.jsp"/>
        <jsp:include page="table.jsp"/>
        </main>
</body>


</html>