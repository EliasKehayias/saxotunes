<template>
    <div class="login-container">
      <h2>Login</h2>
      <form @submit.prevent="login" class="form">
        <input type="text" v-model.trim="name" placeholder="First Name" required>
        <input type="text" v-model.trim="surname" placeholder="Last Name" required>
        <input type="email" v-model.trim="email" placeholder="Email" required>
        <input type="password" v-model="password" placeholder="Password" required>
        <button type="submit" :disabled="isSubmitting">Login</button>
        <p v-if="errorMessage" class="error-message">{{ errorMessage }}</p>
      </form>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        name: "",
        surname: "",
        email: "",
        password: "",
        isSubmitting: false,
        errorMessage: ""
      };
    },
    methods: {
      async login() {
        if (!this.name || !this.surname || !this.email || !this.password) {
          this.errorMessage = "All fields are required!";
          return;
        }
  
        this.isSubmitting = true;
        this.errorMessage = "";
  
        try {
          // Simulated API request (Replace with actual API call)
          const response = await new Promise((resolve, reject) => {
            setTimeout(() => {
              if (this.email === "test@example.com" && this.password === "password123") {
                resolve({ success: true });
              } else {
                reject(new Error("Invalid email or password"));
              }
            }, 1000);
          });
  
          if (response.success) {
            alert("Login successful!");
            this.$router.push("/dashboard"); // Redirect after successful login
          }
        } catch (error) {
          this.errorMessage = error.message;
        } finally {
          this.isSubmitting = false;
        }
      }
    }
  };
  </script>
  
  <style scoped>
  /* Centering the form *//* Centering the form */
.login-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  background: linear-gradient(to right, #007bff, #00c6ff);
  color: white;
}

/* Form Styling */
.form {
  background: white;
  padding: 25px;
  border-radius: 12px;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
  display: flex;
  flex-direction: column;
  width: 350px;
  text-align: center;
}

/* Input Fields */
input {
  width: 100%;
  padding: 12px;
  margin: 10px 0;
  border: 1px solid #ccc;
  border-radius: 8px;
  font-size: 16px;
  outline: none;
  transition: all 0.3s ease-in-out;
  box-shadow: inset 0 2px 5px rgba(0, 0, 0, 0.05);
}

/* Input Focus Effect */
input:focus {
  border-color: #007bff;
  box-shadow: 0 0 8px rgba(0, 123, 255, 0.3);
}

/* Placeholder Styling */
input::placeholder {
  color: #999;
  font-size: 14px;
  opacity: 0.8;
}

/* Submit Button */
button {
  background: #007bff;
  color: white;
  padding: 12px;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  font-size: 16px;
  font-weight: bold;
  transition: background 0.3s, transform 0.2s;
}

button:hover {
  background: #0056b3;
  transform: scale(1.05);
}

button:disabled {
  background: #cccccc;
  cursor: not-allowed;
  transform: none;
}

/* Error Message */
.error-message {
  color: red;
  font-size: 14px;
  margin-top: 10px;
  text-align: center;
}
</style>