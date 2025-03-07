import { createRouter, createWebHistory } from 'vue-router';
import HomeView from '../views/HomeView.vue';

const routes = [
  {
    path: '/Home',
    name: 'Home',
    component: () => import('../views/HomeView.vue')
  },
  {
    path: '/about',
    name: 'About',
    component: () => import('../views/AboutView.vue')
  },
  {
    path: '/contact',
    name: 'Contact',
    component: () => import('../views/ContactView.vue')
  },
  {
    path: '/laptops',
    name: 'Laptops',
    component: () => import('../Pages/LaptopsView.vue')
  },
  
  {path: '/keyboard1/:id',
  name: 'Keyboard1',  
  component: () => import('../components/Keyboard1.vue')
  },

  {
    path: '/cart',
    name: 'cart',
    component: () => import('../components/cart.vue')
  },
  {
    path: '/login',
    name: 'login',
    component: () => import('../Pages/login.vue')
  },
  {
    path: '/payment',
    name:'payment',
    component: () => import('../ProductPages/payment.vue')
  }
];



const router = createRouter({
  history: createWebHistory(),
  routes
});

export default router;
