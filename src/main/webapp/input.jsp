<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<div class="window">--%>
<%--    <svg id="g1" width="300" height="300" xmlns="http://www.w3.org/2000/svg">--%>
<%--        <!-- Ось X -->--%>
<%--        <line x1="10" y1="150" x2="290" y2="150" stroke="black" stroke-width="2"/>--%>

<%--        <!-- Ось Y -->--%>
<%--        <line x1="150" y1="10" x2="150" y2="290" stroke="black" stroke-width="2"/>--%>

<%--        <!-- Стрелка на конце оси X -->--%>
<%--        <line x1="290" y1="150" x2="280" y2="145" stroke="black" stroke-width="2"/>--%>
<%--        <line x1="290" y1="150" x2="280" y2="155" stroke="black" stroke-width="2"/>--%>

<%--        <!-- Стрелка на конце оси Y -->--%>
<%--        <line x1="150" y1="10" x2="145" y2="20" stroke="black" stroke-width="2"/>--%>
<%--        <line x1="150" y1="10" x2="155" y2="20" stroke="black" stroke-width="2"/>--%>

<%--        <!-- Подписи на осях -->--%>
<%--        <text x="290" y="145" font-family="Arial" font-size="12" fill="black">X</text>--%>
<%--        <text x="165" y="15" font-family="Arial" font-size="12" fill="black">Y</text>--%>

<%--        <!-- Добавление делений на осях с помощью скрипта -->--%>
<%--    </svg>--%>
<%--</div>--%>
<%--<form id="valForm">--%>
<%--    <label>Координата X:</label>--%>
<%--    <div class="x-radio">--%>
<%--        <label><input type="radio" name="x" value="-2" required>-2</label>--%>
<%--        <label><input type="radio" name="x" value="-1.5">-1.5</label>--%>
<%--        <label><input type="radio" name="x" value="-1">-1</label>--%>
<%--        <label><input type="radio" name="x" value="-0.5">-0.5</label>--%>
<%--        <label><input type="radio" name="x" value="0">0</label>--%>
<%--        <label><input type="radio" name="x" value="0.5">0.5</label>--%>
<%--        <label><input type="radio" name="x" value="1">1</label>--%>
<%--        <label><input type="radio" name="x" value="1.5">1.5</label>--%>
<%--        <label><input type="radio" name="x" value="2">2</label>--%>
<%--    </div>--%>
<%--    <label for="y">Координата Y:</label>--%>
<%--    <label><input type="text" id="y" placeholder="{-5...3}" maxlength="10" required></label>--%>
<%--        <label id="rLab" >R = </label>--%>
<%--    <div id="rCheckboxes">--%>
<%--        <input type="button" value="1" onclick="changeR(1)"/>--%>
<%--        <input type="button" value="1.5" onclick="changeR(1.5)"/>--%>
<%--        <input type="button" value="2" onclick="changeR(2)"/>--%>
<%--        <input type="button" value="2.5" onclick="changeR(2.5)"/>--%>
<%--        <input type="button" value="3"  onclick="changeR(3)"/>--%>
<%--    </div>--%>
<%--    <input type="hidden" id="rValue" name="rValue" value="">--%>
<%--    <table class="buttons" id="buttons-table">--%>
<%--        <tr>--%>
<%--            <th><input type="submit" class="data-button" value="Отправить"></th>--%>
<%--            <th><input type="reset" class="data-button" onclick="resetForm()" value="Сбросить"></th>--%>
<%--        </tr>--%>
<%--    </table>--%>


<%--</form>--%>

<div class="main-container__item main-container__item_left-column">
    <section class="main-container__item_left-column__item content-section content-section_graph">
        <h2 class="content-section__header content-section__header_graph topper">
                    <span class="content-section__header__text">
                        График
                    </span>
        </h2>
        <div class="content-container result-graph_container">
            <object class="result-graph" type="image/svg+xml" data="img/result-graph.svg">
                <img src="img/result-graph.png" width="220" height="220" alt="График"/>
            </object>
            <canvas class="graph-canvas graph-canvas_points" width="220" height="220">Предыдущие проверки</canvas>
            <canvas class="graph-canvas graph-canvas_current" width="220" height="220">Интерактивная область графика

            </canvas>
        </div>
    </section>

    <section class="main-container__item_left-column__item content-section content-section_values">
        <h2 class="content-section__header content-section__header_values topper">
                    <span class="content-section__header__text">
                        Данные
                    </span>
        </h2>
        <form>
            <p class="input-form__info">Введите координаты точки</p>

            <div class="input-form__container input-form__container_select">
                <label class="input-form__label input-form__label_x" for="x-select">X</label>
                <select class="input-form__control input-form__select input-form__select_x"
                                 id="x-select">
                    <option value="-4" label="-4" />
                    <option value="-3"  label="-3" />
                    <option value="-2"  label="-2" />
                    <option value="-1" label="-1" />
                    <option value="0" label="0" />
                    <option value="1" label="1" />
                    <option value="2" label="2" />
                    <option value="3" label="3" />
                    <option value="4" label="4" />

                </select>
            </div>
            <div class="input-form__container input-form__container_text">

                <label class="input-form__label input-form__label_y" for="y-text">Y</label>
                <input class="input-form__control input-form__text input-form__text_y" id="y-text"
                             maxlength="5" autocomplete="off" placeholder="Число от -3 до 3..."
                             value=""/>
            </div>
            <div class="input-form__container input-form__container_buttons">
                <label styleClass="input-form__label input-form__label_r" >R</label>
                <ul class="input-form__control input-form__button-list_r">
                    <li class="input-form__button-list_r__item">
                        <input type="button" class="input-form__button input-form__button_r" id="r-button1"
                                         type="button" value="1" onclick="changeR(1)" />
                    </li>
                    <li class="input-form__button-list_r__item">
                        <input type="button" class="input-form__button input-form__button_r" id="r-button2"
                                         type="button" value="2" onclick="changeR(2)"/>
                    </li>
                    <li class="input-form__button-list_r__item">
                        <input type="button" class="input-form__button input-form__button_r" id="r-button3"
                                         type="button" value="3" onclick="changeR(3)"/>
                    </li>
                    <li class="input-form__button-list_r__item">
                        <input type="button" class="input-form__button input-form__button_r" id="r-button4"
                                         type="button" value="4"/>
                    </li>
                    <li class="input-form__button-list_r__item">
                        <input type="button" class="input-form__button input-form__button_r" id="r-button5"
                                         type="button" value="5"/>
                    </li>
                </ul>
            </div>
            <input type="button" class="input-form__control-buttons__button input-form__control-buttons__button_submit"
                             value="Отправить"/>
        </form>

    </section>
</div>