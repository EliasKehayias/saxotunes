<template>
    <div>
      <!-- Laptops Listing -->
      <main>
        <h1 class="herotext" >💻 Laptops for Every Gamer 💻</h1>
  
        <div class="laptop-container">
          <!-- Laptop Item 1 -->
          <router-link to="/laptop1" class="laptop-item">
            <!-- <img src="@/assets/laptops/laptop1/laptop1_main.webp" alt="Laptop 1"> -->
             <!-- <img src="https://raw.githubusercontent.com/Abdulfelton/laptops/refs/heads/main/laptop1%20main.webp" alt="Laptop 1"> -->
            <h3>Gaming Laptop X1</h3>
            <p>Price: R15,000</p>
          </router-link>
  
          <!-- Laptop Item 2 -->
          <router-link to="/laptop2" class="laptop-item">
            <!-- <img src="@/assets/laptops/laptop2/laptop2_main.webp" alt="Laptop 2"> -->
            <h3>Superfast Probook</h3>
            <p>Price: R18,000</p>
          </router-link>
  
          <!-- Laptop Item 3 -->
          <router-link to="/laptop3" class="laptop-item">
            <!-- <img src="@/assets/laptops/laptop3/laptop3_main.webp" alt="Laptop 3"> -->
            <h3>Elite Gaming Pro</h3>
            <p>Price: R20,000</p>
          </router-link>
        </div>
      </main>
  
      <footer>
        <p>Made with 💜 by TechHive | All rights reserved © 2025</p>
      </footer>
    </div>
  </template>
  
  <script>
  export default {
    name: 'LaptopsPage',
  }
  </script>
  
  <style scoped>
  /* General Styles */
  herotext {
    font-family: 'Press Start 2P', cursive;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    color: #2c3e50;
    margin-top: 60px;
  }
  body {
    font-family: 'Press Start 2P', cursive;
    background-color: #111;
    color: #fff;
    margin: 0;
    padding: 0;
    text-align: center;
    box-sizing: border-box;
    overflow-x: hidden;
  }

  
  /* Laptops Listing */
  .laptop-container {
    display: flex;
    justify-content: space-around;
    padding: 50px 20px;
    margin-top: 20px;
    position: relative;
  }
  
  .laptop-item {
    background: rgba(0, 0, 0, 0.7);
    padding: 20px;
    border-radius: 15px;
    box-shadow: 0 0 25px rgba(255, 0, 255, 0.8);
    transition: transform 0.5s ease, box-shadow 0.5s ease;
    position: relative;
    overflow: hidden;
    width: 300px;
    height: 400px;
  }
  
  .laptop-item:hover {
    transform: scale(1.1) rotate(5deg);
    box-shadow: 0 0 50px rgba(0, 255, 255, 1);
  }
  
  .laptop-item img {
    width: 100%;
    height: 200px;
    object-fit: cover;
    border-radius: 10px;
  }
  
  .laptop-item h3 {
    font-size: 2em;
    margin-top: 10px;
    color: #ff66ff;
    text-shadow: 0 0 10px #ff00ff;
    transition: text-shadow 0.3s ease;
  }
  
  .laptop-item p {
    font-size: 1.2em;
    color: #00ffff;
    transition: color 0.3s ease;
  }
  
  .laptop-item:hover h3,
  .laptop-item:hover p {
    color: #00ffff;
    text-shadow: 0 0 20px #ff66ff;
  }
  
  /* Glowing Borders */
  .laptop-item::before {
    content: '';
    position: absolute;
    top: -10px;
    left: -10px;
    width: calc(100% + 20px);
    height: calc(100% + 20px);
    border: 2px solid #ff66ff;
    border-radius: 15px;
    animation: glowing 1.5s infinite alternate;
  }
  
  @keyframes glowing {
    0% {
      box-shadow: 0 0 15px #ff66ff, 0 0 30px #ff66ff, 0 0 45px #ff66ff;
    }
    100% {
      box-shadow: 0 0 30px #ff66ff, 0 0 60px #ff66ff, 0 0 90px #ff66ff;
    }
  }
  
  /* Remove default link styles */
  a.laptop-item {
    text-decoration: none;
    color: inherit; /* Ensure text color inherits the styles */
  }
  
  /* Footer */
  footer {
    background-color: #222;
    color: #fff;
    padding: 10px 0;
    text-align: center;
    font-size: 1em;
    margin-top: 50px;
  }
  </style>
  