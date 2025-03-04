<template>
    <div>
        <div class="container">
            <div class="slideshow-container">
                <img v-for="(image, index) in images" :key="index" :src="image" :alt="`Mouse Image ${index+1}`" v-show="currentSlide === index" />
                <a class="prev" @click="changeSlide(-1)">&#10094;</a>
                <a class="next" @click="changeSlide(1)">&#10095;</a>
            </div>
            
            <div class="description">
                <h1>{{ mouse.name }}</h1>
                <p>{{ mouse.description }}</p>
                <p>Price: {{ mouse.price }}</p>
                <ul>
                    <li v-for="(feature, index) in mouse.features" :key="index">{{ feature }}</li>
                </ul>
                <div class="add-to-cart">
                    <p>Add this high-performance gaming mouse to your cart:</p>
                    <button @click="addToCart">Add to Cart</button>
                </div>
            </div>
        </div>

        <div class="dpi-calculator">
            <h2>DPI Sensitivity Calculator</h2>
            <p>Adjust your DPI settings for the best gaming experience:</p>
            <div class="emoji-slider">
                <span @click="setDPI(400)">🐢</span>
                <span @click="setDPI(800)">🐇</span>
                <span @click="setDPI(1600)">🚀</span>
                <span @click="setDPI(3200)">⚡</span>
                <span @click="setDPI(16000)">🔥</span>
            </div>
            <p>Selected DPI: {{ selectedDPI }}</p>
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
                "database/mouses/mouse1/mouse1 main.webp",
                "database/mouses/mouse1/mouse1.2.webp",
                "database/mouses/mouse1/mouse1.3.webp"
            ],
            currentSlide: 0,
            mouse: {
                name: "Gaming Mouse X1",
                description: "The Gaming Mouse X1 delivers ultra-fast response times and precision tracking for pro gamers.",
                price: "R1,500",
                features: [
                    "Ergonomic Design",
                    "Adjustable DPI up to 16000",
                    "RGB Customization",
                    "Lightweight 80g",
                    "Ultra-low latency"
                ]
            },
            selectedDPI: 800,
            reviews: [
                { stars: "⭐⭐⭐⭐⭐", text: "Perfect grip and fast response time!", author: "John Doe" },
                { stars: "⭐⭐⭐⭐", text: "Good for FPS games, very smooth tracking.", author: "Jane Smith" }
            ]
        };
    },
    methods: {
        changeSlide(n) {
            this.currentSlide = (this.currentSlide + n + this.images.length) % this.images.length;
        },
        addToCart() {
            alert("Mouse added to cart!");
        },
        setDPI(value) {
            this.selectedDPI = value;
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

.emoji-slider span {
    font-size: 2em;
    cursor: pointer;
    margin: 0 10px;
    transition: transform 0.2s ease;
}

.emoji-slider span:hover {
    transform: scale(1.2);
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
