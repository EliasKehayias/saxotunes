<template>
  <div>
    <div class="container">
      <div class="slideshow-container">
        <img v-for="(image, index) in images" :key="index" :src="image" :alt="`Laptop Image ${index+1}`" v-show="currentSlide === index" />
        <a class="prev" @click="changeSlide(-1)">&#10094;</a>
        <a class="next" @click="changeSlide(1)">&#10095;</a>
      </div>
      <div class="description">
        <h1>{{ laptop.name }}</h1>
        <p>{{ laptop.description }}</p>
        <p>Price: {{ laptop.price }}</p>
        <ul>
          <li v-for="(feature, index) in laptop.features" :key="index">{{ feature }}</li>
        </ul>
        <div class="add-to-cart">
          <p>Add this amazing gaming laptop to your cart:</p>
          <button @click="addToCart">Add to Cart</button>
        </div>
      </div>
    </div>
    <div class="fps-calculator">
      <h2>FPS Calculator</h2>
      <p>Select a game to calculate the FPS based on the laptop specs:</p>
      <select v-model="selectedGame">
        <option v-for="(game, key) in gameFPS" :key="key" :value="key">{{ game.name }}</option>
      </select>
      <button @click="calculateFPS">Calculate FPS</button>
      <div class="fps-result">Estimated FPS: {{ fps }}</div>
    </div>
    <div class="reviews">
      <h3>Customer Reviews</h3>
      <div v-for="(review, index) in reviews" :key="index" class="review">
        <span class="stars">{{ review.stars }}</span>
        <p>"{{ review.text }}"</p>
        <p>- {{ review.author }}</p>
      </div>
    </div>
    <footer>
      <p>Made with :purple_heart: by TechHive | All rights reserved © 2025</p>
    </footer>
  </div>
</template>
<script>
import axios from 'axios';
export default {
  data() {
    return {
      images: [],
      currentSlide: 0,
      laptop: {
        name: "Loading...",
        description: "Loading...",
        price: "Loading...",
        features: []
      },
      selectedGame: "game1",
      fps: "-",
      gameFPS: {
        game1: { name: "CyberBlast 2087", minFPS: 60, recFPS: 120 },
        game2: { name: "Star Wars: Legacy", minFPS: 45, recFPS: 75 },
        game3: { name: "Battle Royale X", minFPS: 30, recFPS: 60 },
        game4: { name: "Space Shooter Elite", minFPS: 50, recFPS: 90 }
      },
      reviews: []
    };
  },
  methods: {
    async fetchProductData() {
      try {
        const response = await axios.get("http://localhost:5000/api/laptop/1");
        this.laptop = response.data;
        this.images = response.data.images;
        this.reviews = response.data.reviews;
      } catch (error) {
        console.error("Error fetching product data:", error);
      }
    },
    changeSlide(n) {
      this.currentSlide = (this.currentSlide + n + this.images.length) % this.images.length;
    },
    calculateFPS() {
      const game = this.gameFPS[this.selectedGame];
      this.fps = game ? game.recFPS : "-";
    },
    addToCart() {
      alert("Laptop added to cart!");
    }
  },
  mounted() {
    this.fetchProductData();
    setInterval(() => {
      this.changeSlide(1);
    }, 3000);
  }
};
</script>
<style scoped>
/* Layout */
.container {
    display: flex;
    justify-content: space-between;
    margin: 50px;
}

.slideshow-container {
    width: 50%;
    position: relative;
}

.slideshow-container img {
    width: 80%;
    height: auto;
    border-radius: 10px;
    transition: opacity 1s ease;
    display: none;
}

.slideshow-container img:first-child {
    display: block;
}

.description {
    width: 45%;
    color: #fff;
    font-size: 1.2em;
    text-align: left;
    padding: 20px;
    background-color: rgba(0, 0, 0, 0.7);
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(255, 0, 255, 0.8);
}

.add-to-cart {
    background-color: #ff66ff;
    padding: 15px;
    margin-top: 20px;
    text-align: center;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(255, 0, 255, 0.8);
}

.add-to-cart button {
    padding: 10px 20px;
    background-color: #ff33ff;
    border: none;
    font-size: 1.2em;
    cursor: pointer;
    color: white;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.add-to-cart button:hover {
    background-color: #ff00cc;
}

.fps-calculator {
    background-color: #222;
    padding: 20px;
    margin-top: 50px;
    text-align: center;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 255, 255, 0.8);
}

.fps-calculator select, .fps-calculator button {
    padding: 10px;
    margin: 10px;
    font-size: 1.2em;
}

.fps-calculator button {
    background-color: #ff66ff;
    color: white;
    border: none;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.fps-calculator button:hover {
    background-color: #ff00ff;
}

.fps-result {
    font-size: 1.5em;
    margin-top: 20px;
}

.reviews {
    margin-top: 40px;
}

.review {
    background-color: rgba(0, 0, 0, 0.5);
    padding: 20px;
    border-radius: 10px;
    margin-bottom: 20px;
    box-shadow: 0 0 10px rgba(255, 0, 255, 0.8);
}

.stars {
    color: gold;
    font-size: 1.5em;
}

/* Next and Previous Buttons */
.prev, .next {
    position: absolute;
    top: 50%;
    padding: 10px;
    color: white;
    font-size: 2em;
    cursor: pointer;
    transition: transform 0.3s ease;
}

.prev {
    left: 10px;
}

.next {
    right: 10px;
}

.prev:hover, .next:hover {
    transform: scale(1.2);
}

/* Hand/Emoji Button */
.prev:before {
    content: "👈"; /* Left hand emoji */
}

.next:before {
    content: "👉"; /* Right hand emoji */
}
</style>