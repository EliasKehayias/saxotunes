import { createStore } from 'vuex';

export default createStore({
  state: {
    cartItems: []
  },
  mutations: {
    addToCart(state, item) {
      state.cartItems.push(item);
    },
    clearCart(state) {
      state.cartItems = [];
    }
  },
  actions: {},
  modules: {}
});
