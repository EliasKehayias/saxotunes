import express from 'express';

import laptopRouter from './routes/laptopRoutes.js';
import keyboardRoutes from './routes/keyboardRoutes.js';
import monitorsRoutes from './routes/monitorsRoutes.js';
import mouseRoutes from './routes/mousesRoutes.js';
import usersRouter from './routes/usersRoutes.js';
import cartRoutes from './routes/cartRoutes.js'
import products from  './routes/productsRoutes.js'
import cors from 'cors'
const app = express();

app.use(express.json())
app.use(cors())
app.use(express.json())

const PORT=process.env.PORT || 3000;
app.listen(PORT,()=>{
    console.log('http://localhost:'+PORT);
    })
    
app.use('/laptopRouter',laptopRouter);
app.use('/keyboardRoutes',keyboardRoutes);
app.use('/monitorsRoutes',monitorsRoutes);
app.use('/mouseRoutes',mouseRoutes);
app.use('/usersRouter',usersRouter);
app.use('/cartRoutes',cartRoutes);
app.use('/products',products)