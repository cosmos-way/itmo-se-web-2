document.getElementById('valForm').addEventListener('submit', function (e) {
    e.preventDefault();
    let x = document.querySelectorAll('input[type="radio"]:checked')[0];
    let y = document.getElementById('y');
    let r = document.getElementById('rValue');

    if (validate(x, y, r)) {
        send(x.value, y.value, r.value);
    }

});

function send(x, y, r) {
    $.ajax({
            type: "GET",
            url: "./ControllerServlet",
            async: false,
            data: {"x": x, "y": y, "r": r},
            success: function (data) {
                window.location.replace("./result.jsp")
            }, error: function (xhr, textStatus, err) {
                showError(document.getElementById('buttons-table'), "readyState: " + xhr.readyState + "\n" +
                    "responseText: " + xhr.responseText + "\n" +
                    "status: " + xhr.status + "\n" +
                    "text status: " + textStatus + "\n" +
                    "error: " + err);
            }
        }
    )
}

function showError(element, message) {
    const errorElement = document.createElement('div');
    errorElement.classList.add('error-message');
    errorElement.textContent = message;
    errorElement.style.color = 'red';
    errorElement.style.fontSize = '20px';
    errorElement.style.textAlign = 'left';
    element.parentNode.insertBefore(errorElement, element.nextSibling);
    setTimeout(function () {
        errorElement.remove();
    }, 2000);
}

function validate(x, y, r) {
    let replaceDot = val => val.replace(',', '.');
    let x1 = replaceDot(x.value);
    if (r == null) {
        showError(r, "Необходимо выбрать значение R:(");
        return false;
    }
    if (y == null) {
        showError(y, "Необходимо выбрать значение Y:(");
        return false;
    }

    if (x1 === "") {
        showError(x, "Необходимо указать значение Y:(");
        return false;
    }

    if (isNaN(x1)) {
        showError(x, "Нет, так не надо. Надо вот так: X - число");
        return false;
    }

    if (x1 < MIN_X || x1 > MAX_XY) {
        showError(x, "X может быть любым числом из {-3;3}");
        return false;
    }
    return true;
}

function resetForm() {
    document.getElementById("valForm").reset();
}

// Функция для обновления точек на осях X и Y
function updatePoints(svg, r) {
    // Удаляем предыдущие точки и подписи
    var oldElements = document.querySelectorAll('.point, .label');
    oldElements.forEach(function (element) {
        element.parentNode.removeChild(element);
    });

    // Добавляем новые точки и подписи
    addPoint(svg, r,0, 'red', 'R');
    addPoint(svg, -r,0, 'red', '-R');
    addPoint(svg, 0, r, 'red', 'R');
    addPoint(svg, 0, -r, 'red', '-R');

    addPoint(svg, r/2,0, 'blue', 'R/2');
    addPoint(svg, -r/2,0, 'blue', '-R/2');
    addPoint(svg, 0, r/2, 'blue', 'R/2');
    addPoint(svg, 0, -r/2, 'blue', '-R/2');
}

// Функция для добавления точки
function addPoint(svg, x,y, color, label) {
    var point = document.createElementNS("http://www.w3.org/2000/svg", "circle");
    var _x = 150 + x * 20;
    var _y = 150 - y * 20;
    point.setAttribute("cx", _x);
    point.setAttribute("cy", _y);
    point.setAttribute("r", "2");
    point.setAttribute("fill", color);
    point.setAttribute("class", "point");
    svg.appendChild(point);

    var text = document.createElementNS("http://www.w3.org/2000/svg", "text");
    text.setAttribute("x", _x + 5);
    text.setAttribute("y", _y - 5);
    text.setAttribute("font-family", "Arial");
    text.setAttribute("font-size", "8");
    text.setAttribute("fill", color);
    text.setAttribute("class", "label");
    text.textContent = label;
    svg.appendChild(text);
}

// Функция для добавления делений на оси
function addTicks(svg, axis, min, max, step) {
    for (let i = min; i <= max; i += step) {
        let tick = document.createElementNS("http://www.w3.org/2000/svg", "line");
        tick.setAttribute("x1", axis === "x" ? 150 + i * 20 : 150);
        tick.setAttribute("y1", axis === "x" ? 145 : 150 - i * 20);
        tick.setAttribute("x2", axis === "x" ? 150 + i * 20 : 150);
        tick.setAttribute("y2", axis === "x" ? 155 : 150 - i * 20);
        tick.setAttribute("stroke", "black");
        tick.setAttribute("stroke-width", "1");
        svg.appendChild(tick);

        let label = document.createElementNS("http://www.w3.org/2000/svg", "text");
        label.setAttribute("x", axis === "x" ? 150 + i * 20 : 155);
        label.setAttribute("y", axis === "x" ? 170 : 150 - i * 20);
        label.setAttribute("font-family", "Arial");
        label.setAttribute("font-size", "10");
        label.setAttribute("fill", "black");
        label.textContent = i;
        svg.appendChild(label);
    }
}

window.onload = function() {

// Добавляем деления на осях X и Y от -6 до 6 с шагом 1
    addTicks(document.getElementById("g1"), "x", -6, 6, 1);
    addTicks(document.getElementById("g1"), "y", -6, 6, 1);

// Обновляем точки при загрузке страницы
    updatePoints(document.getElementById("g1"), 3);

// Пример изменения точек при изменении значения R
//     var slider = document.createElement("input");
//     slider.type = "range";
//     slider.min = 1;
//     slider.max = 6;
//     slider.step = 0.1;
//     slider.value = 3;
//
//     slider.addEventListener("input", function () {
//         updatePoints(document.getElementById("g1"), parseFloat(slider.value));
//     });
//
//     document.body.appendChild(slider);
}