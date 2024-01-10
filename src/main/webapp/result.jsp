<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="ru.cosmosway.web02.beans.Table" %>
<%@ page import="ru.cosmosway.web02.beans.RowCheckout" %>
<jsp:useBean id="check" scope="request" type="ru.cosmosway.web02.beans.RowCheckout"/>

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
    <script src="js/main.js"></script>
    <script src="js/index.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js" async></script>
</head>
<body>
<header class="main-header topper clearfix">
    <a class="main-header__back-link" onclick="redirectToIndex()">
        <img src="/img/home.svg" height="40"/>
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
    <section class="main-container__item main-container__item_table content-section content-section_table">
        <h2 class="content-section__header content-section__header_table topper">
                <span class="content-section__header__text">
                    Результат
                </span>
        </h2>
        <div class="result-table_container">
            <table class="result-table" id="results">
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
        </div>
        <input type="button" class="input-form__control-buttons__button input-form__control-buttons__button_submit"
               value="Назад" onclick="redirectToIndex()"/>
    </section>
</main>
</body>
