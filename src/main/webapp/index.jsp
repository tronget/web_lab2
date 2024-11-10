<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            href="https://fonts.googleapis.com/css2?family=Comfortaa&display=swap"
            rel="stylesheet"
    />
    <style>

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            border: 0;
            font-size: 100%;
            font: inherit;
        }

        html, body {
            height: 100%;
        }

        body {
            font-family: "Comfortaa", sans-serif;
            color: #333;
            line-height: 1.6;
            display: flex;
            flex-direction: column;
            background-image: url("resources/images/background.jpeg");
        }

        header {
            font-size: 1.5em;
            text-align: center;
            padding: 10px;
            background-color: rgba(100, 148, 237, 0.65);
            color: #f0f0f0;
            border-radius: 0 0 20px 20px;
            backdrop-filter: blur(5px);
        }


        input, select {
            border-radius: 6px;
            padding: 0.5em;
        }

        select {
            cursor: pointer;
        }

        input[type=button] {
            border: #333 solid 2px;
            /* background-color: antiquewhite; */
        }

        button {
            cursor: pointer;
        }

        img {
            width: 85%;
            object-fit: contain;
            border-radius: 10px;
        }

        .application {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: center;
            flex-grow: 1;
            gap: 50px;
            margin: 20px 40px;
            border-radius: 15px;
            padding: 15px;
        }

        .glass {
            background-color: rgba(255, 255, 255, .15);
            backdrop-filter: blur(10px);
        }

        .submit_btn {
            position: absolute;
            bottom: 20px;
            right: 20px;
            cursor: pointer;
            transition: 0.2s;
            border: #333 2px solid;
        }

        .submit_btn:hover {
            background-color: cornflowerblue;
            color: white;
            transform: scale(1.2);
        }

        .submit_btn:active {
            transform: none;
        }

        .input_container {
            background-color: rgba(255, 127, 80, 0.75);
            padding: 20px;
            border-radius: 10px;
        }

        .flex_column {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            gap: 10px;
        }

        #form {
            background-color: antiquewhite;
            padding: 10px;
            height: 80%;
            width: 60%;
            position: relative;
            border-radius: 10px;
            display: flex;
            justify-content: space-around;
            align-items: center;
            gap: 10px;
        }

        #form > .flex_column {
            height: 50%;
        }

        #form label, p {
            font-weight: 800;
        }

        #form label {
            margin-right: 5px;
        }


        #form::before {
            content: "Cупер форма 1337 :D";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            background-color: coral;
            text-align: center;
            padding: 10px;
            border-radius: 10px 10px 0 0;
            color: white;
            font-weight: 900;
            font-size: 1.25em;
        }

        .r_container label {
            padding-right: 10px;
        }

        .incorrect_input {
            position: relative;
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: scale(0);
            }
            50% {
                opacity: 1;
                transform: scale(1.2);
            }
            100% {
                transform: scale(1);
            }
        }

        .incorrect_input::before {
            content: "Введите корректное значение!";
            animation: fadeIn 0.4s ease;
            display: block;
            color: red;
            font-weight: 900;
            position: absolute;
            bottom: -45px;
            height: 40px;
            left: 0;
            right: 0;
            margin: 0 auto;
            width: fit-content;
            text-align: center;
        }

        .image_and_table_container {
            width: 30%;
            text-align: center;
        }

        .geometryObj {
            fill: rgb(4, 182, 123);
            transition: 0.3s;
        }

        .geometryObj:hover {
            fill: rgb(0, 134, 91);
        }

        #svgArea {
            background-color: antiquewhite;
            padding: 20px;
            border-radius: 10px;
            box-sizing: content-box;
            cursor: pointer;
        }

        .point {
            fill: #ff4700;
            animation: fadeIn 0.5s ease-out;
        }

        @media (max-width: 835px) {
            .application {
                margin: 10px;
                flex-direction: column;
                flex-wrap: nowrap;
                height: min-content;
                overflow: auto;
                padding: 150px 5px 20px;
                gap: 20px;
            }

            #form {
                width: 95%;
                min-height: 300px;
                overflow: auto;
            }

            .image_and_table_container {
                width: 80%;
            }

            table {
                max-height: 100px;
            }

        }

        @media (max-width: 580px) {
            .image_and_table_container {
                width: 95%;
            }
        }

    </style>

    <script type="module" src="resources/scripts/script.js" async></script>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Lab 2</title>
