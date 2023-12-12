<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="window">
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
        <label id="rLab" >R = </label>
    <div id="rCheckboxes">
        <input type="button" value="1" onclick="changeR(1)"/>
        <input type="button" value="1.5" onclick="changeR(1.5)"/>
        <input type="button" value="2" onclick="changeR(2)"/>
        <input type="button" value="2.5" onclick="changeR(2.5)"/>
        <input type="button" value="3"  onclick="changeR(3)"/>
    </div>
    <input type="hidden" id="rValue" name="rValue" value="">
    <table class="buttons" id="buttons-table">
        <tr>
            <th><input type="submit" class="data-button" value="Отправить"></th>
            <th><input type="reset" class="data-button" onclick="resetForm()" value="Сбросить"></th>
        </tr>
    </table>


</form>

<script src="js/script.js"></script>
<script src="js/svgInteractive.js" defer></script>
<script>
    // Добавляем деления на осях X и Y от -6 до 6 с шагом 1
    addTicks(document.getElementById("g1"), "x", -6, 6, 1);
    addTicks(document.getElementById("g1"), "y", -6, 6, 1);
</script>
