<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dancing Animation</title>
    <style>
        body {
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f0f0f0;
        }

        .person {
            position: relative;
            width: 150px;
            height: 300px;
            animation: dance 3s infinite;
        }

        .head {
            width: 100px;
            height: 100px;
            background-color: #E4C560;
            border-radius: 50%;
            position: absolute;
            top: 0;
            left: 25px;
            animation: head-bob 3s infinite;
        }

        .body {
            width: 100px;
            height: 120px;
            background-color: #E4C560;
            position: absolute;
            top: 100px;
            left: 25px;
            border-radius: 30px;
            animation: body-sway 3s infinite;
        }

        .leg {
            width: 40px;
            height: 80px;
            background-color: #E4C560;
            position: absolute;
            bottom: 0;
            border-radius: 20px;
            animation: leg-move 3s infinite;
        }

        .leg.left {
            left: 10px;
        }

        .leg.right {
            right: 10px;
        }

        .arm {
            width: 30px;
            height: 100px;
            background-color: #E4C560;
            position: absolute;
            top: 100px;
            border-radius: 20px;
            animation: arm-swing 3s infinite;
        }

        .arm.left {
            left: -30px;
            transform-origin: right center;
            transform: rotate(-30deg);
        }

        .arm.right {
            right: -30px;
            transform-origin: left center;
            transform: rotate(30deg);
        }

        .hand {
            position: absolute;
            width: 40px;
            height: 60px;
            background-color: #E4C560;
            border-radius: 20px;
            top: 190px;
        }

        .hand.left {
            left: -40px;
        }

        .hand.right {
            right: -40px;
        }

        @keyframes dance {
            0% { transform: rotate(0); }
            25% { transform: rotate(5deg); }
            50% { transform: rotate(-5deg); }
            75% { transform: rotate(5deg); }
            100% { transform: rotate(0); }
        }

        @keyframes head-bob {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-10px); }
        }

        @keyframes body-sway {
            0%, 100% { transform: rotate(0deg); }
            50% { transform: rotate(5deg); }
        }

        @keyframes leg-move {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(10px); }
        }

        @keyframes arm-swing {
            0%, 100% { transform: rotate(0deg); }
            50% { transform: rotate(20deg); }
        }
    </style>
</head>
<body>
    <div class="person">
        <div class="head"></div>
        <div class="body"></div>
        <div class="leg left"></div>
        <div class="leg right"></div>
        <div class="arm left">
            <div class="hand left"></div>
        </div>
        <div class="arm right">
            <div class="hand right"></div>
        </div>
    </div>
</body>
</html>
