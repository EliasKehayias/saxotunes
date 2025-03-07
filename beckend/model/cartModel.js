import { pool } from '../config/config.js';

const getCart = async () => {
    let [data] = await pool.query('SELECT * FROM cart ');
    return data;
}

const insertCart= async (name,price,image) => {
    let [data]=await pool.query('INSERT INTO cart (name,price,image) VALUES (?,?,?)', [name,price,image]);
    return data;
}
const deleteCart = async (idcart) => {
    let [data]=await pool.query('DELETE FROM cart WHERE idcart =?', [idcart]);
    return data
}
const updateCart = async (idcart,name,price,image) => {
    let [data]=await pool.query('UPDATE cart SET name =?, price =?, image =? WHERE idcart =?', [name,price,image,idcart]);
    return data;
}
export { getCart, insertCart, deleteCart, updateCart};










