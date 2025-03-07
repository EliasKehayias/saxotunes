import { createStore } from 'vuex';
import axios from 'axios'
export default createStore({
  state: {
    cartItems: [],
    cart:[],
    productItems:[],
    products:[],
    product:null
  },
  mutations: {
    addToCart(state, item) {
      state.cartItems.push(item);
    },
    clearCart(state) {
      state.cartItems = [];
    },
    setCart(state, cart) {
      state.cart = cart;
    },


    addToProducts(state,items){
      state.productItems.push(items);
    },
    clearProducts(state){
      state.productItems =[];
    },
    setProducts(state,products){
      state.products=products;
    },
    setProduct(state,product){
      state.product=product;
    }

  },
  actions: {
    async fetchCart({commit}){
      let {data} =await axios.get('http://localhost:3000/cartRoutes')
      console.log(data.CartGet);
      
      commit('setCart', data.CartGet)
    },
    async fetchproducts({commit}){
      let {data}= await axios.get('http://localhost:3000/products')
      console.log(data.ProductsGet);
      
      commit ('setProducts',data.ProductsGet)
    },
    async fetchSingleproduct({commit},id){
      let {data}= await axios.get('http://localhost:3000/products/'+id)
      console.log(data.ProductsGetByID);
      
      commit ('setProduct',data.ProductsGetByID)
    },
    
    
  
  },
  modules: {}
});
