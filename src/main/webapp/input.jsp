<%@ page contentType="text/html;charset=UTF-8" language="java" %>


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