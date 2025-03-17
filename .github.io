<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SoundPulse</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #222;
            color: white;
            margin: 0;
            padding: 0;
        }

        h1 {
            margin: 20px 0;
        }

        .search-box {
            width: 80%;
            padding: 10px;
            margin: 10px auto;
            font-size: 16px;
            border-radius: 5px;
            border: none;
            display: block;
        }

        .container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(100px, 1fr));
            gap: 15px;
            padding: 20px;
        }

        .sound-btn {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            border: none;
            cursor: pointer;
            transition: 0.3s;
            background-size: cover;
            background-position: center;
            position: relative;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.3);
        }

        .sound-btn:hover {
            transform: scale(1.1);
        }

        .btn-label {
            position: absolute;
            bottom: 5px;
            left: 50%;
            transform: translateX(-50%);
            background: rgba(0, 0, 0, 0.7);
            color: white;
            padding: 3px 6px;
            font-size: 12px;
            border-radius: 5px;
        }
    </style>
</head>
<body>

    <h1>SoundPulse 🔊</h1>
    <input type="text" class="search-box" id="searchInput" placeholder="Zoek een geluid..." onkeyup="filterSounds()">

    <div class="container" id="soundContainer">
        <button class="sound-btn" onclick="playSound('boing')" style="background-image: url('boing.jpg');">
            <span class="btn-label">Boing</span>
        </button>
        <button class="sound-btn" onclick="playSound('clap')" style="background-image: url('clap.jpg');">
            <span class="btn-label">Clap</span>
        </button>
        <button class="sound-btn" onclick="playSound('explosion')" style="background-image: url('explosion.jpg');">
            <span class="btn-label">Explosion</span>
        </button>
        <button class="sound-btn" onclick="playSound('airhorn')" style="background-image: url('airhorn.jpg');">
            <span class="btn-label">Airhorn</span>
        </button>
        <button class="sound-btn" onclick="playSound('laugh')" style="background-image: url('laugh.jpg');">
            <span class="btn-label">Lachen</span>
        </button>
        <button class="sound-btn" onclick="playSound('fail')" style="background-image: url('fail.jpg');">
            <span class="btn-label">Fail</span>
        </button>
    </div>

    <audio id="boing" src="boing.mp3"></audio>
    <audio id="clap" src="clap.mp3"></audio>
    <audio id="explosion" src="explosion.mp3"></audio>
    <audio id="airhorn" src="airhorn.mp3"></audio>
    <audio id="laugh" src="laugh.mp3"></audio>
    <audio id="fail" src="fail.mp3"></audio>

    <script>
        function playSound(id) {
            let sound = document.getElementById(id);
            sound.currentTime = 0;
            sound.play();
        }

        function filterSounds() {
            let input = document.getElementById("searchInput").value.toLowerCase();
            let buttons = document.querySelectorAll(".sound-btn");

            buttons.forEach(button => {
                let label = button.querySelector(".btn-label").textContent.toLowerCase();
                button.style.display = label.includes(input) ? "block" : "none";
            });
        }
    </script>

</body>
</html>