</head>
<body>
<header>Лашкул Андрей Владимирович P3210 488780</header>
<div class="application glass">

    <form id="form" action="#" method="post">



        <div class="input_container r_container">
            <p>Выберите R:</p>
            <div>
                <input type="checkbox" id="radius1" name="r_input" value="1" class="checkbox">
                <label for="radius1">1</label>
            </div>
            <div>
                <input type="checkbox" id="radius2" name="r_input" value="2" class="checkbox">
                <label for="radius2">2</label>
            </div>
            <div>
                <input type="checkbox" id="radius3" name="r_input" value="3" class="checkbox">
                <label for="radius3">3</label>
            </div>
            <div>
                <input type="checkbox" id="radius4" name="r_input" value="4" class="checkbox">
                <label for="radius4">4</label>
            </div>
            <div>
                <input type="checkbox" id="radius5" name="r_input" value="5" class="checkbox">
                <label for="radius5">5</label>
            </div>
        </div>

        <div class="flex_column">
            <div class="input_container x_container">
                <label for="x_select">Выберите X:</label>
                <select id="x_select" name="x_input">
                    <option value="#">Выберите X</option>
                    <option value="-3">-3</option>
                    <option value="-2">-2</option>
                    <option value="-1">-1</option>
                    <option value="0">0</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
            </div>

            <div class="input_container y_container">
                <label for="y_input">Введите Y:</label>
                <input type="number" id="y_input" name="y_input" placeholder="Введите Y (-3 до 3)" min="-3" max="3"
                       step="0.000001">
            </div>
        </div>


        <input class="submit_btn" type="submit" value="Отправить">
    </form>

    <div class="flex-column image_and_table_container">
        <svg id="svgArea" height=300 width="300">
            <!-- shapes-->

            <rect x = "150" y = "150" width="100" height="100" class="geometryObj"></rect>
            <polygon points="150,100 150,150 250,150"  class="geometryObj"></polygon>
            <path d="M150,150 V200 H150 A 50 50, 0, 0, 1, 100 150" class="geometryObj"></path>

            <!-- X axis -->
            <line stroke="black" x1 = 0 x2 = 300 y1 =150  y2 = 150></line>
            <line stroke="black" x1 = 290 x2 = 300 y1 =145  y2 = 150></line>
            <line stroke="black" x1 = 290 x2 = 300 y1 =155  y2 = 150></line>
            <text fill="black" x=288 y=140>X</text>

            <!-- Y axis -->
            <line stroke="black" x1 = 150 x2 = 150 y1 =0  y2 = 300></line>
            <line stroke="black" x1 = 150 x2 = 155 y1 =0  y2 = 10></line>
            <line stroke="black" x1 = 150 x2 = 145 y1 =0  y2 = 10></line>
            <text fill="black" x = 160 y= 12>Y</text>

            <!-- X points -->
            <line stroke="black" x1 = 50 x2 = 50 y1 =153  y2 = 147></line>
            <line stroke="black" x1 = 100 x2 = 100 y1 =153  y2 = 147></line>
            <line stroke="black" x1 = 200 x2 = 200 y1 =153  y2 = 147></line>
            <line stroke="black" x1 = 250 x2 = 250 y1 =153  y2 = 147></line>

            <!-- X points R-->
            <text fill="black" x = 35 y= 140 font-size="12" >-R</text>
            <text fill="black" x = 90 y= 140 font-size="12" >-R/2</text>
            <text fill="black" x = 188 y= 140 font-size="12" >R/2</text>
            <text fill="black" x = 245 y= 140 font-size="12" >R</text>

            <!-- Y points -->
            <line stroke="black" x1 = 147 x2 = 153 y1 =50  y2 = 50></line>
            <line stroke="black" x1 = 147 x2 = 153 y1 =100  y2 = 100></line>
            <line stroke="black" x1 = 147 x2 = 153 y1 =200  y2 = 200></line>
            <line stroke="black" x1 = 147 x2 = 153 y1 =250  y2 = 250></line>

            <!-- Y points R-->
            <text fill="black" x = 160 y= 55 font-size="12" >R</text>
            <text fill="black" x = 160 y= 105 font-size="12" >R/2</text>
            <text fill="black" x = 160 y= 205 font-size="12" >-R/2</text>
            <text fill="black" x = 160 y= 255 font-size="12" >-R</text>

        </svg>
        <%@include file="results.jsp"%>
    </div>
</div>
</body>
</html>
