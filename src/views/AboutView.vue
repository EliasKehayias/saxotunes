<template>
  <div class="container">
    <h1>👾 About Us 👾</h1>
    <p class="about-content">
      Welcome to our gamer hub! 🎮 Here, we connect gamers from all over the world to the coolest and most exclusive gaming experiences. Whether you're a casual player or a hardcore pro, we're here to provide all the gear you need, from keyboards 🖱️ to the latest laptops 💻.
    </p>
    <p class="about-content">
      We believe in the power of play, and our mission is to bring together a community of gamers who share that passion. 💥 We offer a wide range of products, from hardware to accessories, all designed to level up your gaming setup. Our team is always on the lookout for the best in gaming tech and trends, so you can be sure you're always at the cutting edge. 🚀
    </p>
    <p class="about-content">
      Our team is a group of lifelong gamers who are just as excited about the next big game as you are. 🙌 We understand the importance of having the right gear, and we're dedicated to helping you make sure your setup is ready for action. 🔧
    </p>
    <p class="about-content">
      So, what are you waiting for? It's time to power up and take your game to the next level! 🎮💨
    </p>
    <router-link to="/home" class="back-button">⬅ Back to Lobby</router-link>
  </div>
</template>

<script>
export default {
  name: 'AboutPage'
}
</script>

<style>
/* Retro Gamer About Page Styles */
/* General Styles */
body {
    font-family: 'Press Start 2P', cursive;
    background-color: #111;
    color: #fff;
    margin: 0;
    padding: 0;
    text-align: center;
    box-sizing: border-box;
}

/* Container */
.container {
    padding: 20px;
    max-width: 800px;
    margin: 0 auto;
    background: #222;
    border-radius: 15px;
    box-shadow: 0 0 20px rgba(255, 0, 255, 0.3);
}

/* About Header */
h1 {
    font-size: 3em;
    color: #ff00ff;
    text-shadow: 0 0 5px #00ffff, 0 0 10px #ff00ff;
    margin-top: 30px;
    letter-spacing: 3px;
}

/* About Content */
.about-content {
    font-size: 18px;
    margin: 20px 0;
    padding: 12px;
    color: #fff;
    background-color: #333;
    border-left: 4px solid #ff00ff;
    box-shadow: 0 0 15px rgba(255, 0, 255, 0.3);
    max-width: 600px;
    margin-left: auto;
    margin-right: auto;
    transition: transform 0.3s ease, background-color 0.3s ease;
    font-family: 'Press Start 2P', cursive;
}

/* Hover effect for about content */
.about-content:hover {
    transform: translateX(10px);
    background-color: #444;
}

/* Add Emojis */
.about-content .emoji {
    font-size: 2em;
    margin-left: 10px;
}

/* Links */
.about-content a {
    color: #ff00ff;
    text-decoration: none;
}

.about-content a:hover {
    text-decoration: underline;
    color: #00ffff;
}

/* Responsive Design */
@media screen and (max-width: 600px) {
    h1 {
        font-size: 2em;
    }
    .about-content {
        font-size: 16px;
    }
}
.back-button {
    display: inline-block;
    margin-top: 40px;
    padding: 15px 40px;
    font-size: 1.5em;
    text-decoration: none;
    color: #111;
    background: linear-gradient(90deg, #ff00ff, #00ffff);
    border: 4px solid #ff00ff;
    border-radius: 10px;
    box-shadow: 0 0 15px rgba(255, 0, 255, 0.7);
    animation: pulse 1.5s infinite alternate;
    position: relative;
    overflow: hidden;
}

/* Button Glow Effect */
.back-button::before {
    content: "";
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: rgba(255, 255, 255, 0.2);
    transition: left 0.4s ease;
}

.back-button:hover::before {
    left: 100%;
}

/* Button Animation */
@keyframes pulse {
    0% { transform: scale(1); box-shadow: 0 0 10px rgba(255, 0, 255, 0.5); }
    100% { transform: scale(1.1); box-shadow: 0 0 25px rgba(0, 255, 255, 0.8); }
}

/* Responsive Design */
@media screen and (max-width: 600px) {
    h1 {
        font-size: 2em;
    }
    .contact {
        font-size: 16px;
    }
    .back-button {
        font-size: 1.2em;
        padding: 12px 30px;
    }
}
</style>
