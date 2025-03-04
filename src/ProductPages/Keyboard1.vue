<template>
    <div>
        <div class="container">
            <div class="slideshow-container">
                <img v-for="(image, index) in images" :key="index" :src="image" :alt="`Keyboard Image ${index+1}`" v-show="currentSlide === index" />
                <a class="prev" @click="changeSlide(-1)">&#10094;</a>
                <a class="next" @click="changeSlide(1)">&#10095;</a>
            </div>

            <div class="description">
                <h1>{{ keyboard.name }}</h1>
                <p>{{ keyboard.description }}</p>
                <p>Price: {{ keyboard.price }}</p>
                <ul>
                    <li v-for="(feature, index) in keyboard.features" :key="index">{{ feature }}</li>
                </ul>
                <div class="add-to-cart">
                    <p>Add this gaming keyboard to your cart:</p>
                    <button @click="addToCart">Add to Cart</button>
                </div>
            </div>
        </div>

        <div class="button-performance">
            <h2>Button Performance for Gamers</h2>
            <p>Select a game mode to see the keyboard's performance:</p>
            <select v-model="selectedMode">
                <option v-for="(mode, key) in buttonPerformance" :key="key" :value="key">{{ mode.name }}</option>
            </select>
            <button @click="calculatePerformance">Show Performance</button>
            <div class="performance-result">Response Time: {{ responseTime }}ms</div>
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
            <p>Made with 💜 by TechHive | All rights reserved © 2025</p>
        </footer>
    </div>
</template>

<script>
export default {
    data() {
        return {
            images: [
                "database/keyboards/keyboard1/main.webp",
                "database/keyboards/keyboard1/side.webp",
                "database/keyboards/keyboard1/top.webp"
            ],
            currentSlide: 0,
            keyboard: {
                name: "Gaming Keyboard X2",
                description: "The ultimate gaming keyboard with customizable RGB, fast switches, and ergonomic design.",
                price: "R2,500",
                features: [
                    "RGB Backlit Keys",
                    "Mechanical Switches",
                    "Anti-Ghosting Technology",
                    "Programmable Macros",
                    "USB-C Connectivity"
                ]
            },
            selectedMode: "fps",
            responseTime: "-",
            buttonPerformance: {
                fps: { name: "FPS Mode", responseTime: 1 },
                moba: { name: "MOBA Mode", responseTime: 2 },
                rpg: { name: "RPG Mode", responseTime: 3 }
            },
            reviews: [
                { stars: "⭐⭐⭐⭐⭐", text: "Incredible response time! Perfect for competitive gaming.", author: "John Doe" },
                { stars: "⭐⭐⭐⭐", text: "Keys feel amazing, but I wish it had a wrist rest.", author: "Jane Smith" }
            ]
        };
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
        }
    },
    mounted() {
        setInterval(() => {
            this.changeSlide(1);
        }, 3000);
    }
};
</script>

<style scoped>
/* Same styling as the laptop page */
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