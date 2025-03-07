import { pool } from '../config/config.js';

const getProducts = async () => {
    let [data] = await pool.query('SELECT * FROM products ');
    return data;
}
 const getProductById = async (idproducts) => {
    let [data] = await pool.query('SELECT * FROM products WHERE idproducts =?', [idproducts]);
    return data;
}

const insertProducts= async ( products_name, description, price, img_1, img_2, img_3) => {
    let [data]=await pool.query('INSERT INTO products (products_name, description, price, img_1, img_2, img_3) VALUES (?,?,?,?,?,?)', [products_name, description, price, img_1, img_2, img_3]);
    return data;
}
const deleteProducts = async (idproducts) => {
    let [data]=await pool.query('DELETE FROM products WHERE idproducts =?', [idproducts]);
    return data
}
const updateProducts = async (idproducts, products_name, description, price, img_1, img_2, img_3) => {
    let [data]=await pool.query('UPDATE products SET products_name =?, description =?, price =?, img_1=?, img_2=?, img_3=? WHERE idproducts =?', [ products_name, description, price, img_1, img_2, img_3,idproducts]);
    return data;
}
export { getProducts,getProductById, insertProducts, deleteProducts, updateProducts};










