import { pool } from '../config/config.js';

const getKeyboard = async () => {
    let [data] = await pool.query("SELECT keyboards.keyboards_id,keyboards_name,description,keyboard_rice,keyboards.keyboard_img_id,keyboard_img_url FROM keyboards INNER JOIN keyboard_img on keyboards.keyboards_id = keyboard_img.keyboard_img_id");
    return data;
 }

const insertKeyboard = async (keyboards_name, description, keyboard_rice, keyboard_img_id) => {
    let [data] =await pool.query('INSERT INTO keyboards (keyboards_name, description, keyboard_rice, keyboard_img_id) VALUES (?,?,?,?)',
         [keyboards_name, description, keyboard_rice, keyboard_img_id]);
    return data;
}
const deleteKeyboard = async (keyboards_id) => {
    let [data] = 
    await pool.query('DELETE FROM keyboards WHERE keyboards_id =?', [keyboards_id]);
    return data;
}
const updateKeyboard = async (keyboards_id, keyboards_name, description, keyboard_rice, keyboard_img_id) => {
   let [data]= await pool.query('UPDATE keyboards SET keyboards_name =?, description =?, keyboard_rice =?, keyboard_img_id =? WHERE keyboards_id =?', [keyboards_name, description, keyboard_rice, keyboard_img_id, keyboards_id]);
    return data;
}
export { getKeyboard, insertKeyboard, deleteKeyboard, updateKeyboard };

