import { pool } from '../config/config.js';

const getUsers = async () => {
    let [data] = await pool.query('SELECT * FROM users ');
    return data;
}

const insertUsers= async (name,surname,email,password) => {
    let [data]=await pool.query('INSERT INTO users (name,surname,email,password) VALUES (?,?,?,?)', [name,surname,email,password]);
    return data;
}
const deleteUsers = async (idusers) => {
    let [data]=await pool.query('DELETE FROM users WHERE idusers =?', [idusers]);
    return data
}
const updateUsers = async (idusers,name,surname,email,password) => {
    let [data]=await pool.query('UPDATE users SET name =?, surname =?, email =?, password =? WHERE mouse_id =?', [idusers,name,surname,email,password]);
    return data;
}
export { getUsers, insertUsers, deleteUsers, updateUsers};










