<template>
    <div>
        <div class="container">
            <div class="slideshow-container">
                <img v-for="(image, index) in images" :key="index" :src="image" :alt="`Monitor Image ${index+1}`" v-show="currentSlide === index" />
                <a class="prev" @click="changeSlide(-1)">&#10094;</a>
                <a class="next" @click="changeSlide(1)">&#10095;</a>
            </div>

            <div class="description">
                <h1>{{ monitor.name }}</h1>
                <p>{{ monitor.description }}</p>
                <p>Price: {{ monitor.price }}</p>
                <ul>
                    <li v-for="(feature, index) in monitor.features" :key="index">{{ feature }}</li>
                </ul>
                <div class="add-to-cart">
                    <p>Add this gaming monitor to your cart:</p>
                    <button @click="addToCart">Add to Cart</button>
                </div>
            </div>
        </div>

        <div class="performance-tool">
            <h2>Refresh Rate & Response Time Comparison</h2>
            <p>Select a refresh rate to see its impact on gaming performance:</p>
            <select v-model="selectedRate">
                <option v-for="(rate, key) in refreshRates" :key="key" :value="key">{{ rate.name }}</option>
            </select>
            <button @click="comparePerformance">Compare</button>
            <div class="comparison-result">Estimated Response Time: {{ responseTime }}ms</div>
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
                "database/monitors/monitor1/main.webp",
                "database/monitors/monitor1/side.webp",
                "database/monitors/monitor1/top.webp"
            ],
            currentSlide: 0,
            monitor: {
                name: "Gaming Monitor X3",
                description: "A 240Hz gaming monitor with ultra-low response time and G-Sync support.",
                price: "R5,000",
                features: [
                    "240Hz Refresh Rate",
                    "1ms Response Time",
                    "G-Sync & FreeSync Support",
                    "HDR10 Display",
                    "Ultra-Low Latency Mode"
                ]
            },
            selectedRate: "144hz",
            responseTime: "-",
            refreshRates: {
                "60hz": { name: "60Hz Standard", responseTime: 16 },
                "144hz": { name: "144Hz Gaming", responseTime: 7 },
                "240hz": { name: "240Hz Pro", responseTime: 4 }
            },
            reviews: [
                { stars: "⭐⭐⭐⭐⭐", text: "Smoothest gaming experience ever!", author: "GamerX" },
                { stars: "⭐⭐⭐⭐", text: "Incredible colors and response time.", author: "TechEnthusiast" }
            ]
        };
    },
    methods: {
        changeSlide(n) {
            this.currentSlide = (this.currentSlide + n + this.images.length) % this.images.length;
        },
        comparePerformance() {
            const rate = this.refreshRates[this.selectedRate];
            this.responseTime = rate ? rate.responseTime : "-";
        },
        addToCart() {
            alert("Monitor added to cart!");
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

.performance-tool {
    background-color: #222;
    padding: 20px;
    margin-top: 50px;
    text-align: center;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 255, 255, 0.8);
}

.performance-tool select, .performance-tool button {
    padding: 10px;
    margin: 10px;
    font-size: 1.2em;
}

.comparison-result {
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
