<template>
  <div>
    <!-- Laptops Listing -->
    <main>
      <!-- <h1 class="herotext" >💻 Laptops for Every Gamer 💻</h1> -->

      <div class="laptop-container">
        <router-link
          v-for="p in $store.state.products"
          :key="p.idproducts"
          :to="{ name: 'Keyboard1', params: { id: p.idproducts } }"
          class="laptop-item"
          @click="goToProductDetail(p.idproducts)"
        >
          <div class="product_names">
            <h3>{{ p.products_name }}</h3>
          </div>
          <div class="laptop_img">
            <img :src="p.img_1" alt="image" class="laptop_img" />
          </div>
          <div class="price">
            <p>Price: {{ p.price }}</p>
          </div>
        </router-link>
      </div>
    </main>
    <footer>
      <p>Made with 💜 by TechHive | All rights reserved © 2025</p>
    </footer>
  </div>
</template>
<script>
//
export default {
  mounted() {
    this.$store.dispatch("fetchproducts");
  },

  computed: {
    c() {
      return this.$store.state.products;
    },
  },
  methods: {
    goToProductDetail(idproducts) {
      console.log(idproducts);
      this.$router.push({ name: "Keyboard1", params: { id: idproducts } });
    },
    removeFromCart(idcart) {
      this.$store.dispatch("removeFromCart", idcart);
    },
   
  },
};
</script>
<style scoped>
/* General Styles */
.herotext {
  font-family: "Press Start 2P", cursive;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
body {
  font-family: "Press Start 2P", cursive;
  background-color: #111;
  color: #fff;
  margin: 0;
  padding: 0;
  text-align: center;
  box-sizing: border-box;
  overflow-x: hidden;
}
.laptop-container {
  display: grid;
  grid-template-columns: repeat(3, 1fr); /* 3 items per row */
  gap: 60px; /* Space between items */
  justify-content: center;
  padding: 50px 20px;
  margin-top: 20px;
}
.laptop_img {
  width: 100%; /* Makes image responsive */
  height: 200px; /* Set a fixed height */
  object-fit: cover; /* Ensures the image fills the space without distortion */
  border-radius: 5px;
  margin-bottom: 10px;
}
.product_names {
  font-size: 0.8rem; /* Adjust title size */
  font-weight: bold; /* Make it stand out */
  color: #333; /* Darker text for readability */
  margin: 10px 0;
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
.price {
  font-size: 22px;
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
  content: "";
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
