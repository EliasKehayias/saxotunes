import { pool } from '../config/config.js';
const getMonitor = async () => {
    let [data] = await pool.query('SELECT monitors.monitors_id, monitors_name, description, monitors_price, monitors.monitors_img_id,monitors_images_url FROM monitors INNER JOIN monitors_images on monitors.monitors_id=monitors_images.monitors_img_id');
    return data;
}

const insertMonitor = async (monitors_name, description, monitors_price, monitors_img_id) => {
    let [data]=await pool.query('INSERT INTO monitors (monitors_name, description, monitors_price, monitors_img_id) VALUES (?,?,?,?)', [monitors_name, description, monitors_price, monitors_img_id]);
    return data;
}
const deleteMonitor = async (monitors_id) => {
    let [data]=await pool.query('DELETE FROM monitors WHERE monitors_id =?', [monitors_id]);
    return data
}
const updateMonitor = async (monitors_id, monitors_name, description, monitors_price, monitors_img_id) => {
    let [data]=await pool.query('UPDATE monitors SET monitors_name =?, description =?, monitors_price =?, monitors_img_id =? WHERE monitors_id =?', [monitors_name, description, monitors_price, monitors_img_id, monitors_id]);
    return data;
}
export { getMonitor, insertMonitor, deleteMonitor, updateMonitor};










