<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Interactive Hand Animation</title>
    <style>
        body {
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f0f0f0;
        }

        .hand {
            position: relative;
            width: 100px;
            height: 120px;
        }

        .hand:before {
            content: '';
            display: block;
            width: 200%;
            height: 100%;
            position: absolute;
            top: 60%;
            left: -50%;
            background-color: black;
            border-radius: 50%;
            filter: blur(10px);
            opacity: 0.2;
        }

        .palm {
            position: absolute;
            width: 100%;
            height: 100%;
            background-color: #E4C560;
            border-radius: 50% 50% 40% 40% / 50% 50% 40% 40%;
        }

        .thumb {
            position: absolute;
            width: 120%;
            height: 20px;
            background-color: #E4C560;
            bottom: -10px;
            right: 10%;
            transform-origin: 100% 50%;
            transform: rotate(-30deg);
            border-radius: 15px 15px 0 0;
            border: 2px solid rgba(0, 0, 0, 0.1);
        }

        .thumb:after {
            content: '';
            position: absolute;
            width: 20%;
            height: 50%;
            background-color: rgba(255, 255, 255, 0.3);
            bottom: -10%;
            left: 5px;
            border-radius: 50%;
            border-right: 2px solid rgba(0, 0, 0, 0.05);
        }

        .finger {
            position: absolute;
            width: 70%;
            height: 30px;
            background-color: #E4C560;
            bottom: 50%;
            left: 15%;
            transform-origin: 100% 50%;
            animation-duration: 0.6s;
            animation-timing-function: ease-in-out;
            animation-iteration-count: infinite;
        }

        .finger:before {
            content: '';
            position: absolute;
            width: 140%;
            height: 20px;
            background-color: #E4C560;
            bottom: 10%;
            left: -20%;
            border-radius: 50%;
        }

        .finger:nth-child(1) {
            animation-delay: 0s;
            animation-name: tap-finger-1;
        }

        .finger:nth-child(2) {
            animation-delay: 0.1s;
            animation-name: tap-finger-2;
        }

        .finger:nth-child(3) {
            animation-delay: 0.2s;
            animation-name: tap-finger-3;
        }

        .finger:nth-child(4) {
            animation-delay: 0.3s;
            animation-name: tap-finger-4;
        }

        @keyframes tap-finger-1 {
            0%, 50%, 100% {
                transform: rotate(0deg) scale(0.8);
            }
            40% {
                transform: rotate(30deg) scale(1);
            }
        }

        @keyframes tap-finger-2 {
            0%, 50%, 100% {
                transform: rotate(0deg) scale(0.9);
            }
            40% {
                transform: rotate(30deg) scale(1.1);
            }
        }

        @keyframes tap-finger-3 {
            0%, 50%, 100% {
                transform: rotate(0deg) scale(1);
            }
            40% {
                transform: rotate(30deg) scale(1.2);
            }
        }

        @keyframes tap-finger-4 {
            0%, 50%, 100% {
                transform: rotate(0deg) scale(1.1);
            }
            40% {
                transform: rotate(30deg) scale(1.3);
            }
        }
    </style>
</head>
<body>
    <div class="hand">
        <div class="palm"></div>
        <div class="thumb"></div>
        <div class="finger"></div>
        <div class="finger"></div>
        <div class="finger"></div>
        <div class="finger"></div>
    </div>
</body>
</html>
