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
  {
    path: '/keyboards',
    name: 'Keyboards',
    component: () => import('../Pages/KeyboardsView.vue')
  },
  {
    path: '/mouses',
    name: 'Mouses',
    component: () => import('../Pages/MousesView.vue')
  },
  {
    path: '/monitors',
    name: 'Monitors',
    component: () => import('../Pages/MonitorsView.vue')
  },
  {
    path: '/Laptop1',
    name: 'Laptop1',
    component: () => import('../ProductPages/Laptop1.vue')
  },
  {
    path: '/Laptop2',
    name: 'Laptop2',
    component: () => import('../ProductPages/Laptop2.vue')
  },
  {
    path: '/Laptop3',
    name: 'Laptop3',
    component: () => import('../ProductPages/Laptop3.vue')
  },
  {path: '/keyboard1',
  name: 'Keyboard1',  
  component: () => import('../ProductPages/Keyboard1.vue')
  },
  {path: '/keyboard2',
  name: 'Keyboard2',  
  component: () => import('../ProductPages/Keyboard2.vue')
  },
  {path: '/keyboard3',
  name: 'Keyboard3',  
  component: () => import('../ProductPages/Keyboard3.vue')
  },
  {path: '/mouse1',
  name: 'Mouse1',  
  component: () => import('../ProductPages/Mouse1.vue')
  },
  {path: '/mouse2',
  name: 'Mouse2',  
  component: () => import('../ProductPages/Mouse2.vue')
  },
  {path: '/mouse3',
  name: 'Mouse3',  
  component: () => import('../ProductPages/Mouse3.vue')
  },
  {path: '/monitor1',
  name: 'Monitor1',  
  component: () => import('../ProductPages/Monitor1.vue')
  },
  {path: '/monitor2',
  name: 'Monitor2',  
  component: () => import('../ProductPages/Monitor2.vue')
  },
  {path: '/monitor3',
  name: 'Monitor3',  
  component: () => import('../ProductPages/Monitor3.vue')
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes
});

export default router;
