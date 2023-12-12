<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
        <div class="window">
<%--            <svg width="320" height="320" id="areas">--%>
<%--                <line x1="0" y1="160" x2="320" y2="160" stroke-width="1.6"/>--%>
<%--                <line x1="160" y1="0" x2="160" y2="320" stroke-width="1.6"/>--%>

<%--                <polygon id="1" points="320,160 312,156 312,164"/>--%>
<%--                <polygon id="1" points="160,0 156,8 164,8"/>--%>

<%--                <line x1="40" y1="156" x2="40" y2="164" stroke-width="1.6"/>--%>
<%--                <line x1="120" y1="156" x2="120" y2="164" stroke-width="1.6"/>--%>
<%--                <line x1="200" y1="156" x2="200" y2="164" stroke-width="1.6"/>--%>
<%--                <line x1="280" y1="156" x2="280" y2="164" stroke-width="1.6"/>--%>
<%--                <line x1="360" y1="156" x2="360" y2="164" stroke-width="1.6"/>--%>

<%--                <text id="capt" x="35" y="152">-R</text>--%>
<%--                <text id="capt" x="115" y="152">-R/2</text>--%>
<%--                <text id="capt" x="200" y="152">R/2</text>--%>
<%--                <text id="capt" x="275" y="152">R</text>--%>
<%--                <line x1="156" y1="40" x2="164" y2="40" stroke-width="1.6"/>--%>
<%--                <line x1="156" y1="120" x2="164" y2="120" stroke-width="1.6"/>--%>
<%--                <line x1="156" y1="200" x2="164" y2="200" stroke-width="1.6"/>--%>
<%--                <line x1="156" y1="280" x2="164" y2="280" stroke-width="1.6"/>--%>
<%--                <line x1="156" y1="360" x2="164" y2="360" stroke-width="1.6"/>--%>
<%--                <text x="144" y="44" id="capt">R</text>--%>
<%--                <text x="141" y="124" id="capt">R/2</text>--%>
<%--                <text x="144" y="204" id="capt">-R/2</text>--%>
<%--                <text x="144" y="284" id="capt">-R</text>--%>
<%--                <path id="circle" d="M160,120 A40,40 0 0,1 200,160 L160,160 Z" fill="rgb(51,153,255)"--%>
<%--                      stroke-width="1.6"/>--%>
<%--                <polygon id="triangle" points="160,280 160,160 40,160" fill="rgb(51,153,255)"--%>
<%--                         stroke-width="1.6"></polygon>--%>
<%--                <polygon id="square" points="280,160 160,160 160,280 280,280" fill="rgb(51,153,255)" stroke="black"--%>
<%--                         stroke-width="1.6"></polygon>--%>
<%--            </svg>--%>

            <svg id="g1" width="300" height="300" xmlns="http://www.w3.org/2000/svg">
                <!-- Ось X -->
                <line x1="10" y1="150" x2="290" y2="150" stroke="black" stroke-width="2"/>

                <!-- Ось Y -->
                <line x1="150" y1="10" x2="150" y2="290" stroke="black" stroke-width="2"/>

                <!-- Стрелка на конце оси X -->
                <line x1="290" y1="150" x2="280" y2="145" stroke="black" stroke-width="2"/>
                <line x1="290" y1="150" x2="280" y2="155" stroke="black" stroke-width="2"/>

                <!-- Стрелка на конце оси Y -->
                <line x1="150" y1="10" x2="145" y2="20" stroke="black" stroke-width="2"/>
                <line x1="150" y1="10" x2="155" y2="20" stroke="black" stroke-width="2"/>

                <!-- Подписи на осях -->
                <text x="290" y="145" font-family="Arial" font-size="12" fill="black">X</text>
                <text x="165" y="15" font-family="Arial" font-size="12" fill="black">Y</text>

                <!-- Добавление делений на осях с помощью скрипта -->
            </svg>
        </div>
        <div id="message"></div>
        <form id="valForm" method="get">
            <label>Координата X:</label>
            <div class="x-radio">
                <label><input type="radio" name="x" value="-2" required>-2</label>
                <label><input type="radio" name="x" value="-1.5">-1.5</label>
                <label><input type="radio" name="x" value="-1">-1</label>
                <label><input type="radio" name="x" value="-0.5">-0.5</label>
                <label><input type="radio" name="x" value="0">0</label>
                <label><input type="radio" name="x" value="0.5">0.5</label>
                <label><input type="radio" name="x" value="1">1</label>
                <label><input type="radio" name="x" value="1.5">1.5</label>
                <label><input type="radio" name="x" value="2">2</label>
            </div>
            <label for="y">Координата Y:</label>
            <label><input type="text" id="y" placeholder="{-5...3}" maxlength="10" required></label>
            <label>Радиус R: <p></p></label>
            <div id="rCheckboxes">
                <input type="button" value="1"/>
                <input type="button" value="1.5"/>
                <input type="button" value="2"/>
                <input type="button" value="2.5"/>
                <input type="button" value="3"/>
            </div>
            <table class="buttons" id="buttons-table">
                <tr>
                    <th><input type="submit" class="data-button" value="Отправить данные"></th>
                    <th><input type="reset" class="data-button" onclick="resetForm()" value="Сбросить данные"></th>
                </tr>
            </table>


        </form>
        <jsp:include page="result.jsp"/>
    </div>
</body>
<script src="js/script.js"></script>
<script src="js/themeToggle.js"></script>
<script src="js/svgInteractive.js" defer></script>
<script>
    // Добавляем деления на осях X и Y от -6 до 6 с шагом 1
    addTicks(document.getElementById("g1"), "x", -6, 6, 1);
    addTicks(document.getElementById("g1"), "y", -6, 6, 1);
</script>

</html>