<template>
 <div class="home"> 
    <!-- Primary Navigation -->
    <header>
      <nav class="primary-nav">
        <ul>
          <li><router-link to="/Home">Home</router-link></li>
          <li><router-link to="/about">About</router-link></li>
          <li><router-link to="/contact">Contact</router-link></li>
        </ul>
      </nav>
    </header> 

    <!-- Secondary Navigation -->
 <nav class="secondary-nav">
      <ul>
        <li><router-link to="/laptops">Laptops</router-link></li>
        <li><router-link to="/mouses">Mouses</router-link></li>
        <li><router-link to="/keyboards">Keyboards</router-link></li>
        <li><router-link to="/monitors">Monitors</router-link></li>
      </ul>
    </nav>
  </div>
  <router-view/> 
</template>

<style>
#app {
  font-family: 'Press Start 2P', cursive;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
/* General Styles */
body {
    font-family: 'Press Start 2P', cursive;
    background-color: #111;
    color: #fff;
    margin: 0;
    padding: 0;
    text-align: center;
    box-sizing: border-box;
    background: linear-gradient(45deg, #ff00ff, #00ffff, #ff0000);
    background-size: 300% 300%;
    animation: gradientAnimation 5s ease infinite;
}

@keyframes gradientAnimation {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
}

/* Header and Navigation */
header {
    background-color: #222;
    padding: 20px 0;
    box-shadow: 0 4px 10px rgba(255, 0, 255, 0.3);
}

.primary-nav ul, .secondary-nav ul {
    list-style: none;
    display: flex;
    justify-content: center;
    padding: 0;
    margin: 0;
}

.primary-nav a, .secondary-nav a {
    text-decoration: none;
    color: #ff66ff;
    font-size: 1.5em;
    font-weight: bold;
    padding: 20px 40px;
    transition: color 0.3s, text-shadow 0.3s, transform 0.3s;
}

.primary-nav a:hover, .secondary-nav a:hover {
    color: #00ffff;
    text-shadow: 0 0 10px #00ffff;
    transform: scale(1.1);
}

/* Main Section */
main {
    background: #222;
    padding: 40px;
    box-shadow: 0 0 20px rgba(255, 0, 255, 0.3);
    margin-top: 20px;
    text-shadow: 0 0 10px #ff00ff;
}

/* Hero Title with RGB Animation */
.hero {
    font-size: 4.5em;
    text-transform: uppercase;
    letter-spacing: 5px;
    font-weight: bold;
    animation: rgbAnimation 0.7s infinite alternate;
    display: inline-block;
    padding: 0 10px;
    background-image: linear-gradient(to right, #ff00ff, #00ffff, #ff0000);
    -webkit-background-clip: text;
    color: transparent;
}

@keyframes rgbAnimation {
    0% {
        text-shadow: 0 0 10px #ff00ff, 0 0 20px #ff00ff;
    }
    50% {
        text-shadow: 0 0 10px #00ffff, 0 0 20px #00ffff;
    }
    100% {
        text-shadow: 0 0 10px #ff0000, 0 0 20px #ff0000;
    }
}

p {
    font-size: 1.8em;
    color: #00ffff;
    text-shadow: 0 0 5px #ff00ff;
}

/* Sign Up / Sign In Buttons */
.auth-buttons {
    margin-top: 40px;
}

.auth-buttons button {
    padding: 20px 50px;
    background-color: #ff66ff;
    color: #fff;
    font-size: 1.5em;
    border: none;
    border-radius: 10px;
    margin: 20px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.3s ease;
}

.auth-buttons button:hover {
    background-color: #00ffff;
    transform: scale(1.1);
}

/* Popup Modal */
.modal {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.7);
    justify-content: center;
    align-items: center;
}

.modal-content {
    background-color: #333;
    padding: 40px;
    border-radius: 15px;
    box-shadow: 0 0 20px rgba(255, 0, 255, 0.5);
    width: 600px;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.modal-content .form-container {
    width: 60%;
    padding-right: 30px;
}

.modal-content input {
    width: 100%;
    padding: 12px;
    margin-bottom: 20px;
    border: none;
    border-radius: 8px;
    background-color: #222;
    color: #fff;
    font-size: 1.1em;
    transition: background-color 0.3s ease;
}

.modal-content input:focus {
    background-color: #ff66ff;
}

.modal-content button {
    width: 100%;
    padding: 18px;
    background-color: #ff66ff;
    color: #fff;
    border: none;
    border-radius: 8px;
    font-size: 1.3em;
    transition: background-color 0.3s ease;
}

.modal-content button:hover {
    background-color: #00ffff;
}

.modal-content .retro-character {
    width: 35%;
    background-image: url('https://via.placeholder.com/150/ff00ff/ffffff?text=Retro+Character');
    background-size: contain;
    background-repeat: no-repeat;
    background-position: center;
    height: 150px;
}

.close {
    position: absolute;
    top: 10px;
    right: 10px;
    color: #fff;
    font-size: 2.5em;
    cursor: pointer;
    transition: color 0.3s ease;
}

.close:hover {
    color: #00ffff;
}

footer {
    background-color: #222;
    color: #fff;
    padding: 10px 0;
    text-align: center;
    font-size: 1em;
}

/* Cart Button */
.cart-button {
    padding: 20px 40px;
    background-color: #ff66ff;
    color: #fff;
    font-size: 1.5em;
    border: none;
    border-radius: 10px;
    position: fixed;
    top: 20px;
    right: 20px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.3s ease;
}

.cart-button:hover {
    background-color: #00ffff;
    transform: scale(1.1);
}

/* Cart Modal */
.cart-modal {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.7);
    justify-content: center;
    align-items: center;
    z-index: 1000;
}

.cart-modal-content {
    background-color: #333;
    padding: 40px;
    border-radius: 15px;
    width: 500px;
    box-shadow: 0 0 20px rgba(255, 0, 255, 0.5);
    text-align: center;
}

.cart-modal-content h2 {
    color: #ff66ff;
    font-size: 2.5em;
}

.cart-items {
    margin: 20px 0;
    color: #fff;
}

.cart-actions button {
    padding: 15px 30px;
    background-color: #ff66ff;
    color: #fff;
    font-size: 1.5em;
    border: none;
    border-radius: 10px;
    margin-top: 20px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.cart-actions button:hover {
    background-color: #00ffff;
}

/* Close Button for Cart Modal */
.close-cart {
    position: absolute;
    top: 10px;
    right: 10px;
    color: #fff;
    font-size: 2.5em;
    cursor: pointer;
    transition: color 0.3s ease;
}

.close-cart:hover {
    color: #00ffff;
}

</style>
