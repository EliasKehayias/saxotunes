<template>
    <div class="container">
      <h1>🎮 Contact Us 🎮</h1>
      <p class="contact">📞 Call us at: 123-456-7890 <span class="emoji">📱</span></p>
      <p class="contact">✉️ Email us at: <a href="Techhive@coolkids.com">Techhive@coolkids.com</a> <span class="emoji">📧</span></p>
      <p class="contact">🌐 Visit us at: <a href="http://www.dot.com" target="_blank">www.GamingGod.com</a> <span class="emoji">🕹️</span></p>
      <p class="contact">🕰️ Call us Monday to Friday from 9:00 AM to 5:00 PM <span class="emoji">⏰</span></p>
      <p class="contact">❌ We are closed on weekends and holidays <span class="emoji">🚫</span></p>
      <p class="contact">🔄 We may reschedule or change guest limits if needed <span class="emoji">🔧</span></p>
      <p class="contact">⏳ Expect a response within 24 hours <span class="emoji">⏳</span></p>
  
      <!-- Unique Animated Back Button -->
      <router-link to="/home" class="back-button">⬅ Back to Lobby</router-link>
    </div>
  </template>
  
  <script>
  export default {
    name: 'ContactView'
  }
  </script>
  
  <style scoped>
  /* Retro Gamer Contact Page Styles */
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
  
  /* Contact Header */
  h1 {
    font-size: 3em;
    color: #ff00ff;
    text-shadow: 0 0 5px #00ffff, 0 0 10px #ff00ff;
    margin-top: 30px;
    letter-spacing: 3px;
  }
  
  /* Contact Section */
  .contact {
    font-size: 18px;
    margin: 15px 0;
    padding: 12px;
    color: #fff;
    background-color: #333;
    border-left: 4px solid #ff00ff;
    box-shadow: 0 0 15px rgba(255, 0, 255, 0.3);
    max-width: 600px;
    margin-left: auto;
    margin-right: auto;
    transition: transform 0.3s ease, background-color 0.3s ease;
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  
  /* Hover effect for contact items */
  .contact:hover {
    transform: translateX(10px);
    background-color: #444;
  }
  
  /* Emojis */
  .contact .emoji {
    font-size: 1.8em;
    margin-left: 10px;
  }
  
  /* Links */
  .contact a {
    color: #ff00ff;
    text-decoration: none;
  }
  
  .contact a:hover {
    text-decoration: underline;
    color: #00ffff;
  }
  
  /* Unique Retro Back Button */
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
  