import { pool } from '../config/config.js';

const getMouses = async () => {
    let [data] = await pool.query('SELECT mouses.mouse_id,mouse_name,description,mouse_price,mouse_images,mouses_img_url FROM mouses INNER JOIN mouses_images on mouses.mouse_id=mouses_images.mouses_img_id');
    return data;
}

const insertMouses= async (mouse_name,description,mouse_price,mouse_images) => {
    let [data]=await pool.query('INSERT INTO mouses (mouse_name,description,mouse_price,mouse_images) VALUES (?,?,?,?)', [mouse_name,description,mouse_price,mouse_images]);
    return data;
}
const deleteMouses = async (mouse_id) => {
    let [data]=await pool.query('DELETE FROM mouses WHERE mouse_id =?', [mouse_id]);
    return data
}
const updateMouses = async (mouse_id,mouse_name,description,mouse_price,mouse_images) => {
    let [data]=await pool.query('UPDATE mouses SET mouse_name =?, description =?, mouse_price =?, mouse_images =? WHERE mouse_id =?', [mouse_id,mouse_name,description,mouse_price,mouse_images]);
    return data;
}
export { getMouses, insertMouses, deleteMouses, updateMouses};










