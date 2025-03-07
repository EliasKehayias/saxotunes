<template>
    <div>
        <div class="container">
            <div class="laptop-container"> 
          <router-link v-for="p in $store.state.product"  class="products-item">
            <h3 class="product_names">{{ p.products_name }}</h3>
           <h3 class="product_description">Product Description: {{ p.description }}</h3>

            <div class="laptop_img">
              <img :src="p.img_1" alt="image" class="laptop_img1">
              <img :src="p.img_2" alt="image" class="laptop_img2">
              <img :src="p.img_3" alt="image" class="laptop_img3">
            </div>
            <div class="button">
              <p>Price:{{p.price  }}  <button  class="cartB"  @click="addToCart(p)" to="cart"> Add to Cart</button>
             </p></div>
            
          </router-link>  
        </div>
        </div>
        <footer>
            <p>Made with 💜 by TechHive | All rights reserved © 2025</p>
        </footer>
    </div>
</template>

<script>


export default {
    mounted(){
      this.$store.dispatch('fetchSingleproduct', this.$route.params.id)
    },
     methods: {
        changeSlide(n) {
             this.currentSlide = (this.currentSlide + n + this.images.length) % this.images.length;
     },
         calculatePerformance() {
             const mode = this.buttonPerformance[this.selectedMode];
             this.responseTime = mode ? mode.responseTime : "-";
         },
         addToCart() {
            alert("Keyboard added to cart!");
        },
         async addCartItem(cart) {
    try {
      await axios.put(`http://localhost:3000/cart/${cart.id}`, cart);
    } catch (error) {
      console.error('Error updating cart item:', error);
    }
    },
  }
     }
     
 
</script>

<style scoped>
/* Same styling as the laptop page */
.container {
    display: flex;
    justify-content: space-between;
    margin: 50px;
}
.laptop-container{
    width: 50%;
    color: #fff;
    font-size: 1.2em;
    text-align: left;
    padding: 20px;
    background-color: rgba(0, 0, 0, 0.7);
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(255, 0, 255, 0.8);
}
.product_names{
    width: 80%;
    color: #fff;
    font-size: 1.2em;
    text-align: left;
    padding: 20px;
    background-color: rgba(0, 0, 0, 0.7);
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(255, 0, 255, 0.8);
    gap:100px;
}
.product_description{
    width: 80%;
    color: #fff;
    font-size: 1.2em;
    text-align: left;
    padding: 20px;
    background-color: rgba(0, 0, 0, 0.7);
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(255, 0, 255, 0.8);
}

.cartB{
    background-color: #ff66ff;
    padding: 15px;
    margin-top: 20px;
    text-align: center;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(255, 0, 255, 0.8);
    gap:200px;
}


.laptop_img1  {
    justify-content: space-around;
    width:328px;
    height:328px;
}
.laptop_img2  {
    justify-content: space-around;
    width:328px;
    height:328px;
}
.laptop_img3  {
    justify-content: space-around;
    width:328px;
    height:328px;
}
.button-performance {
    background-color: #222;
    padding: 20px;
    margin-top: 50px;
    text-align: center;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 255, 255, 0.8);
}

.button-performance select, .button-performance button {
    padding: 10px;
    margin: 10px;
    font-size: 1.2em;
}

.performance-result {
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
    content: "👉"; 
}
</style>