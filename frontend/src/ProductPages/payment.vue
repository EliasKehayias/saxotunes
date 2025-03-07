<template>
    <div>
      <header>
        <nav class="primary-nav">
            <li><router-link to="cart">Continue Shopping</router-link></li>
        </nav>
      </header>
      <h2>Payment Information</h2>
      <form @submit.prevent="processPayment">
        <label>Card Number:</label> <input type="text" v-model="cardDetails.card_number" /><br />
        <label>Expiry Month:</label> <input type="text" v-model="cardDetails.expiry_month" /><br />
        <label>Expiry Year:</label> <input type="text" v-model="cardDetails.expiry_year" /><br />
        <label>CVV:</label> <input type="text" v-model="cardDetails.cvv" /><br />
        <button type="submit">Pay</button>
      </form>
      <footer>
        <p>&copy; 2023 Your Company</p>
      </footer>
    </div>
  </template>
  <script>
  import axios from 'axios';
  export default {
    data() {
      return {
        cart: [],
        cardDetails: {
          card_number: '',
          expiry_month: '',
          expiry_year: '',
          cvv: '',
        },
      };
    },
    created() {
      this.fetchCart();
    },
    methods: {
      async fetchCart() {
        try {
          const response = await axios.get('http://localhost:3000/cart'); // Adjust the URL
          this.cart = response.data;
        } catch (error) {
          console.error('Error fetching cart:', error);
        }
      },
      processPayment() {
        if (!this.cart.length) {
          alert('Please add items to your cart before proceeding.');
          return;
        }
        if (this.validateCard(this.cardDetails)) {
          alert(`Payment of R${this.calculateTotal()} processed successfully!`);
          this.clearCart();
          this.$router.push('/success'); // Navigate to a success page
        } else {
          alert('Invalid card details.');
        }
      },
      validateCard(details) {
        return details.card_number && details.expiry_month && details.expiry_year && details.cvv;
      },
      calculateTotal() {
        return this.cart.reduce((sum, item) => sum + item.price * item.quantity, 0).toFixed(2);
      },
       async clearCart() {
        try {
          for(const item of this.cart){
            await axios.delete(`http://localhost:8080/cart/${item.id}`)
          }
          this.cart = [];
        } catch (error) {
          console.error('Error clearing cart:', error);
        }
      },
    },
  };
  </script>
  <style scoped>
  body {
    font-family: 'Press Start 2P', cursive;
    background-color: #111;
    color: #fff;
    margin: 0;
    padding: 0;
    text-align: center;
  }
  header {
    background-color: #222;
    padding: 20px 0;
    box-shadow: 0 4px 10px rgba(255, 0, 255, 0.3);
  }
  .primary-nav ul {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    justify-content: center;
  }
  .primary-nav a {
    text-decoration: none;
    color: #FF66FF;
    font-size: 1.2em;
    font-weight: bold;
    padding: 15px 30px;
    transition: color 0.3s, text-shadow 0.3s;
  }
  .primary-nav a:hover {
    color: #00FFFF;
    text-shadow: 0 0 5px #00FFFF;
  }
  form {
    margin-top: 20px;
  }
  label {
    display: block;
    margin-bottom: 5px;
  }
  input {
    padding: 8px;
    margin-bottom: 10px;
  }
  button {
    background-color: #FF66FF;
    border: none;
    padding: 10px 20px;
    color: #fff;
    font-size: 1em;
    cursor: pointer;
    transition: background 0.3s;
  }
  button:hover {
    background-color: #00FFFF;
    color: #111;
  }
  footer {
    background-color: #222;
    color: #fff;
    padding: 10px 0;
    margin-top: 50px;
  }
  </style>